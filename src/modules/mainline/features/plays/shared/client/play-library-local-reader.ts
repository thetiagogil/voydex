import {
  buildMainlinePlayBrowseItems,
  type PlayBrowseMilestone,
  type PlayBrowseMilestoneCategory,
  type PlayBrowseRegion,
  type PlayBrowseStoryRows,
} from "@/modules/mainline/features/plays/shared/data/play-library-mappers";
import type {
  MainlinePlayOverview,
  MainlinePlaySummary,
  MainlinePlayTeamMemberRow,
  PlayBrowseItem,
  PlayBrowseTag,
} from "@/modules/mainline/features/plays/shared/types";
import type { Game } from "@/modules/reference/types";
import { runQuery, type LocalDb } from "@/platform/local-db/local-db";
import { uniqueNumberIds } from "@/shared/utils/collections";

/*
 * The library of Plays on the device, as the Plays page (and later Home)
 * lists them. The same rows the server read, so the same mapper builds the
 * cards. A failed Plays read throws; their games, progress, team, story
 * position and tags each degrade on their own, as before.
 */

const settle = <Value>(read: Promise<Value>) =>
  read.then(
    (value) => ({ ok: true as const, value }),
    () => ({ ok: false as const }),
  );

const readPlayGames = async (db: LocalDb, gameIds: number[]) => {
  if (!gameIds.length) return { games: [], regions: [] };

  const games = await runQuery<Game>(
    db,
    "SELECT * FROM reference.games WHERE id = ANY ($1::integer[])",
    [gameIds],
  );
  const regionIds = uniqueNumberIds(games.map((game) => game.region_id));
  const regions = regionIds.length
    ? await runQuery<PlayBrowseRegion>(
        db,
        "SELECT id, name FROM reference.regions WHERE id = ANY ($1::integer[])",
        [regionIds],
      ).catch(() => [])
    : [];

  return { games, regions };
};

const readPlayStoryRows = async (
  db: LocalDb,
  playIds: string[],
): Promise<PlayBrowseStoryRows> => {
  const [categories, milestones] = await Promise.all([
    runQuery<PlayBrowseMilestoneCategory>(
      db,
      `SELECT category_id, category_sort_order, content_scope_sort_order, play_id
       FROM views.mainline_play_milestone_category_summary
       WHERE play_id = ANY ($1::uuid[])
       ORDER BY play_id, category_id`,
      [playIds],
    ),
    runQuery<PlayBrowseMilestone>(
      db,
      `SELECT category_id, is_completed, is_required_for_completion, milestone_id,
         milestone_name, milestone_type_slug, play_id, prerequisites, sort_order
       FROM views.mainline_play_milestone_detail
       WHERE play_id = ANY ($1::uuid[])
       ORDER BY play_id, milestone_id`,
      [playIds],
    ),
  ]);

  return { categories, milestones };
};

/* Each Play's tags by name, for the Plays list's tag filter. */
export const readLocalPlayTags = async (
  db: LocalDb,
  playIds: string[],
): Promise<Map<string, PlayBrowseTag[]>> => {
  const tagsByPlayId = new Map<string, PlayBrowseTag[]>();

  if (!playIds.length) return tagsByPlayId;

  const rows = await runQuery<PlayBrowseTag & { play_id: string }>(
    db,
    `SELECT link.play_id, tag.id, tag.name, tag.slug
     FROM gameplay.mainline_play_tags link
     JOIN public.tags tag ON tag.id = link.tag_id
     WHERE link.play_id = ANY ($1::uuid[])
     ORDER BY link.play_id, tag.name`,
    [playIds],
  );

  for (const { play_id: playId, ...tag } of rows) {
    tagsByPlayId.set(playId, [...(tagsByPlayId.get(playId) ?? []), tag]);
  }

  return tagsByPlayId;
};

/*
 * Each team member's primary type, for the tint behind its portrait: the
 * form's latest attributes.
 */
const readTeamTypeSlugs = async (
  db: LocalDb,
  formIds: number[],
): Promise<Record<number, string>> => {
  if (!formIds.length) return {};

  const rows = await runQuery<{ form_id: number; slug: string }>(
    db,
    `SELECT DISTINCT ON (attributes.form_id) attributes.form_id, types.slug
     FROM reference.pokemon_attributes attributes
     JOIN reference.types types ON types.id = attributes.primary_type_id
     WHERE attributes.form_id = ANY ($1::integer[])
     ORDER BY attributes.form_id, attributes.generation_start_id DESC`,
    [formIds],
  );

  return Object.fromEntries(rows.map((row) => [row.form_id, row.slug]));
};

/*
 * The trainer's Plays, newest activity first: archived ones left out, or
 * only those for the Archived list. `withTags` also reads each Play's tags.
 */
export const readLocalPlayLibrary = async (
  db: LocalDb,
  {
    archived = false,
    withTags = false,
  }: { archived?: boolean; withTags?: boolean } = {},
): Promise<PlayBrowseItem[]> => {
  const plays = await runQuery<MainlinePlaySummary>(
    db,
    `SELECT * FROM views.mainline_play_summary
     WHERE user_id = auth.uid() AND archived_at IS ${archived ? "NOT NULL" : "NULL"}
     ORDER BY updated_at DESC`,
  );
  const playIds = plays.flatMap((play) => (play.play_id ? [play.play_id] : []));
  const gameIds = uniqueNumberIds(plays.map((play) => play.game_id));
  const hasPlays = playIds.length > 0;

  const [games, overviews, team, story, tags] = await Promise.all([
    settle(readPlayGames(db, gameIds)),
    settle(
      hasPlays
        ? runQuery<MainlinePlayOverview>(
            db,
            "SELECT * FROM views.mainline_play_overview WHERE user_id = auth.uid() AND play_id = ANY ($1::uuid[])",
            [playIds],
          )
        : Promise.resolve([]),
    ),
    settle(
      hasPlays
        ? runQuery<MainlinePlayTeamMemberRow>(
            db,
            `SELECT * FROM views.mainline_play_team_detail
             WHERE play_id = ANY ($1::uuid[]) AND roster_state_slug = 'active'
             ORDER BY slot`,
            [playIds],
          )
        : Promise.resolve([]),
    ),
    settle(
      hasPlays
        ? readPlayStoryRows(db, playIds)
        : Promise.resolve({ categories: [], milestones: [] }),
    ),
    withTags ? settle(readLocalPlayTags(db, playIds)) : null,
  ]);

  const teamMembers = team.ok ? team.value : [];
  const typeSlugs = await settle(
    readTeamTypeSlugs(
      db,
      uniqueNumberIds(teamMembers.map((member) => member.form_id)),
    ),
  );

  return buildMainlinePlayBrowseItems({
    availability: { progress: overviews.ok, story: story.ok, team: team.ok },
    games: games.ok ? games.value.games : [],
    overviews: overviews.ok ? overviews.value : [],
    plays,
    regions: games.ok ? games.value.regions : [],
    storyRows: story.ok ? story.value : { categories: [], milestones: [] },
    tagsByPlayId: tags?.ok ? tags.value : undefined,
    teamMembers,
    teamTypeSlugByFormId: typeSlugs.ok ? typeSlugs.value : {},
  });
};

/* How many Plays are archived; null when the count can't be read. */
export const readLocalArchivedPlayCount = async (db: LocalDb) => {
  const [row] = await runQuery<{ count: number }>(
    db,
    "SELECT count(*)::integer AS count FROM gameplay.mainline_plays WHERE user_id = auth.uid() AND archived_at IS NOT NULL",
  ).catch(() => [null]);

  return row ? row.count : null;
};
