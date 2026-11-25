import { afterEach, beforeEach, describe, expect, it } from "vitest";
import type { PGlite } from "@electric-sql/pglite";

import { addBackup, planAddedRows } from "@/platform/local-db/add-backup";
import { makeBackupFile } from "@/platform/local-db/backups";
import { hasUnsavedChanges } from "@/platform/local-db/device-account";
import {
  addTestGameData,
  createTestDevice,
  readKnownRowCount,
} from "@/platform/local-db/local-db-test-support";
import { readSchemaShape } from "@/platform/local-db/user-snapshot";

const ensureGame = async () => undefined;
const playId = "10000000-0000-4000-8000-000000000001";
const otherPlayId = "10000000-0000-4000-8000-000000000002";
const planId = "40000000-0000-4000-8000-000000000001";
const nuzlockeId = "20000000-0000-4000-8000-000000000001";

const newDevice = async () => {
  const db = await createTestDevice();

  await addTestGameData(db);
  await db.exec(`
    SET session_replication_role = replica;
    INSERT INTO planning.mainline_team_plan_statuses (id, slug, name, sort_order)
      VALUES (1, 'draft', 'Draft', 1);
    SET session_replication_role = origin;
  `);

  return db;
};

const addPlay = (db: PGlite, id: string, name: string) =>
  db.query(
    `INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, name)
     VALUES ($1, auth.uid(), 1, 1, $2)`,
    [id, name],
  );

const addTag = async (db: PGlite, name: string) => {
  const { rows } = await db.query<{ id: string }>(
    `INSERT INTO public.tags (user_id, slug, name)
     VALUES (auth.uid(), lower($1), $1) RETURNING id`,
    [name],
  );

  return rows[0].id;
};

const tagPlay = (db: PGlite, play: string, tag: string) =>
  db.query(
    `INSERT INTO gameplay.mainline_play_tags (play_id, tag_id, user_id)
     VALUES ($1, $2, auth.uid())`,
    [play, tag],
  );

/* Each Play with its tags and rules, by name. */
const readPlays = async (db: PGlite) =>
  (
    await db.query<{ name: string; rules: string[]; tags: string[] }>(
      `SELECT plays.name,
         COALESCE((SELECT array_agg(tags.name ORDER BY tags.name)
           FROM gameplay.mainline_play_tags links
           JOIN public.tags tags ON tags.id = links.tag_id
           WHERE links.play_id = plays.id), '{}') AS tags,
         COALESCE((SELECT array_agg(rules.slug ORDER BY rules.slug)
           FROM gameplay.mainline_play_challenge_rules links
           JOIN gameplay.mainline_challenge_rules rules
             ON rules.id = links.challenge_rule_id
           WHERE links.play_id = plays.id), '{}') AS rules
       FROM gameplay.mainline_plays plays ORDER BY plays.name, plays.id`,
    )
  ).rows;

