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

/* The species in the most Plays, with the rest of its family for its sheet. */
export type StatsMostPicked = {
  entry: TrainerPokemonEntry;
  family: TrainerPokemonEntry[];
};

/* A game's cover, for the fans of covers beside the trainer title. */
export type StatsCover = {
  coverImageUrl: string | null;
  gameName: string;
  gameSlug: string | null;
};

/*
 * Who you are as a trainer, read from your Plays, with what earned it. Each
 * kind carries the numbers its reason names; the band draws its picture.
 */
export type TrainerTitle =
  | {
      kind: "specialist";
      /* How many of your Pokémon are of this type. */
      count: number;
      /*
       * Up to three of your top Pokémon of the type, never the most picked
       * one shown below; the band stands them in front of the type's mark.
       */
      pokemon: StatsMostPicked[];
      /* The next type and how far behind it is; null when no other type is used. */
      runnerUp: { gap: number; name: string } | null;
      title: string;
      typeName: string;
      typeSlug: string;
    }
  | {
      kind: "hopper";
      playCount: number;
      title: string;
      regionCount: number;
      visitedCount: number;
    }
  | {
      kind: "trainer";
      playCount: number;
      /* Regions still to play in to become a Region Hopper. */
      regionsToHopper: number;
      title: string;
    };

/* A run of words in a sentence; `strong` ones are the key numbers. */
export type StatsPhrase = { strong?: boolean; text: string }[];

export type StatsModel = {
  completedCount: number;
  /* The earliest day a Play started, "YYYY-MM-DD", or null when none is recorded. */
  firstStartedOn: string | null;
  /* Old friends, leaving out the most picked Pokémon's family. */
  friends: StatsFriend[];
  mostPicked: StatsMostPicked | null;
  minutes: number;
  /* One cover per game you've played, the most recently updated Play first. */
  playCovers: StatsCover[];
  playCount: number;
  /* Every Play's label, the most recently updated first. */
  playLabels: string[];
  regions: StatsRegion[];
  shinyCount: number;
  speciesCount: number;
  time: StatsTimeRow[];
  title: TrainerTitle;
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

/* Regions a trainer must have played in to be a Region Hopper. */
const hopperRegionCount = 3;

const plural = (count: number, one: string, many: string) =>
  `${count} ${count === 1 ? one : many}`;

/*
 * A playful title for the trainer, read from what they record (as Duolingo
 * and Spotify name a player's style): a clear favourite type makes a
 * specialist, playing in three regions or more a region hopper; otherwise
 * plainly a trainer. A specialist's picture is the type's mark with up to
 * three of their top Pokémon of it, skipping the most picked one, which the
 * page already shows.
 */
export const getTrainerTitle = (
  stats: Pick<StatsModel, "mostPicked" | "playCount" | "regions" | "types">,
  entries: TrainerPokemonEntry[] = [],
): TrainerTitle => {
  const favourite = getClearFavouriteType(stats.types);

  if (favourite) {
    const [runnerUp] = stats.types
      .filter((type) => type.slug !== favourite.slug && type.count > 0)
      .toSorted((left, right) => right.count - left.count);
    const top = entries
      .filter(
        (entry) =>
          entry !== stats.mostPicked?.entry &&
          entry.types.some((type) => type.slug === favourite.slug),
      )
      .toSorted(byPlaysThenRecent)
      .slice(0, 3);

    return {
      count: favourite.count,
      kind: "specialist",
      pokemon: top.map((entry) => ({
        entry,
        family: getTrainerFamilyEntries(entries, entry),
      })),
      runnerUp: runnerUp
        ? { gap: favourite.count - runnerUp.count, name: runnerUp.name }
        : null,
      title: `${favourite.name} Specialist`,
      typeName: favourite.name,
      typeSlug: favourite.slug,
    };
  }

  const visitedCount = stats.regions.filter(
    (region) => region.playLabels.length,
  ).length;

  if (visitedCount >= hopperRegionCount) {
    return {
      kind: "hopper",
      playCount: stats.playCount,
      regionCount: stats.regions.length,
      title: "Region Hopper",
      visitedCount,
    };
  }

  return {
    kind: "trainer",
    playCount: stats.playCount,
    regionsToHopper: hopperRegionCount - visitedCount,
    title: "Pokémon Trainer",
  };
};

/* What earned the title, with its key numbers marked to be set in bold. */
export const getTrainerTitleReason = (title: TrainerTitle): StatsPhrase => {
  switch (title.kind) {
    case "specialist":
      return [
        { strong: true, text: String(title.count) },
        {
          text: ` of your Pokémon ${title.count === 1 ? "is a" : "are"} ${title.typeName} ${title.count === 1 ? "type" : "types"}, `,
        },
        ...(title.runnerUp
          ? [
              { strong: true, text: `${title.runnerUp.gap} more` },
              { text: ` than ${title.runnerUp.name}.` },
            ]
          : [{ text: "more than any other type." }]),
      ];
    case "hopper":
      return [
        { text: "You've played in " },
        {
          strong: true,
          text:
            title.visitedCount === title.regionCount
              ? `all ${title.regionCount} regions`
              : `${title.visitedCount} of the ${title.regionCount} regions`,
        },
        { text: ", across " },
        { strong: true, text: plural(title.playCount, "Play", "Plays") },
        { text: "." },
      ];
    case "trainer":
      return [
        { strong: true, text: plural(title.playCount, "Play", "Plays") },
        { text: " and counting." },
        ...(title.regionsToHopper > 0
          ? [
              { text: " Play in " },
              {
                strong: true,
                text: plural(
                  title.regionsToHopper,
                  "more region",
                  "more regions",
                ),
              },
              { text: " to become a Region Hopper." },
            ]
          : []),
      ];
  }
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

  const playCovers: StatsCover[] = [];
  for (const play of plays) {
    const game = play.game_id === null ? undefined : gameById.get(play.game_id);
    if (!game || playCovers.some((cover) => cover.gameSlug === game.slug)) {
      continue;
    }
    playCovers.push({
      coverImageUrl: getGameCoverImageUrl(game),
      gameName: game.name,
      gameSlug: game.slug,
    });
  }

  return {
    completedCount: plays.filter((play) => play.status_slug === "completed")
      .length,
    firstStartedOn,
    friends: friends.filter(
      (friend) => !mostPicked || !friend.family.includes(mostPicked.entry),
    ),
    minutes,
    mostPicked,
    playCovers,
    playCount: plays.length,
    playLabels: plays.map(getTrainerPlayLabel),
    regions,
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
    title: getTrainerTitle(
      { mostPicked, playCount: plays.length, regions, types },
      entries,
    ),
    types,
    untrackedPlayLabels: plays
      .filter((play) => !play.playtime_minutes)
      .map(getTrainerPlayLabel),
  };
};
