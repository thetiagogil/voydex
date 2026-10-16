import { getGameShortName } from "@/modules/reference/features/games/utils/game-display";
import type { ViewRow } from "@/shared/types/database-helpers";

/* One of the trainer's Plays, as the Codex's hand-offs name it. */
export type CodexPlay = {
  gameName: string;
  gameSlug: string | null;
  id: string;
  /* "Sword · Late Journey". */
  label: string;
  /* "Late Journey". */
  name: string;
  statusName: string | null;
  statusSlug: string | null;
  versionGroupSlug: string | null;
};

type CodexPlayRow = Pick<
  ViewRow<"mainline_play_summary">,
  | "game_name"
  | "game_slug"
  | "play_id"
  | "play_name"
  | "status_name"
  | "status_slug"
  | "version_group_slug"
>;

export const toCodexPlays = (rows: CodexPlayRow[]): CodexPlay[] =>
  rows.flatMap((play) => {
    if (!play.play_id) return [];

    const gameName = play.game_name ?? "Unknown game";
    const name = play.play_name ?? "Untitled Play";

    return [
      {
        gameName,
        gameSlug: play.game_slug,
        id: play.play_id,
        label: `${getGameShortName(gameName)} · ${name}`,
        name,
        statusName: play.status_name,
        statusSlug: play.status_slug,
        versionGroupSlug: play.version_group_slug,
      },
    ];
  });

/*
 * The Plays a species can join: those whose Pokédex lists it. When that
 * couldn't be read (null), every Play stays: the Add sheet says itself if
 * the species can't join.
 */
export const filterPlaysWithSpecies = (
  plays: CodexPlay[],
  playIdsWithSpecies: ReadonlySet<string> | null,
): CodexPlay[] =>
  playIdsWithSpecies
    ? plays.filter((play) => playIdsWithSpecies.has(play.id))
    : plays;

/*
 * The Codex's signed-in extras are optional: a failed read is logged and
 * the extra falls back (hidden, or no counts), so a public Codex page never
 * errors because of the trainer's own data.
 */
export const settleCodexExtra = async <T>(
  label: string,
  read: () => Promise<T>,
  fallback: T,
): Promise<T> => {
  try {
    return await read();
  } catch (error) {
    console.error(`[codex] ${label} failed; hiding it.`, error);
    return fallback;
  }
};
