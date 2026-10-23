import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { getMoveHitTypeSlug } from "@/modules/reference/features/moves/domain/move-hit-types";
import {
  getDuel,
  getTypeDamageClass,
  getTypicalPower,
  type BaseStats,
  type BattleAttack,
  type Battler,
} from "@/modules/reference/features/pokemon/domain/battle-math";
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
  /* Out of 100; null for a move that never misses. */
  accuracy: number | null;
  /* Null for a status move or without details. */
  damageClass: "physical" | "special" | null;
  /* It hits by type effectiveness: not a status move or one that deals set damage. */
  damaging: boolean;
  name: string;
  /* Null when it varies (Low Kick) or Voydex has no details. */
  power: number | null;
  slug: string;
  type: Type | null;
};

/* One Pokémon on the opponent's team, by its types and moves in the Play's game. */
export type StoryOpponentPokemon = {
  /* Its form's base stats in the Play's generation; null without them. */
  baseStats: BaseStats | null;
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
  /* True when `moveName` names your Pokémon's type, as its moves aren't recorded. */
  byType: boolean;
  moveName: string;
  multiplier: number;
  target: StoryOpponentPokemon;
};

/*
 * One of their Pokémon in a matchup with one of yours, and what makes it
 * count: move names, or type names where the moves aren't known.
 */
export type StoryHitDetail = {
  /* True when `via` names its types, not moves. */
  byType: boolean;
  multiplier: number;
  pokemon: StoryOpponentPokemon;
  via: string[];
};

/* How one of your Pokémon reads against their team. */
export type StoryMemberReading = {
  /* Its strongest hit against any of them, when it hits for more than 1×. */
  bestHit: StoryBestHit | null;
  /* Their Pokémon this one hits for more than 1×, and with what, hardest first. */
  lands: StoryHitDetail[];
  /* Their Pokémon that hit this one for 2× or more, with what, hardest first. */
  takes: StoryHitDetail[];
  /* Advantage, Even or At risk; null while its types aren't recorded. */
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

/* What your team doesn't record, which makes the verdict a rough read. */
export type StoryReadingGap = "levels" | "moves";

export type StoryBattleReading = {
  /* Null while the team is empty, so nothing is read. */
  state: MatchupState | null;
  /* What the verdict had to assume; empty when your team records it all. */
  missing: StoryReadingGap[];
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

/*
 * Groups hits by their Pokémon: each one's strongest multiplier and every
 * name behind it, which are type names when `isByType` says so for it.
 */
const toHitDetails = (
  hits: { index: number; multiplier: number; name: string }[],
  their: StoryOpponentPokemon[],
  isByType: (pokemon: StoryOpponentPokemon) => boolean,
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
        byType: isByType(their[index]),
        multiplier: detail.multiplier,
        pokemon: their[index],
        via: detail.via,
      }),
    )
    .sort((left, right) => right.multiplier - left.multiplier);
};

/* Stats for a Pokémon without them in Voydex: middling all round. */
const middlingStats: BaseStats = {
  attack: 75,
  defense: 75,
  hp: 75,
  specialAttack: 75,
  specialDefense: 75,
  speed: 75,
};

/* A Pokémon read by its types hits with a move of each at a power usual for its level. */
const toTypeAttacks = (
  typeSlugs: PokemonTypeSlug[],
  level: number,
  baseStats: BaseStats,
  generationOrder: number,
): BattleAttack[] =>
  typeSlugs.map((typeSlug) => ({
    accuracy: 100,
    damageClass: getTypeDamageClass(typeSlug, generationOrder, baseStats),
    power: getTypicalPower(level),
    slug: null,
    typeSlug,
  }));

/*
 * One of their Pokémon as the battle math takes it: its damaging moves, or
 * its types without them; what hits it by its Tera Type; twice the HP while
 * it Dynamaxes.
 */
const toTheirBattler = (
  pokemon: StoryOpponentPokemon,
  generationOrder: number,
): Battler => {
  const baseStats = pokemon.baseStats ?? middlingStats;
  const ownSlugs = toTypeSlugs(pokemon.types);
  const teraSlugs = pokemon.teraType ? toTypeSlugs([pokemon.teraType]) : [];
  const moveAttacks = pokemon.moves.flatMap((move): BattleAttack[] => {
    const typeSlug = move.damaging
      ? getMoveHitTypeSlug({
          moveTypeSlug: move.type?.slug ?? null,
          slug: move.slug,
          teraTypeSlug: pokemon.teraType?.slug ?? null,
          userTypeSlugs: pokemon.types.map((type) => type.slug),
        })
      : null;

    return typeSlug && isPokemonTypeSlug(typeSlug)
      ? [
          {
            accuracy: move.accuracy,
            damageClass:
              move.damageClass ??
              getTypeDamageClass(typeSlug, generationOrder, baseStats),
            power: move.power,
            slug: move.slug,
            typeSlug,
          },
        ]
      : [];
  });

  return {
    attacks: pokemon.moves.length
      ? moveAttacks
      : toTypeAttacks(
          [...new Set([...ownSlugs, ...teraSlugs])],
          pokemon.level,
          baseStats,
          generationOrder,
        ),
    baseStats,
    hpMultiplier:
      pokemon.mechanic?.kind === "dynamax" ||
      pokemon.mechanic?.kind === "gigantamax"
        ? 2
        : 1,
    level: pokemon.level,
    stabTypes: [...ownSlugs, ...teraSlugs],
    types: getDefendingSlugs(pokemon),
  };
};

