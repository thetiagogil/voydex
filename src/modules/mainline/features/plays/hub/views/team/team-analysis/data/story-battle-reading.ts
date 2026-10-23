import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { getMoveHitTypeSlug } from "@/modules/reference/features/moves/domain/move-hit-types";
import {
  getDefensiveTypeMultiplier,
  getPokemonTypesForGeneration,
} from "@/modules/reference/features/pokemon/domain/type-effectiveness";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import type { LegendaryRarity } from "@/modules/reference/features/pokemon/types";
import type { Type } from "@/modules/reference/types";

import { getDamagingMoveTypeSlug } from "./team-analysis-rows";

/* The three readings a battle, one of your Pokémon or the levels can take. */
export type MatchupState = "balanced" | "challenging" | "strong";

/*
 * Who the opponent is: a trainer with a team, or a legendary Pokémon met on
 * its own, which reads as "it" and not as "them".
 */
export type StoryOpponentKind = "legendary" | "trainer";

/*
 * How an opponent's Pokémon powers up in this battle: it Terastallizes,
 * Dynamaxes or Gigantamaxes, battles as its Mega, Primal or Ultra Burst form,
 * or holds a Z-Crystal.
 */
export type StoryOpponentMechanicKind =
  | "dynamax"
  | "gigantamax"
  | "mega"
  | "primal"
  | "tera"
  | "ultra-burst"
  | "z-move";

export type StoryOpponentMechanic = {
  kind: StoryOpponentMechanicKind;
  /* "Tera Rock", "Gigantamax", "Mega", "Z-Move". */
  label: string;
};

/* One of their moves, as the Play's game has it. */
export type StoryOpponentMove = {
  /* It hits by type effectiveness: not a status move or one that deals set damage. */
  damaging: boolean;
  name: string;
  slug: string;
  type: Type | null;
};

/* One Pokémon on the opponent's team, by its types and moves in the Play's game. */
export type StoryOpponentPokemon = {
  formSlug: string;
  /* What it holds, where the game has held items and Voydex has it. */
  heldItem: { name: string; slug: string } | null;
  imageUrl: string | null;
  key: string;
  /* Set when the species is Legendary or Mythical. */
  legendary: LegendaryRarity | null;
  level: number;
  mechanic: StoryOpponentMechanic | null;
  /* Its moves in slot order; empty when Voydex doesn't have them. */
  moves: StoryOpponentMove[];
  name: string;
  /*
   * The type it Terastallizes into, which replaces its own types for what
   * hits it; null when it doesn't, or Terastallizes into Stellar, which
   * keeps them.
   */
  teraType: Type | null;
  types: Type[];
};

export type StoryBestHit = {
  moveName: string;
  multiplier: number;
  target: StoryOpponentPokemon;
};

/* How one of your Pokémon reads against their team. */
/*
 * One of their Pokémon in a matchup with one of yours, and what makes it
 * count: move names, or its type names where Voydex doesn't have its moves.
 */
export type StoryHitDetail = {
  /* True when `via` names its types, not moves. */
  byType: boolean;
  multiplier: number;
  pokemon: StoryOpponentPokemon;
  via: string[];
};

export type StoryMemberReading = {
  /* Your strongest recorded move against any of them, when it hits for more than 1×. */
  bestHit: StoryBestHit | null;
  /* Their Pokémon this one hits for more than 1×, with which of its recorded moves, hardest first. */
  lands: StoryHitDetail[];
  /* Their Pokémon that hit this one for 2× or more, with what, hardest first. */
  takes: StoryHitDetail[];
  /* Advantage, Even or At risk; null while its types or moves aren't recorded. */
  role: MatchupState | null;
  /* Their types that hit this Pokémon for 2× or more, strongest first. */
  weakTo: Type[];
};

export type StoryLevelRange = { max: number; min: number };

export type StoryLevelsReading = {
  /* Your best level minus their ace's: below zero, they're ahead. */
  gap: number;
  state: MatchupState;
  team: StoryLevelRange;
  their: StoryLevelRange;
};

export type StoryBattleReading = {
  /* Null while the team is empty, so nothing is read. */
  state: MatchupState | null;
  summary: string | null;
  /* Null while your team's levels aren't recorded. */
  levels: StoryLevelsReading | null;
  members: StoryMemberReading[];
  /* Types that hit one of them for 2× that none of your recorded moves has. */
  uncoveredTypes: Type[];
};

const countWords = ["no", "one", "two", "three", "four", "five", "six"];

const countWord = (count: number) => countWords[count] ?? String(count);

const levelWord = (count: number) => (count === 1 ? "level" : "levels");

