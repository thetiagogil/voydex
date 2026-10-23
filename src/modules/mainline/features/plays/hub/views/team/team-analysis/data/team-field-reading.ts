import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import {
  getDuel,
  getTypeDamageClasses,
  getTypicalPower,
  type BaseStats,
  type BattleAttack,
  type Battler,
} from "@/modules/reference/features/pokemon/domain/battle-math";
import {
  getDefensiveTypeMultiplier,
  getPokemonTypesForGeneration,
} from "@/modules/reference/features/pokemon/domain/type-effectiveness";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import type { Type } from "@/modules/reference/types";

import {
  getAnswerCost,
  getBattleShare,
  hasRecordedDamagingMove,
  middlingStats,
  toYourBattler,
} from "./team-battlers";

/* Your team against a Pokémon of one type at the field's level. */
export type TeamFieldTypeReading = {
  /*
   * What beating one costs the average player, as a share of one Pokémon's
   * HP: your best answer mixed with your second best.
   */
  answerCost: number;
  /* Yours it hits super effectively and beats one on one: they'd faint before knocking it out. */
  beats: string[];
  /* The fewest hits any of yours needs to knock it out; Infinity when none hurts it. */
  hitsToKnockOut: number;
  type: Type;
};

export type TeamFieldReading = {
  /* Yours 5 or more levels below the field, with their level: they pull the team down. */
  lagging: { level: number; name: string }[];
  /* Your top recorded level, or Lv. 50 while none is recorded. */
  level: number;
  /* How many Pokémon the field brings: a full team. */
  theirCount: number;
  /* How many of yours lack a recorded level or damaging move, which makes the reading rough. */
  unrecorded: { levels: number; moves: number };
  /* What beating the field costs your team, as a share of its HP. */
  share: number;
  /* In the generation's type order. */
  types: TeamFieldTypeReading[];
};

/* The level the field reads at while none of yours has one recorded. */
const DEFAULT_FIELD_LEVEL = 50;

/* The field brings a full team. */
const FIELD_SIZE = 6;

/* How far below the field one of yours may be before it counts as lagging. */
const LAGGING_LEVELS = 5;

/*
 * The field's Pokémon of one type at a level: your team's average base
 * stats, hitting with a move of its type at a power usual for that level.
 * From Gen 4 it comes twice, once hitting physically and once specially,
 * since the games' Pokémon of a type do both; before, a type's moves have
 * one category.
 */
const toFieldBattlers = (
  typeSlug: PokemonTypeSlug,
  level: number,
  baseStats: BaseStats,
  generationOrder: number,
): Battler[] =>
  getTypeDamageClasses(typeSlug, generationOrder, baseStats).map(
    (damageClass): Battler => ({
      attacks: [
        {
          accuracy: 100,
          damageClass,
          power: getTypicalPower(level),
          slug: null,
          typeSlug,
        } satisfies BattleAttack,
      ],
      baseStats,
      level,
      stabTypes: [typeSlug],
      types: [typeSlug],
    }),
  );

/*
 * The field's stats: your team's average, so it is as strong as yours and
 * level, numbers and types decide; middling ones while none is recorded.
 */
const getFieldStats = (members: MainlinePlayTeamMember[]): BaseStats => {
  const recorded = members.flatMap((member) =>
    member.baseStats ? [member.baseStats] : [],
  );

  if (!recorded.length) {
    return middlingStats;
  }

  const mean = (stat: keyof BaseStats) =>
    Math.round(
      recorded.reduce((sum, stats) => sum + stats[stat], 0) / recorded.length,
    );

  return {
    attack: mean("attack"),
    defense: mean("defense"),
    hp: mean("hp"),
    specialAttack: mean("specialAttack"),
    specialDefense: mean("specialDefense"),
    speed: mean("speed"),
  };
};

const mean = (values: number[]) =>
  values.length
    ? values.reduce((sum, value) => sum + value, 0) / values.length
    : 0;

/*
 * A general check of your active team, not tied to a game's battles: it
 * meets a full team of six, a Pokémon of every type the generation has, as
 * strong as yours on average and at your top level. Each of yours meets
 * each of them one on one with the games' damage formula, as Story matchups
 * does, so level weighs first (yours below your top level pull it down),
 * then how many each side has, then types. Yours without a recorded level
 * read at the field's level, and without recorded damaging moves, by type.
 */
export const readTeamField = ({
  generationOrder,
  members,
  types,
}: {
  generationOrder: number;
  members: MainlinePlayTeamMember[];
  types: Type[];
}): TeamFieldReading => {
  const recordedLevels = members.flatMap((member) =>
    member.level ? [member.level] : [],
  );
  const level = recordedLevels.length
    ? Math.max(...recordedLevels)
    : DEFAULT_FIELD_LEVEL;
  const teamCount = Math.max(1, members.length);
  const typeBySlug = new Map(types.map((type) => [type.slug, type]));
  const yours = members.map((member) =>
    toYourBattler(member, generationOrder, level),
  );
  const names = members.map(getPlayTeamMemberName);
  const fieldStats = getFieldStats(members);

  const typeReadings = getPokemonTypesForGeneration(generationOrder).flatMap(
    (slug): TeamFieldTypeReading[] => {
      const type = typeBySlug.get(slug);

      if (!type) {
        return [];
      }

      const field = toFieldBattlers(slug, level, fieldStats, generationOrder);
      /* Yours by row, the field's physical and special ones averaged. */
      const duels = yours.map((your) => {
        const row = field.map((their) =>
          getDuel({ generationOrder, their, your }),
        );

        return {
          cost: mean(row.map((duel) => Math.min(duel.cost, teamCount))),
          /* Both share stats and type, so they take the same hit. */
          yourShare: row[0]?.yourShare ?? 0,
        };
      });

      return [
        {
          answerCost: getAnswerCost(duels.map((duel) => duel.cost)),
          beats: names.filter(
            (_, index) =>
              duels[index].cost >= 1 &&
              yours[index].types.length > 0 &&
              getDefensiveTypeMultiplier(
                slug,
                yours[index].types,
                generationOrder,
              ) >= 2,
          ),
          hitsToKnockOut: Math.min(
            Infinity,
            ...duels.map((duel) =>
              duel.yourShare > 0 ? Math.ceil(1 / duel.yourShare) : Infinity,
            ),
          ),
          type,
        },
      ];
    },
  );
  /* What one of the field costs: its types on average. */
  const fieldAnswerCost = mean(
    typeReadings.map((reading) => reading.answerCost),
  );

  return {
    lagging: members.flatMap((member, index) =>
      member.level && member.level <= level - LAGGING_LEVELS
        ? [{ level: member.level, name: names[index] }]
        : [],
    ),
    level,
    share: getBattleShare({
      answerCosts: Array.from({ length: FIELD_SIZE }, () => fieldAnswerCost),
      teamCount,
    }),
    theirCount: FIELD_SIZE,
    types: typeReadings,
    unrecorded: {
      levels: members.filter((member) => !member.level).length,
      moves: members.filter((member) => !hasRecordedDamagingMove(member))
        .length,
    },
  };
};