/*
 * One of yours as the battle math takes it: its recorded damaging moves, or
 * its types without them, at its level or, while that isn't recorded, at
 * the level given.
 */
const toYourBattler = (
  member: MainlinePlayTeamMember,
  generationOrder: number,
  fallbackLevel: number,
): Battler => {
  const baseStats = member.baseStats ?? middlingStats;
  const level = member.level ?? fallbackLevel;
  const typeSlugs = toTypeSlugs(
    [member.primaryType, member.secondaryType].filter(
      (type): type is Type => type !== null,
    ),
  );
  const moveAttacks = member.moves.flatMap((move): BattleAttack[] => {
    const typeSlug = getDamagingMoveTypeSlug(move, member);
    const damageClass = move.attributes?.damage_class;

    return typeSlug && isPokemonTypeSlug(typeSlug)
      ? [
          {
            accuracy: move.attributes?.accuracy ?? null,
            damageClass:
              damageClass === "physical" || damageClass === "special"
                ? damageClass
                : getTypeDamageClass(typeSlug, generationOrder, baseStats),
            power: move.attributes?.power ?? null,
            slug: move.slug,
            typeSlug,
          },
        ]
      : [];
  });

  return {
    attacks: moveAttacks.length
      ? moveAttacks
      : toTypeAttacks(typeSlugs, level, baseStats, generationOrder),
    baseStats,
    level,
    stabTypes: typeSlugs,
    types: typeSlugs,
  };
};

/* A duel you can't win counts as three of your Pokémon lost, so one never outweighs a team. */
const MAX_COST = 3;

/*
 * How much the average player's answer weighs against the best one: you
 * won't always have your best Pokémon out, so what one of theirs costs you
 * mixes your best answer with your second best.
 */
const BEST_ANSWER_WEIGHT = 0.6;

/* The share of your team's HP a battle may cost: Strong at or below the first, Challenging at or above the second. */
export const battleCostLimits = { challenging: 0.9, strong: 0.3 };

/*
 * What one of theirs costs you: your best answer's cost mixed with your
 * second best's (the best again with one Pokémon), as the average player
 * fights it.
 */
export const getAnswerCost = (costs: number[]) => {
  const [best = MAX_COST, second = best] = costs
    .map((cost) => Math.min(cost, MAX_COST))
    .sort((left, right) => left - right);

  return BEST_ANSWER_WEIGHT * best + (1 - BEST_ANSWER_WEIGHT) * second;
};

/*
 * The battle's verdict from what beating each of theirs costs you, added up
 * and shared across your team: Strong when it costs little of your team's
 * HP, Challenging when it costs about all of it, Balanced between.
 */