const toTypeSlugs = (types: Type[]) =>
  types.flatMap((type): PokemonTypeSlug[] =>
    isPokemonTypeSlug(type.slug) ? [type.slug] : [],
  );

export const getLevelRange = (levels: number[]): StoryLevelRange | null =>
  levels.length ? { max: Math.max(...levels), min: Math.min(...levels) } : null;

export const formatLevelRange = ({ max, min }: StoryLevelRange) =>
  max === min ? `Lv. ${min}` : `Lv. ${min}–${max}`;

/* An edge of 2 levels or more either way counts; anything closer is even. */
const getLevelState = (gap: number): MatchupState =>
  gap >= 2 ? "strong" : gap <= -2 ? "challenging" : "balanced";

export const getLevelsSentence = (
  levels: StoryLevelsReading,
  opponentKind: StoryOpponentKind = "trainer",
) => {
  const isLegendary = opponentKind === "legendary";

  return levels.gap <= -2
    ? `${isLegendary ? "It's" : "They're"} ${-levels.gap} ${levelWord(-levels.gap)} above your team`
    : levels.gap >= 2
      ? `You're ${levels.gap} ${levelWord(levels.gap)} above ${isLegendary ? "it" : "them"}`
      : `Your levels are close to ${isLegendary ? "its" : "theirs"}`;
};

/*
 * What one of their Pokémon does in battle beyond its types, in words: "Lycanroc
 * holds Rockium Z for a Z-Move.", "Glimmora Terastallizes into Rock.". A battle
 * form whose name already says it ("Gigantamax Charizard") only names its item.
 * Null when there is nothing to say.
 */
export const getPowerUpSentence = ({
  heldItem,
  mechanic,
  name,
}: Pick<StoryOpponentPokemon, "heldItem" | "mechanic" | "name">) => {
  const mechanicWords =
    !mechanic || name.includes(mechanic.label)
      ? null
      : mechanic.kind === "tera"
        ? `Terastallizes into ${mechanic.label.replace(/^Tera /, "")}`
        : mechanic.kind === "dynamax"
          ? "Dynamaxes"
          : mechanic.kind === "z-move"
            ? null
            : `battles as its ${mechanic.label} form`;
  const itemWords = heldItem
    ? `holds ${heldItem.name}${mechanic?.kind === "z-move" ? " for a Z-Move" : ""}`
    : null;
  const words = [itemWords, mechanicWords].filter(Boolean);

  return words.length ? `${name} ${words.join(" and ")}.` : null;
};

/*
 * What hits one of their Pokémon: its Tera Type once it Terastallizes, else
 * its own types.
 */
const getDefendingSlugs = (pokemon: StoryOpponentPokemon) =>
  toTypeSlugs(pokemon.teraType ? [pokemon.teraType] : pokemon.types);

/*
 * What one of their Pokémon hits with: the types of its damaging moves when
 * Voydex has its moves (Tera Blast takes its Tera Type), else its own types,
 * and its Tera Type too once it Terastallizes, since it keeps its own types'
 * moves.
 */
const getAttacks = (
  pokemon: StoryOpponentPokemon,
): { name: string; slug: PokemonTypeSlug }[] =>
  pokemon.moves.length
    ? pokemon.moves.flatMap((move) => {
        const slug = move.damaging
          ? getMoveHitTypeSlug({
              moveTypeSlug: move.type?.slug ?? null,
              slug: move.slug,
              teraTypeSlug: pokemon.teraType?.slug ?? null,
              userTypeSlugs: pokemon.types.map((type) => type.slug),
            })
          : null;

        return slug && isPokemonTypeSlug(slug)
          ? [{ name: move.name, slug }]
          : [];
      })
    : (pokemon.teraType ? [...pokemon.types, pokemon.teraType] : pokemon.types)
        .filter((type) => isPokemonTypeSlug(type.slug))
        .map((type) => ({
          name: type.name,
          slug: type.slug as PokemonTypeSlug,
        }));

const getAttackingSlugs = (pokemon: StoryOpponentPokemon) =>
  getAttacks(pokemon).map((attack) => attack.slug);

/* Groups hits by their Pokémon: each one's strongest multiplier and every name behind it. */
const toHitDetails = (
  hits: { index: number; multiplier: number; name: string }[],
  their: StoryOpponentPokemon[],
) => {
  const byIndex = new Map<number, { multiplier: number; via: string[] }>();

  for (const hit of hits) {
    const detail = byIndex.get(hit.index) ?? { multiplier: 0, via: [] };

    detail.multiplier = Math.max(detail.multiplier, hit.multiplier);

    if (!detail.via.includes(hit.name)) {
      detail.via.push(hit.name);
    }

    byIndex.set(hit.index, detail);
  }

  return [...byIndex]
    .map(
      ([index, detail]): StoryHitDetail => ({
        byType: !their[index].moves.length,
        multiplier: detail.multiplier,
        pokemon: their[index],
        via: detail.via,
      }),
    )
    .sort((left, right) => right.multiplier - left.multiplier);
};

