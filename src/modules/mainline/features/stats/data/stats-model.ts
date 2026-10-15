import {
  createTrainerFormTypeResolver,
  getTrainerFamilyEntries,
  getTrainerPlayLabel,
  type TrainerPokemonEntry,
  type TrainerPokemonType,
} from "@/modules/mainline/shared/data/trainer-pokemon-model";
import type { TrainerPokemonRows } from "@/modules/mainline/shared/server/trainer-pokemon-reader";
import { joinStatsList } from "@/modules/mainline/features/stats/utils/stats-format";
import { getGameCoverImageUrl } from "@/modules/reference/features/games/data/game-images";

export type StatsTypeTally = {
  count: number;
  name: string;
  slug: string;
};

export type StatsTimeRow = {
  gameName: string;
  gameSlug: string | null;
  coverImageUrl: string | null;
  minutes: number;
  playId: string;
  /* The Play's own name; its cover beside it already shows the game. */
  playName: string;
  /* Its share of all recorded time, 0 to 100. */
  share: number;
};

export type StatsRegion = {
  coverImageUrl: string | null;
  gameName: string | null;
  gameSlug: string | null;
  name: string;
  playLabels: string[];
  slug: string;
};

export type StatsFriend = {
  /*
   * The member in the most Plays (the most recent breaks a tie), as the
   * Collection has it: it stands for the family.
   */
  entry: TrainerPokemonEntry;
  /*
   * Every species of its family that has joined you, itself included, in
   * Pokédex order.
   */
  family: TrainerPokemonEntry[];
  imageUrl: string | null;
  /* The members you used, in Pokédex order: "Kirlia, Gardevoir and Gallade". */
  memberNames: string;
  /* "Kirlia family", or the species' own name when it's the only one. */
  name: string;
  playCount: number;
  speciesSlug: string;
  types: TrainerPokemonType[];
};

/* A game cover as the figures draw it. */
export type StatsCover = {
  coverImageUrl: string | null;
  gameName: string;
  gameSlug: string | null;
};

/* The species in the most Plays, with the rest of its family for its sheet. */
export type StatsMostPicked = {
  entry: TrainerPokemonEntry;
  family: TrainerPokemonEntry[];
};

export type StatsModel = {
  completedCount: number;
  /* The earliest day a Play started, "YYYY-MM-DD", or null when none is recorded. */
  firstStartedOn: string | null;
  /* Old friends, leaving out the most picked Pokémon's family. */
  friends: StatsFriend[];
  /* The name of the Play with the most time, when any time is recorded. */
  longestPlayName: string | null;
  mostPicked: StatsMostPicked | null;
  /* Art of the Pokémon in the most Plays, up to three. */
  pokemonArt: string[];
  /* Covers of the games played most recently, each game once, up to three. */
  recentCovers: StatsCover[];
  /* Art of your shiny Pokémon, up to three. */
  shinyArt: string[];
  minutes: number;
  playCount: number;
  /* Every Play's label, the most recently updated first. */
  playLabels: string[];
  regions: StatsRegion[];
  shinyCount: number;
  speciesCount: number;
  time: StatsTimeRow[];
  /* Plays with no playtime, which the time section doesn't count. */
  untrackedPlayLabels: string[];
  types: StatsTypeTally[];
};

/* The type that clearly leads: two more than the next, or half again as many. */
export const getClearFavouriteType = (
  types: StatsTypeTally[],
): StatsTypeTally | null => {
  const [first, second] = types
    .filter((type) => type.count > 0)
    .toSorted((left, right) => right.count - left.count);

  if (!first) return null;
  if (!second) return first;

  return first.count >= second.count + 2 || first.count >= second.count * 1.5
    ? first
    : null;
};

/*
 * A playful title for the trainer, read from what they record (as Duolingo
 * and PlayStation name a player's style): a clear favourite type makes a
 * specialist, travelling three regions or more a region hopper; otherwise
 * plainly a trainer. The reason says what earned it.
 */
