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

import {
  getMoveHitTypeSlug,
  isTypeEffectiveMove,
} from "@/modules/reference/features/moves/domain/move-hit-types";

/*
 * Your team as the battle math takes it, shared by Story's battle readings
 * (against one opponent's team) and Team analysis (against a Pokémon of each
 * type).
 */

/*
 * The type a damaging move hits with when this Pokémon uses it, varying power
 * included (Low Kick, Gyro Ball): Judgment and its kind take its type, Tera
 * Blast its Tera Type. Fixed-damage, reactive and status moves claim no type
 * coverage, and neither does Hidden Power, whose type isn't recorded.
 */
export const getDamagingMoveTypeSlug = (
  move: MainlinePlayTeamMove,
  user: Pick<
    MainlinePlayTeamMember,
    "primaryType" | "secondaryType" | "tera_type_slug"
  >,
) =>
  isTypeEffectiveMove({
    damageClass: move.attributes?.damage_class,
    slug: move.slug,
  })
    ? getMoveHitTypeSlug({
        moveTypeSlug: move.type?.slug ?? null,
        slug: move.slug,
        teraTypeSlug: user.tera_type_slug,
        userTypeSlugs: [
          user.primaryType?.slug,
          user.secondaryType?.slug,
        ].filter((slug): slug is string => Boolean(slug)),
      })
    : null;

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
 * Team health spreads the field across the whole team instead of always
 * sending your best answer: each Pokémon takes on at most its fair share of
 * the types (the types divided by your team, rounded up), and the types go to
 * whoever answers them cheapest within that limit (the cheapest assignment
 * overall). So one Pokémon that answers many types can't carry them all, and
 * every member's matchups count. Rows are the types, columns your Pokémon;
 * it returns what each type costs, in the same order. With one Pokémon there
 * is no one to share with, and it answers every type.
 */
export const getSharedAnswerCosts = (costRows: number[][]) => {
  const teamCount = Math.max(1, costRows[0]?.length ?? 0);
  const typeCount = costRows.length;

  /* Nobody to answer anything: every type costs the whole (empty) team. */
  if (!costRows[0]?.length) {
    return costRows.map(() => teamCount);
  }

  const capacity = Math.ceil(typeCount / teamCount);
  /* Each Pokémon as `capacity` seats, so a type takes one seat of whoever it goes to. */
  const seatCount = teamCount * capacity;
  const seatCost = (row: number, seat: number) =>
    Math.min(costRows[row][seat % teamCount], teamCount);

  /* The Hungarian method on the types against the seats, 1-indexed. */
  const rowPotential = new Array<number>(typeCount + 1).fill(0);
  const seatPotential = new Array<number>(seatCount + 1).fill(0);
  const rowOfSeat = new Array<number>(seatCount + 1).fill(0);
  const previousSeat = new Array<number>(seatCount + 1).fill(0);

  for (let row = 1; row <= typeCount; row += 1) {
    rowOfSeat[0] = row;
    let seat = 0;
    const slack = new Array<number>(seatCount + 1).fill(Infinity);
    const used = new Array<boolean>(seatCount + 1).fill(false);

    do {
      used[seat] = true;
      const currentRow = rowOfSeat[seat];
      let delta = Infinity;
      let nextSeat = 0;

      for (let candidate = 1; candidate <= seatCount; candidate += 1) {
        if (used[candidate]) continue;

        const reduced =
          seatCost(currentRow - 1, candidate - 1) -
          rowPotential[currentRow] -
          seatPotential[candidate];

        if (reduced < slack[candidate]) {
          slack[candidate] = reduced;
          previousSeat[candidate] = seat;
        }

        if (slack[candidate] < delta) {
          delta = slack[candidate];
          nextSeat = candidate;
        }
      }

      for (let candidate = 0; candidate <= seatCount; candidate += 1) {
        if (used[candidate]) {
          rowPotential[rowOfSeat[candidate]] += delta;
          seatPotential[candidate] -= delta;
        } else {
          slack[candidate] -= delta;
        }
      }

      seat = nextSeat;
    } while (rowOfSeat[seat] !== 0);

    do {
      const before = previousSeat[seat];

      rowOfSeat[seat] = rowOfSeat[before];
      seat = before;
    } while (seat);
  }

  const costs = new Array<number>(typeCount).fill(0);

  for (let seat = 1; seat <= seatCount; seat += 1) {
    if (rowOfSeat[seat]) {
      costs[rowOfSeat[seat] - 1] = seatCost(rowOfSeat[seat] - 1, seat - 1);
    }
  }

  return costs;
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