/* How many of their Pokémon Voydex has the moves of. */
export const countOpponentsWithMoves = (their: StoryOpponentPokemon[]) =>
  their.filter((pokemon) => pokemon.moves.length > 0).length;

/*
 * Reads your active team against one opponent's team by types, recorded
 * moves and levels (v3 `storyMatchups()`): who answers whom, who is exposed,
 * and one verdict with the sentence behind it. Their threat is read from
 * their damaging moves where Voydex has them, else from their own types and
 * any Tera Type, and what hits them from their Tera Type where they
 * Terastallize.
 */
export const readStoryBattle = ({
  generationOrder,
  members,
  opponentKind = "trainer",
  opponentName,
  their,
  types,
}: {
  generationOrder: number;
  members: MainlinePlayTeamMember[];
  opponentKind?: StoryOpponentKind;
  /* "Leon", or null when the battle has more than one opponent. */
  opponentName: string | null;
  their: StoryOpponentPokemon[];
  types: Type[];
}): StoryBattleReading => {
  const typeBySlug = new Map(types.map((type) => [type.slug, type]));
  const theirSlugs = their.map(getDefendingSlugs);
  const theirAttackingSlugs = new Set(their.flatMap(getAttackingSlugs));
  const hitOn = (attacking: PokemonTypeSlug, defending: PokemonTypeSlug[]) =>
    defending.length
      ? getDefensiveTypeMultiplier(attacking, defending, generationOrder)
      : 1;

  const memberReadings = members.map((member): StoryMemberReading => {
    const memberSlugs = toTypeSlugs(
      [member.primaryType, member.secondaryType].filter(
        (type): type is Type => type !== null,
      ),
    );
    const damagingMoves = member.moves.flatMap((move) => {
      const slug = getDamagingMoveTypeSlug(move, member);

      return slug && isPokemonTypeSlug(slug) ? [{ move, slug }] : [];
    });

    let bestHit: StoryBestHit | null = null;
    const landed: { index: number; multiplier: number; name: string }[] = [];

    for (const [index, pokemon] of their.entries()) {
      for (const { move, slug } of damagingMoves) {
        const multiplier = hitOn(slug, theirSlugs[index]);

        if (multiplier > 1) {
          landed.push({ index, multiplier, name: move.name });
        }

        if (multiplier > 1 && (!bestHit || multiplier > bestHit.multiplier)) {
          bestHit = { moveName: move.name, multiplier, target: pokemon };
        }
      }
    }

    const taken: { index: number; multiplier: number; name: string }[] = [];

    if (memberSlugs.length) {
      for (const [index, pokemon] of their.entries()) {
        for (const attack of getAttacks(pokemon)) {
          const multiplier = getDefensiveTypeMultiplier(
            attack.slug,
            memberSlugs,
            generationOrder,
          );

          if (multiplier >= 2) {
            taken.push({ index, multiplier, name: attack.name });
          }
        }
      }
    }

    const hitsTaken = new Map<PokemonTypeSlug, number>();

    if (memberSlugs.length) {
      for (const slug of theirAttackingSlugs) {
        const multiplier = getDefensiveTypeMultiplier(
          slug,
          memberSlugs,
          generationOrder,
        );

        if (multiplier >= 2) {
          hitsTaken.set(slug, multiplier);
        }
      }
    }

    const weakTo = [...hitsTaken]
      .sort((left, right) => right[1] - left[1])
      .flatMap(([slug]) => typeBySlug.get(slug) ?? []);
    const isExposed = weakTo.length > 0;

    return {
      bestHit,
      lands: toHitDetails(landed, their),
      takes: toHitDetails(taken, their),
      role:
        !memberSlugs.length || !damagingMoves.length
          ? null
          : isExposed && !bestHit
            ? "challenging"
            : bestHit && !isExposed
              ? "strong"
              : "balanced",
      weakTo,
    };
  });

  const recordedSlugs = new Set(
    members.flatMap((member) =>
      member.moves.flatMap(
        (move) => getDamagingMoveTypeSlug(move, member) ?? [],
      ),
    ),
  );
  const uncoveredTypes = recordedSlugs.size
    ? getPokemonTypesForGeneration(generationOrder)
        .filter((slug) => !recordedSlugs.has(slug))
        .map((slug) => ({
          count: theirSlugs.filter((defending) => hitOn(slug, defending) >= 2)
            .length,
          slug,
        }))
        .filter(({ count }) => count > 0)
        .sort((left, right) => right.count - left.count)
        .flatMap(({ slug }) => typeBySlug.get(slug) ?? [])
    : [];

  const teamRange = getLevelRange(
    members.flatMap((member) => (member.level ? [member.level] : [])),
  );
  const theirRange = getLevelRange(their.map((pokemon) => pokemon.level));
  const levels =
    teamRange && theirRange
      ? {
          gap: teamRange.max - theirRange.max,
          state: getLevelState(teamRange.max - theirRange.max),
          team: teamRange,
          their: theirRange,
        }
      : null;

  if (!members.length || !their.length) {
    return {
      levels,
      members: memberReadings,
      state: null,
      summary: null,
      uncoveredTypes,
    };
  }

  const answeredCount = theirSlugs.filter((defending) =>
    [...recordedSlugs].some(
      (slug) => isPokemonTypeSlug(slug) && hitOn(slug, defending) > 1,
    ),
  ).length;
  const atRiskCount = memberReadings.filter(
    (reading) => reading.role === "challenging",
  ).length;
  const clearCount = memberReadings.filter(
    (reading) => reading.bestHit && !reading.weakTo.length,
  ).length;
  const exposedCount = memberReadings.filter(
    (reading) => reading.weakTo.length,
  ).length;
  /* Strong needs the levels to hold; without your levels it can't say so. */
  const gap = levels?.gap ?? null;
  const state: MatchupState =
    answeredCount / their.length < 0.6 ||
    atRiskCount >= 3 ||
    (gap !== null && gap <= -8)
      ? "challenging"
      : answeredCount === their.length &&
          atRiskCount <= 1 &&
          clearCount >= 1 &&
          gap !== null &&
          gap >= -3
        ? "strong"
        : "balanced";

  return {
    levels,
    members: memberReadings,
    state,
    summary: getSummary({
      answeredCount,
      exposedCount,
      gap: levels?.gap ?? null,
      hasRecordedMoves: recordedSlugs.size > 0,
      opponentKind,
      opponentName,
      teamCount: members.length,
      theirCount: their.length,
    }),
    uncoveredTypes,
  };
};

