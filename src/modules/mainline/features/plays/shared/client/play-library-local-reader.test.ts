import { afterAll, beforeAll, describe, expect, it } from "vitest";
import type { PGlite } from "@electric-sql/pglite";

import {
  readLocalArchivedPlayCount,
  readLocalPlayLibrary,
  readLocalPlayTags,
} from "@/modules/mainline/features/plays/shared/client/play-library-local-reader";
import { setLocalPlayArchived } from "@/modules/mainline/features/plays/shared/client/local-play-commands";
import { createTestDevice } from "@/platform/local-db/local-db-test-support";

/*
 * Runs every Plays-page read against the real device schema, so a wrong
 * column or view name fails here, not on a phone. Game data isn't
 * installed, so rows go in with foreign key checks off.
 */
describe("the Plays page's device reads", () => {
  let db: PGlite;
  const playId = "6b1d4c1e-0000-4000-8000-000000000001";

  beforeAll(async () => {
    db = await createTestDevice();
    await db.exec(`
      SET session_replication_role = replica;
      INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, name, status_id, started_on)
        VALUES ('${playId}', auth.uid(), 31, 18, 'Galar run', 1, '2026-11-10');
      INSERT INTO public.tags (id, user_id, name, slug)
        VALUES ('6b1d4c1e-0000-4000-8000-0000000000aa', auth.uid(), 'Nuzlocke', 'nuzlocke');
      INSERT INTO gameplay.mainline_play_tags (user_id, play_id, tag_id)
        VALUES (auth.uid(), '${playId}', '6b1d4c1e-0000-4000-8000-0000000000aa');
      SET session_replication_role = origin;
    `);
  });

  afterAll(() => db.close());

  it("reads the library and the archived Plays without failing", async () => {
    await expect(
      readLocalPlayLibrary(db, { withTags: true }),
    ).resolves.toBeInstanceOf(Array);
    await expect(readLocalPlayLibrary(db, { archived: true })).resolves.toEqual(
      [],
    );
  });

  it("reads each Play's tags", async () => {
    await expect(readLocalPlayTags(db, [playId])).resolves.toEqual(
      new Map([
        [
          playId,
          [
            {
              id: "6b1d4c1e-0000-4000-8000-0000000000aa",
              name: "Nuzlocke",
              slug: "nuzlocke",
            },
          ],
        ],
      ]),
    );
  });

  it("archives and restores a Play, and counts the archived ones", async () => {
    await expect(readLocalArchivedPlayCount(db)).resolves.toBe(0);
    await setLocalPlayArchived(db, { archived: true, playId });
    await expect(readLocalArchivedPlayCount(db)).resolves.toBe(1);
    await setLocalPlayArchived(db, { archived: false, playId });
    await expect(readLocalArchivedPlayCount(db)).resolves.toBe(0);
  });

  it("says when the Play to restore isn't on the device", async () => {
    await expect(
      setLocalPlayArchived(db, {
        archived: false,
        playId: "6b1d4c1e-0000-4000-8000-0000000000ff",
      }),
    ).rejects.toThrow("isn't on this device");
  });
});