export const getTrainerTitle = (
  stats: Pick<StatsModel, "playCount" | "regions" | "types">,
): { reason: string; title: string; typeSlug: string | null } => {
  const favourite = getClearFavouriteType(stats.types);

  if (favourite) {
    return {
      reason: `${favourite.name} types are on your teams more than any other.`,
      title: `${favourite.name} Specialist`,
      typeSlug: favourite.slug,
    };
  }

  const visited = stats.regions.filter(
    (region) => region.playLabels.length,
  ).length;

  if (visited >= 3) {
    return {
      reason:
        visited === stats.regions.length
          ? `You've travelled every region, all ${visited} of them.`
          : `You've travelled ${visited} of the ${stats.regions.length} regions.`,
      title: "Region Hopper",
      typeSlug: null,
    };
  }

  return {
    reason: `${stats.playCount} ${stats.playCount === 1 ? "Play" : "Plays"} and counting.`,
    title: "Pokémon Trainer",
    typeSlug: null,
  };
};

const countTypes = (rows: TrainerPokemonRows): StatsTypeTally[] => {
  const getFormTypes = createTrainerFormTypeResolver(rows);
  const counts = new Map<string, number>();

  for (const member of rows.roster) {
    for (const type of getFormTypes(member.form_id)) {
      counts.set(type.slug, (counts.get(type.slug) ?? 0) + 1);
    }
  }

  return rows.types.map((type) => ({
    count: counts.get(type.slug) ?? 0,
    name: type.name,
    slug: type.slug,
  }));
};

const byPlaysThenRecent = (
  left: TrainerPokemonEntry,
  right: TrainerPokemonEntry,
) =>
  right.playIds.length - left.playIds.length ||
  (right.lastUsedAt ?? "").localeCompare(left.lastUsedAt ?? "");

/*
 * Old friends: evolution families that joined more than one Play, each led
 * by the member in the most Plays and named after it ("Kirlia family"); the
 * most Plays first, then the most recent.
 */
const findOldFriends = (entries: TrainerPokemonEntry[]): StatsFriend[] => {
  const families = new Map<
    string,
    { entries: TrainerPokemonEntry[]; lastUsedAt: string; playIds: Set<string> }
  >();

  for (const entry of entries) {
    const key =
      entry.evolutionFamilyId === null
        ? `species-${entry.speciesId}`
        : `family-${entry.evolutionFamilyId}`;
    const family = families.get(key) ?? {
      entries: [],
      lastUsedAt: "",
      playIds: new Set<string>(),
    };

    family.entries.push(entry);
    entry.playIds.forEach((playId) => family.playIds.add(playId));
    if ((entry.lastUsedAt ?? "") > family.lastUsedAt) {
      family.lastUsedAt = entry.lastUsedAt ?? "";
    }
    families.set(key, family);
  }

  return [...families.values()]
    .filter((family) => family.playIds.size > 1)
    .toSorted(
      (left, right) =>
        right.playIds.size - left.playIds.size ||
        right.lastUsedAt.localeCompare(left.lastUsedAt),
    )
    .flatMap(({ entries: familyEntries, playIds }) => {
      const [lead] = familyEntries.toSorted(byPlaysThenRecent);
      if (!lead) return [];

      const family = familyEntries.toSorted(
        (left, right) =>
          (left.nationalNumber ?? Infinity) -
          (right.nationalNumber ?? Infinity),
      );
      return [
        {
          entry: lead,
          family,
          imageUrl: lead.imageUrl,
          memberNames: joinStatsList(
            family.map((member) => member.name),
            "and",
          ),
          name: family.length > 1 ? `${lead.name} family` : lead.name,
          playCount: playIds.size,
          speciesSlug: lead.speciesSlug,
          types: lead.types,
        },
      ];
    });
};