/*
 * The verdict's one sentence: your answers first, then the one thing that
 * matters most on the other side (their level edge, your exposure, or what
 * goes your way).
 */
const getSummary = ({
  answeredCount,
  exposedCount,
  gap,
  hasRecordedMoves,
  opponentKind,
  opponentName,
  teamCount,
  theirCount,
}: {
  answeredCount: number;
  exposedCount: number;
  gap: number | null;
  hasRecordedMoves: boolean;
  opponentKind: StoryOpponentKind;
  opponentName: string | null;
  teamCount: number;
  theirCount: number;
}) => {
  const owner = opponentName ? `${opponentName}'s` : "their";
  const isLegendary = opponentKind === "legendary";
  /* A legendary is named, not counted: "an answer to Raikou". */
  const subject = isLegendary ? (opponentName ?? "it") : null;
  const answersAll = answeredCount === theirCount;
  const answers = !hasRecordedMoves
    ? "Your team's moves aren't recorded"
    : subject
      ? answersAll
        ? `You have an answer to ${subject}`
        : `None of your recorded moves hits ${subject} for 2×`
      : answersAll
        ? theirCount === 1
          ? `You have an answer to ${owner} Pokémon`
          : `You have an answer to each of ${owner} ${countWord(theirCount)} Pokémon`
        : answeredCount === 0
          ? `None of your recorded moves hits ${owner} Pokémon for 2×`
          : `You have an answer to ${answeredCount} of ${owner} ${theirCount} Pokémon`;

  const [other, isGood] =
    gap !== null && gap <= -2
      ? [
          `${isLegendary ? "it's" : "they're"} ${-gap} ${levelWord(-gap)} above your team`,
          false,
        ]
      : exposedCount > 0
        ? [
            teamCount === 1
              ? "your Pokémon takes 2× or more"
              : exposedCount === teamCount
                ? `all ${countWord(teamCount)} of yours take 2× or more`
                : `${exposedCount} of your ${teamCount} take 2× or more`,
            false,
          ]
        : gap !== null && gap >= 2
          ? [
              `you're ${gap} ${levelWord(gap)} above ${isLegendary ? "it" : "them"}`,
              true,
            ]
          : [
              isLegendary
                ? "it doesn't hit your team for 2×"
                : "nothing of theirs hits your team for 2×",
              true,
            ];

  const isAnswersGood = hasRecordedMoves && answersAll;

  return `${answers}, ${isAnswersGood === isGood ? "and" : "but"} ${other}.`;
};