describe("Import, added as new Plays", () => {
  let laptop: PGlite;
  let phone: PGlite;

  /*
   * The laptop has a Play tagged Shiny; the phone's file has another,
   * tagged Shiny and Nuzlocke-ruled with a rule of its own, and a Plan
   * linked to it, with the phone's name on it.
   */
  beforeEach(async () => {
    laptop = await newDevice();
    phone = await newDevice();
    await addPlay(laptop, playId, "Laptop run");
    await tagPlay(laptop, playId, await addTag(laptop, "Shiny"));
    await laptop.query(
      "UPDATE public.profiles SET display_name = 'Sam' WHERE id = auth.uid()",
    );

    await addPlay(phone, otherPlayId, "Phone run");
    await tagPlay(phone, otherPlayId, await addTag(phone, "Shiny"));
    await tagPlay(phone, otherPlayId, await addTag(phone, "Hard"));
    await phone.query(
      `INSERT INTO gameplay.mainline_challenge_rules (id, user_id, rule_type_id, slug, name)
       VALUES ('20000000-0000-4000-8000-000000000009', auth.uid(), 5, 'no_items', 'No items')`,
    );
    await phone.query(
      `INSERT INTO gameplay.mainline_play_challenge_rules (play_id, challenge_rule_id)
       VALUES ($1, $2), ($1, '20000000-0000-4000-8000-000000000009')`,
      [otherPlayId, nuzlockeId],
    );
    await phone.query(
      `INSERT INTO planning.mainline_team_plans (id, user_id, game_id, version_group_id, name)
       VALUES ($1, auth.uid(), 1, 1, 'Phone plan')`,
      [planId],
    );
    await phone.query(
      `INSERT INTO planning.mainline_play_plan_links (play_id, team_plan_id, user_id, game_id, version_group_id)
       VALUES ($1, $2, auth.uid(), 1, 1)`,
      [otherPlayId, planId],
    );
    await phone.query(
      "UPDATE public.profiles SET display_name = 'Alex' WHERE id = auth.uid()",
    );
  });

  afterEach(async () => {
    await laptop.close();
    await phone.close();
  });

  it("adds the file's Plays and Plans beside yours, with what they use", async () => {
    const { backup } = await makeBackupFile(phone);

    await expect(addBackup(laptop, backup, { ensureGame })).resolves.toEqual({
      plans: 1,
      plays: 1,
    });

    await expect(readPlays(laptop)).resolves.toEqual([
      { name: "Laptop run", rules: [], tags: ["Shiny"] },
      {
        name: "Phone run",
        rules: ["no_items", "nuzlocke"],
        tags: ["Hard", "Shiny"],
      },
    ]);
    /* One Shiny: the copy uses the tag already here. */
    await expect(
      laptop.query("SELECT name FROM public.tags ORDER BY name"),
    ).resolves.toMatchObject({ rows: [{ name: "Hard" }, { name: "Shiny" }] });
    /* The copies have ids of their own, and the Plan stays linked to its Play. */
    await expect(
      laptop.query<{ linked: string }>(
        `SELECT plays.name AS linked FROM planning.mainline_play_plan_links links
         JOIN gameplay.mainline_plays plays ON plays.id = links.play_id
         JOIN planning.mainline_team_plans plans ON plans.id = links.team_plan_id
         WHERE plans.name = 'Phone plan' AND plans.id <> $1`,
        [planId],
      ),
    ).resolves.toMatchObject({ rows: [{ linked: "Phone run" }] });
    /* Your name stays. */
    await expect(
      laptop.query("SELECT display_name FROM public.profiles"),
    ).resolves.toMatchObject({ rows: [{ display_name: "Sam" }] });
    /* They are yours now: they back up like any change. */
    await expect(hasUnsavedChanges(laptop)).resolves.toBe(true);
  });

  it("looks at the tables again once the file's rows are in", async () => {
    const { backup } = await makeBackupFile(phone);

    await addBackup(laptop, backup, { ensureGame });

    await expect(
      readKnownRowCount(laptop, "gameplay.mainline_plays"),
    ).resolves.toBe(2);
  });

  it("never merges: the same file added twice is there twice", async () => {
    const { backup } = await makeBackupFile(phone);

    await addBackup(laptop, backup, { ensureGame });
    await addBackup(laptop, backup, { ensureGame });

    await expect(
      laptop.query<{ name: string }>(
        "SELECT name FROM gameplay.mainline_plays ORDER BY name",
      ),
    ).resolves.toMatchObject({
      rows: [
        { name: "Laptop run" },
        { name: "Phone run" },
        { name: "Phone run" },
      ],
    });
    /* Its rule is added once, like a tag of the same name. */
    await expect(
      laptop.query(
        "SELECT 1 FROM gameplay.mainline_challenge_rules WHERE slug = 'no_items'",
      ),
    ).resolves.toMatchObject({ rows: [{}] });
  });

  it("changes nothing when the file doesn't fit", async () => {
    const { backup } = await makeBackupFile(phone);
    const broken = structuredClone(backup);

    broken.tables["gameplay.mainline_plays"]![0].game_id = 999;

    await expect(addBackup(laptop, broken, { ensureGame })).rejects.toThrow(
      "nothing changed",
    );
    await expect(readPlays(laptop)).resolves.toEqual([
      { name: "Laptop run", rules: [], tags: ["Shiny"] },
    ]);
  });
});