export const buildStatsModel = (
  rows: TrainerPokemonRows,
  entries: TrainerPokemonEntry[],
): StatsModel => {
  const plays = rows.plays.filter((play) => play.play_id);
  const gameById = new Map(rows.games.map((game) => [game.id, game]));
  const minutes = plays.reduce(
    (total, play) => total + Math.max(play.playtime_minutes ?? 0, 0),
    0,
  );
  const tracked = plays
    .filter((play) => (play.playtime_minutes ?? 0) > 0)
    .toSorted(
      (left, right) =>
        (right.playtime_minutes ?? 0) - (left.playtime_minutes ?? 0),
    );
  const types = countTypes(rows);
  const friends = findOldFriends(entries);
  const firstStartedOn =
    plays
      .map((play) => play.started_on)
      .filter((value): value is string => Boolean(value))
      .toSorted()[0] ?? null;

  const byPlays = entries.toSorted(byPlaysThenRecent);
  const [favouritePokemon] = byPlays.filter(
    (entry) => entry.playIds.length > 1,
  );
  const mostPicked = favouritePokemon
    ? {
        entry: favouritePokemon,
        family: getTrainerFamilyEntries(entries, favouritePokemon),
      }
    : null;
  const recentCovers: StatsCover[] = [];

  for (const play of plays) {
    const game = play.game_id === null ? undefined : gameById.get(play.game_id);

    if (!game || recentCovers.some((cover) => cover.gameSlug === game.slug)) {
      continue;
    }
    recentCovers.push({
      coverImageUrl: getGameCoverImageUrl(game),
      gameName: game.name,
      gameSlug: game.slug,
    });
    if (recentCovers.length === 3) break;
  }

  const regions = rows.regions.map((region) => {
    const regionPlays = plays.filter((play) => {
      const game =
        play.game_id === null ? undefined : gameById.get(play.game_id);
      return game?.region_id === region.id;
    });
    const latestGame =
      regionPlays[0]?.game_id === null || regionPlays[0]?.game_id === undefined
        ? undefined
        : gameById.get(regionPlays[0].game_id);

    return {
      coverImageUrl: latestGame ? getGameCoverImageUrl(latestGame) : null,
      gameName: latestGame?.name ?? null,
      gameSlug: latestGame?.slug ?? null,
      name: region.name,
      playLabels: regionPlays.map(getTrainerPlayLabel),
      slug: region.slug,
    };
  });

  return {
    completedCount: plays.filter((play) => play.status_slug === "completed")
      .length,
    firstStartedOn,
    friends: friends.filter(
      (friend) => !mostPicked || !friend.family.includes(mostPicked.entry),
    ),
    longestPlayName: tracked[0]?.play_name ?? null,
    minutes,
    mostPicked,
    playCount: plays.length,
    playLabels: plays.map(getTrainerPlayLabel),
    pokemonArt: byPlays
      .flatMap((entry) => (entry.imageUrl ? [entry.imageUrl] : []))
      .slice(0, 3),
    recentCovers,
    regions,
    shinyArt: entries
      .flatMap((entry) => entry.members)
      .flatMap((member) =>
        member.isShiny && member.imageUrl ? [member.imageUrl] : [],
      )
      .slice(0, 3),
    shinyCount: rows.roster.filter((member) => member.is_shiny).length,
    speciesCount: entries.length,
    time: tracked.map((play) => {
      const game =
        play.game_id === null ? undefined : gameById.get(play.game_id);
      const playMinutes = play.playtime_minutes ?? 0;

      return {
        coverImageUrl: game ? getGameCoverImageUrl(game) : null,
        gameName: play.game_name ?? "Unknown game",
        gameSlug: play.game_slug,
        minutes: playMinutes,
        playId: play.play_id ?? "",
        playName: play.play_name ?? "Untitled Play",
        share: minutes ? Math.round((playMinutes / minutes) * 100) : 0,
      };
    }),
    types,
    untrackedPlayLabels: plays
      .filter((play) => !play.playtime_minutes)
      .map(getTrainerPlayLabel),
  };
};
