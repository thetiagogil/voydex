import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import {
  getDefensiveTypeMultiplier,
  getPokemonTypesForGeneration,
} from "@/modules/reference/features/pokemon/domain/type-effectiveness";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import type { Type } from "@/modules/reference/types";

import { getDamagingMoveTypeSlug } from "./team-analysis-rows";

/* The three readings a battle, one of your Pokémon or the levels can take. */
export type MatchupState = "balanced" | "challenging" | "strong";

/* One Pokémon on the opponent's team, by its types in the Play's game. */
export type StoryOpponentPokemon = {
  formSlug: string;
  imageUrl: string | null;
  key: string;
  level: number;
  name: string;
  types: Type[];
};

export type StoryBestHit = {
  moveName: string;
  multiplier: number;
  target: StoryOpponentPokemon;
};

/* How one of your Pokémon reads against their team. */
export type StoryMemberReading = {
  /* Your strongest recorded move against any of them, when it hits for more than 1×. */
  bestHit: StoryBestHit | null;
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

export const getLevelsSentence = (levels: StoryLevelsReading) =>
  levels.gap <= -2
    ? `They're ${-levels.gap} ${levelWord(-levels.gap)} above your team`
    : levels.gap >= 2
      ? `You're ${levels.gap} ${levelWord(levels.gap)} above them`
      : "Your levels are close to theirs";

/*
 * Reads your active team against one opponent's team by types, recorded
 * moves and levels (v3 `storyMatchups()`): who answers whom, who is exposed,
 * and one verdict with the sentence behind it. Their moves aren't in Voydex,
 * so their threat is read from their own types.
 */
export const readStoryBattle = ({
  generationOrder,
  members,
  opponentName,
  their,
  types,
}: {
  generationOrder: number;
  members: MainlinePlayTeamMember[];
  /* "Leon", or null when the battle has more than one opponent. */
  opponentName: string | null;
  their: StoryOpponentPokemon[];
  types: Type[];
}): StoryBattleReading => {
  const typeBySlug = new Map(types.map((type) => [type.slug, type]));
  const theirSlugs = their.map((pokemon) => toTypeSlugs(pokemon.types));
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
      const slug = getDamagingMoveTypeSlug(move);

      return slug && isPokemonTypeSlug(slug) ? [{ move, slug }] : [];
    });

    let bestHit: StoryBestHit | null = null;

    for (const [index, pokemon] of their.entries()) {
      for (const { move, slug } of damagingMoves) {
        const multiplier = hitOn(slug, theirSlugs[index]);

        if (multiplier > 1 && (!bestHit || multiplier > bestHit.multiplier)) {
          bestHit = { moveName: move.name, multiplier, target: pokemon };
        }
      }
    }

    const hitsTaken = new Map<PokemonTypeSlug, number>();

    if (memberSlugs.length) {
      for (const slug of new Set(theirSlugs.flat())) {
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
      member.moves.flatMap((move) => getDamagingMoveTypeSlug(move) ?? []),
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
  opponentName,
  teamCount,
  theirCount,
}: {
  answeredCount: number;
  exposedCount: number;
  gap: number | null;
  hasRecordedMoves: boolean;
  opponentName: string | null;
  teamCount: number;
  theirCount: number;
}) => {
  const owner = opponentName ? `${opponentName}'s` : "their";
  const answersAll = answeredCount === theirCount;
  const answers = !hasRecordedMoves
    ? "Your team's moves aren't recorded"
    : answersAll
      ? theirCount === 1
        ? `You have an answer to ${owner} Pokémon`
        : `You have an answer to each of ${owner} ${countWord(theirCount)} Pokémon`
      : answeredCount === 0
        ? `None of your recorded moves hits ${owner} Pokémon for 2×`
        : `You have an answer to ${answeredCount} of ${owner} ${theirCount} Pokémon`;

  const [other, isGood] =
    gap !== null && gap <= -2
      ? [`they're ${-gap} ${levelWord(-gap)} above your team`, false]
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
          ? [`you're ${gap} ${levelWord(gap)} above them`, true]
          : ["nothing of theirs hits your team for 2×", true];

  const isAnswersGood = hasRecordedMoves && answersAll;

  return `${answers}, ${isAnswersGood === isGood ? "and" : "but"} ${other}.`;
};