describe("which rows an import adds", () => {
  it("follows a new id through a link that reaches it by another row", async () => {
    const db = await createTestDevice();
    const shape = await readSchemaShape(db);
    let next = 0;
    const newId = () => `new-${++next}`;

    /* A History moment's Pokémon ref names its Play through the moment. */
    const added = planAddedRows({
      device: {},
      file: {
        "gameplay.mainline_play_event_pokemon_refs": [
          { event_id: "e1", id: "r1", play_id: "p1", play_pokemon_id: "pk1" },
        ],
        "gameplay.mainline_play_events": [{ id: "e1", play_id: "p1" }],
        "gameplay.mainline_play_pokemon": [{ id: "pk1", play_id: "p1" }],
        "gameplay.mainline_plays": [{ id: "p1", user_id: "me" }],
      },
      newId,
      shape,
    });

    expect(added["gameplay.mainline_plays"]).toEqual([
      { id: "new-1", user_id: "me" },
    ]);
    expect(added["gameplay.mainline_play_event_pokemon_refs"]).toEqual([
      {
        event_id: "new-3",
        id: "new-4",
        play_id: "new-1",
        play_pokemon_id: "new-2",
      },
    ]);
    await db.close();
  });

  it("adds a favourite or a game on the shelf only when it isn't here", async () => {
    const db = await createTestDevice();
    const shape = await readSchemaShape(db);

    const added = planAddedRows({
      device: {
        "gameplay.user_favourite_pokemon": [{ form_id: 1, user_id: "me" }],
      },
      file: {
        "gameplay.user_favourite_pokemon": [
          { form_id: 1, user_id: "me" },
          { form_id: 2, user_id: "me" },
        ],
        "public.profiles": [{ display_name: "Alex", id: "me" }],
      },
      newId: () => "unused",
      shape,
    });

    expect(added).toEqual({
      "gameplay.user_favourite_pokemon": [{ form_id: 2, user_id: "me" }],
    });
    await db.close();
  });
});

describe("a rule set already here", () => {
  it("keeps its own rules when the file has one of the same name", async () => {
    const db = await createTestDevice();
    const shape = await readSchemaShape(db);
    let next = 0;

    const added = planAddedRows({
      device: {
        "gameplay.mainline_challenge_rule_sets": [
          { id: "set-here", slug: "my_rules", user_id: "me" },
        ],
        "gameplay.mainline_challenge_rule_set_rules": [
          { challenge_rule_id: "rule-a-here", rule_set_id: "set-here" },
        ],
        "gameplay.mainline_challenge_rules": [
          { id: "rule-a-here", slug: "rule_a", user_id: "me" },
        ],
      },
      file: {
        "gameplay.mainline_challenge_rule_set_rules": [
          { challenge_rule_id: "rule-a", rule_set_id: "set" },
          { challenge_rule_id: "rule-b", rule_set_id: "set" },
        ],
        "gameplay.mainline_challenge_rule_sets": [
          { id: "set", slug: "my_rules", user_id: "me" },
        ],
        "gameplay.mainline_challenge_rules": [
          { id: "rule-a", slug: "rule_a", user_id: "me" },
          { id: "rule-b", slug: "rule_b", user_id: "me" },
        ],
        "gameplay.mainline_play_challenge_rules": [
          { challenge_rule_id: "rule-a", play_id: "p1" },
        ],
        "gameplay.mainline_plays": [{ id: "p1", user_id: "me" }],
      },
      newId: () => `new-${++next}`,
      shape,
    });

    /* The new rule is added, but not to the set already here. */
    expect(added["gameplay.mainline_challenge_rules"]).toEqual([
      { id: "new-1", slug: "rule_b", user_id: "me" },
    ]);
    expect(added["gameplay.mainline_challenge_rule_set_rules"]).toBeUndefined();
    /* A copied Play still uses the rule of that name already here. */
    expect(added["gameplay.mainline_play_challenge_rules"]).toEqual([
      { challenge_rule_id: "rule-a-here", play_id: "new-2" },
    ]);
    await db.close();
  });
});
