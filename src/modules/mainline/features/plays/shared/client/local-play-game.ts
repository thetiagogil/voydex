import { NewPlayInputError } from "@/modules/mainline/features/plays/shared/utils/new-play-input";
import {
  findGameData,
  installGame,
  installGameLearnsets,
  readInstalledGameData,
  type GameDataProgress,
  type GameDataVersions,
} from "@/platform/local-db/game-data";
import { runQuery, type LocalDb } from "@/platform/local-db/local-db";

/*
 * A game's data on the device, downloaded when its first Play starts. Each
 * game file is named after the game's version group ("swsh"), and holds its
 * expansions too.
 */

const readGameFileSlug = async (db: LocalDb, gameSlug: string) => {
  const [game] = await runQuery<{ file_slug: string }>(
    db,
    `SELECT version_groups.slug AS file_slug
     FROM reference.games games
     JOIN reference.version_groups version_groups ON version_groups.id = games.version_group_id
     WHERE games.slug = $1`,
    [gameSlug],
  );

  if (!game) throw new NewPlayInputError("That game isn't one Voydex knows.");

  return game.file_slug;
};

/*
 * Makes sure the game is on the device, downloading it (and the base file)
 * when it isn't; `onProgress` moves the bar. Offline, a game already on the
 * device still starts. Returns the game file's slug.
 */
export const ensureLocalGame = async (
  db: LocalDb,
  {
    gameSlug,
    onProgress,
    versions,
  }: {
    gameSlug: string;
    onProgress?: (progress: GameDataProgress) => void;
    versions: GameDataVersions | null;
  },
) => {
  const fileSlug = await readGameFileSlug(db, gameSlug);

  if (!versions) {
    if ((await readInstalledGameData(db)).has(fileSlug)) return fileSlug;

    throw new NewPlayInputError(
      "You're offline. Connect once to download this game.",
    );
  }

  const [{ id: versionGroupId }] = await runQuery<{ id: number }>(
    db,
    "SELECT version_group_id AS id FROM reference.games WHERE slug = $1",
    [gameSlug],
  );
  const file = findGameData(versions, versionGroupId);

  if (!file) {
    throw new NewPlayInputError("Voydex has no data for this game yet.");
  }

  await installGame(db, file.slug, { onProgress, versions });

  return file.slug;
};

/*
 * The game's learnsets, after its Play has started: the larger file, which
 * only the move pickers need. A failure is retried the next time.
 */
export const installLocalLearnsetsLater = (
  db: LocalDb,
  fileSlug: string,
  versions: GameDataVersions | null,
) => {
  if (!versions) return;

  void installGameLearnsets(db, fileSlug, { versions }).catch(() => undefined);
};
