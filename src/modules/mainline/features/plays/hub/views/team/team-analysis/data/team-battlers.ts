import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamMove,
} from "@/modules/mainline/features/plays/hub/types";
import {
  getTypeDamageClass,
  getTypicalPower,
  isFixedDamageMove,
  type BaseStats,
  type BattleAttack,
  type Battler,
} from "@/modules/reference/features/pokemon/domain/battle-math";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import type { Type } from "@/modules/reference/types";

import { getDamagingMoveTypeSlug } from "./team-analysis-rows";

/*
 * Your team as the battle math takes it, shared by both readings of Team
 * analysis: Story matchups (against one opponent's team) and Overall
 * (against a Pokémon of each type).
 */

export const toTypeSlugs = (types: Type[]) =>
  types.flatMap((type): PokemonTypeSlug[] =>
    isPokemonTypeSlug(type.slug) ? [type.slug] : [],
  );

/* Stats for a Pokémon without them in Voydex: middling all round. */
export const middlingStats: BaseStats = {
  attack: 75,
  defense: 75,
  hp: 75,
  specialAttack: 75,
  specialDefense: 75,
  speed: 75,
};

/* A Pokémon read by its types hits with a move of each at a power usual for its level. */
export const toTypeAttacks = (
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

/* A set-damage move (Seismic Toss, Night Shade): no type coverage, but it still hurts. */
const isSetDamageMove = (move: MainlinePlayTeamMove) => {
  const damageClass = move.attributes?.damage_class;

  return (
    (damageClass === "physical" || damageClass === "special") &&
    isFixedDamageMove(move.slug)
  );
};

/* Whether it has a recorded move the battle math hits with, set-damage ones included. */
export const hasRecordedDamagingMove = (member: MainlinePlayTeamMember) =>
  member.moves.some(
    (move) => getDamagingMoveTypeSlug(move, member) || isSetDamageMove(move),
  );

/*
 * One of yours as the battle math takes it: its recorded damaging moves, or
 * its types without them, at its level or, while that isn't recorded, at
 * the level given.
 */
export const toYourBattler = (
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
    const damageClass = move.attributes?.damage_class;
    const typeSlug =
      getDamagingMoveTypeSlug(move, member) ??
      (isSetDamageMove(move) ? (move.type?.slug ?? null) : null);

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
    /* Tera Blast hits as its Tera Type, with the same-type bonus. */
    stabTypes:
      member.tera_type_slug && isPokemonTypeSlug(member.tera_type_slug)
        ? [...typeSlugs, member.tera_type_slug]
        : typeSlugs,
    types: typeSlugs,
  };
};

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
 * fights it. One you can't beat costs your whole team, never more.
 */
export const getAnswerCost = (costs: number[]) => {
  const teamCount = Math.max(1, costs.length);
  const [best = teamCount, second = best] = costs
    .map((cost) => Math.min(cost, teamCount))
    .sort((left, right) => left - right);

  return BEST_ANSWER_WEIGHT * best + (1 - BEST_ANSWER_WEIGHT) * second;
};

/*
 * What a battle costs your team: what beating each of theirs costs you,
 * added up and shared across your team, as a share of its HP.
 */
export const getBattleShare = ({
  answerCosts,
  teamCount,
}: {
  answerCosts: number[];
  teamCount: number;
}) => answerCosts.reduce((sum, cost) => sum + cost, 0) / Math.max(1, teamCount);