export const getBattleState = ({
  answerCosts,
  teamCount,
}: {
  answerCosts: number[];
  teamCount: number;
}): MatchupState => {
  const share =
    answerCosts.reduce((sum, cost) => sum + cost, 0) / Math.max(1, teamCount);

  return share <= battleCostLimits.strong
    ? "strong"
    : share >= battleCostLimits.challenging
      ? "challenging"
      : "balanced";
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

  const aceLevel = Math.max(0, ...their.map((pokemon) => pokemon.level));
  const theirBattlers = their.map((pokemon) =>
    toTheirBattler(pokemon, generationOrder),
  );
  /* What beating each of theirs costs each of yours, yours by row. */
  const costs = members.map((member) => {
    const your = toYourBattler(member, generationOrder, aceLevel);

    return theirBattlers.map((battler) =>
      Math.min(
        getDuel({ generationOrder, their: battler, your }).cost,
        MAX_COST,
      ),
    );
  });

  const memberReadings = members.map((member, row): StoryMemberReading => {
    const memberSlugs = toTypeSlugs(
      [member.primaryType, member.secondaryType].filter(
        (type): type is Type => type !== null,
      ),
    );
    const damagingMoves = member.moves.flatMap((move) => {
      const slug = getDamagingMoveTypeSlug(move, member);

      return slug && isPokemonTypeSlug(slug) ? [{ name: move.name, slug }] : [];
    });
    /* Without recorded damaging moves, it hits with its own types, as theirs do. */
    const isByType = !damagingMoves.length;
    const attacks = isByType
      ? memberSlugs.map((slug) => ({
          name: typeBySlug.get(slug)?.name ?? slug,
          slug,
        }))
      : damagingMoves;

    let bestHit: StoryBestHit | null = null;
    const landed: { index: number; multiplier: number; name: string }[] = [];

    for (const [index, pokemon] of their.entries()) {
      for (const { name, slug } of attacks) {
        const multiplier = hitOn(slug, theirSlugs[index]);

        if (multiplier > 1) {
          landed.push({ index, multiplier, name });
        }

        if (multiplier > 1 && (!bestHit || multiplier > bestHit.multiplier)) {
          bestHit = {
            byType: isByType,
            moveName: name,
            multiplier,
            target: pokemon,
          };
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
    /* Its role is what taking on their whole team alone would cost it, on average. */
    const meanCost = costs[row].length
      ? costs[row].reduce((sum, cost) => sum + cost, 0) / costs[row].length
      : null;

    return {
      bestHit,
      lands: toHitDetails(landed, their, () => isByType),
      takes: toHitDetails(taken, their, (pokemon) => !pokemon.moves.length),
      role:
        !memberSlugs.length || meanCost === null
          ? null
          : meanCost <= battleCostLimits.strong
            ? "strong"
            : meanCost >= battleCostLimits.challenging
              ? "challenging"
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

  const missing: StoryReadingGap[] = [
    ...(members.some((member) => !member.level) ? ["levels" as const] : []),
    ...(recordedSlugs.size ? [] : ["moves" as const]),
  ];

  if (!members.length || !their.length) {
    return {
      levels,
      members: memberReadings,
      missing: [],
      state: null,
      summary: null,
      uncoveredTypes,
    };
  }

  const answered = new Set(
    memberReadings.flatMap((reading) =>
      reading.lands.map((detail) => detail.pokemon),
    ),
  );
  const answeredCount = their.filter((pokemon) => answered.has(pokemon)).length;
  const exposedCount = memberReadings.filter(
    (reading) => reading.weakTo.length,
  ).length;
  const state = getBattleState({
    answerCosts: their.map((_, index) =>
      getAnswerCost(costs.map((row) => row[index])),
    ),
    teamCount: members.length,
  });

  return {
    levels,
    members: memberReadings,
    missing,
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
 * The verdict's one sentence, in the order it weighs things: a level edge of
 * 2 or more first, then your answers to their team, by recorded moves or by
 * type; without a level edge, your answers and then your exposure.
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
  const isLevelFirst = gap !== null && Math.abs(gap) >= 2;
  /* Without recorded moves, your Pokémon are read by their types. */
  const lead = hasRecordedMoves ? "" : isLevelFirst ? "by type " : "by type, ";
  const noneHits = hasRecordedMoves
    ? "none of your recorded moves hits"
    : "none of yours hits";
  const answers = subject
    ? answersAll
      ? `${lead}you have an answer to ${subject}`
      : `${lead}${noneHits} ${subject} for 2×`
    : answersAll
      ? theirCount === 1
        ? `${lead}you have an answer to ${owner} Pokémon`
        : `${lead}you have an answer to each of ${owner} ${countWord(theirCount)} Pokémon`
      : answeredCount === 0
        ? `${lead}${noneHits} ${owner} Pokémon for 2×`
        : `${lead}you have an answer to ${answeredCount} of ${owner} ${theirCount} Pokémon`;
  const levelEdge: [string, boolean] | null = !isLevelFirst
    ? null
    : gap <= -2
      ? [
          `${isLegendary ? "it's" : "they're"} ${-gap} ${levelWord(-gap)} above your team`,
          false,
        ]
      : [
          `you're ${gap} ${levelWord(gap)} above ${isLegendary ? "it" : "them"}`,
          true,
        ];
  const exposure: [string, boolean] =
    exposedCount > 0
      ? [
          teamCount === 1
            ? "your Pokémon takes 2× or more"
            : exposedCount === teamCount
              ? `all ${countWord(teamCount)} of yours take 2× or more`
              : `${exposedCount} of your ${teamCount} take 2× or more`,
          false,
        ]
      : [
          isLegendary
            ? "it doesn't hit your team for 2×"
            : "nothing of theirs hits your team for 2×",
          true,
        ];
  const [first, second]: [string, boolean][] = levelEdge
    ? [levelEdge, [answers, answersAll]]
    : [[answers, answersAll], exposure];
  const sentence = `${first[0]}, ${first[1] === second[1] ? "and" : "but"} ${second[0]}.`;

  return sentence[0].toUpperCase() + sentence.slice(1);
};
