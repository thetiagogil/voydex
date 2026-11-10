import { afterAll, beforeAll, describe, expect, it } from "vitest";
import type { PGlite } from "@electric-sql/pglite";

import { readNewPlayLocalData } from "@/modules/mainline/features/plays/new/client/new-play-local-reader";
import { findOrCreateLocalChallengeRule } from "@/modules/mainline/shared/client/challenge-rules-local";
import { createTestDevice } from "@/platform/local-db/local-db-test-support";

describe("New Play's device reads and saves", () => {
  let db: PGlite;

  beforeAll(async () => {
    db = await createTestDevice();
    await db.exec(`
      INSERT INTO gameplay.mainline_challenge_rule_types (id, slug, name, sort_order)
        VALUES (5, 'custom', 'Custom', 5);
      UPDATE public.profiles SET default_trainer_name = 'Victor' WHERE id = auth.uid();
    `);
  });

  afterAll(() => db.close());

  it("reads the trainer name, the New Play defaults and the rules", async () => {
    await expect(readNewPlayLocalData(db)).resolves.toEqual({
      presets: [],
      rules: [],
      trackingDefaults: expect.objectContaining({ story: true }),
      trainerName: "Victor",
    });
  });

  it("adds a rule of your own once, then finds it by name", async () => {
    const rule = await findOrCreateLocalChallengeRule(db, "No items");

    await expect(
      findOrCreateLocalChallengeRule(db, "no ITEMS"),
    ).resolves.toEqual(rule);

    const { rules } = await readNewPlayLocalData(db);

    expect(rules.map((choice) => choice.name)).toEqual(["No items"]);
  });
});
