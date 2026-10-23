import type {
  MainlinePlayLevelCap,
  MainlinePlayTeamMember,
} from "@/modules/mainline/features/plays/hub/types";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
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
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import type { Type } from "@/modules/reference/types";

import {
  getAnswerCost,
  getBattleShare,
  hasRecordedDamagingMove,
  middlingStats,
  toYourBattler,
} from "./team-battlers";

/*
 * Where the field's levels come from: the team of the next leader battle in
 * Story (Level caps' battle), your own top level once none is ahead, or a
 * default while neither is known.
 */
export type TeamFieldBenchmark = {
  kind: "battle" | "default" | "team";
  /* The highest of `levels`: that battle's ace. */
  level: number;
  /* One per Pokémon the field brings, at its level. */
  levels: number[];
  /* The leader whose team it is ("Brock"); null unless `kind` is "battle". */
  name: string | null;
};

/* Your team against a Pokémon of one type at the field's levels. */
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
  benchmark: TeamFieldBenchmark;
  /* Your top recorded level minus the battle's ace, when both are known. */
  levelGap: number | null;
  /* How many of yours lack a recorded level or damaging move, which makes the reading rough. */
  unrecorded: { levels: number; moves: number };
  /* What beating the field costs your team, as a share of its HP. */
  share: number;
  /* In the generation's type order. */
  types: TeamFieldTypeReading[];
};

/* The level the field reads at while neither a battle nor your team gives one. */
const DEFAULT_FIELD_LEVEL = 50;

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
  (generationOrder <= 3
    ? [getTypeDamageClass(typeSlug, generationOrder, baseStats)]
    : (["physical", "special"] as const)
  ).map(
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

const getBenchmark = ({
  levelCap,
  members,
}: {
  levelCap: MainlinePlayLevelCap | null;
  members: MainlinePlayTeamMember[];
}): TeamFieldBenchmark => {
  const recorded = members.flatMap((member) =>
    member.level ? [member.level] : [],
  );

  if (levelCap?.status === "capped") {
    return {
      kind: "battle",
      level: levelCap.level,
      levels: levelCap.teamLevels.length
        ? levelCap.teamLevels
        : [levelCap.level],
      name: levelCap.battle.name,
    };
  }

  const level = recorded.length ? Math.max(...recorded) : DEFAULT_FIELD_LEVEL;

  return {
    kind: recorded.length ? "team" : "default",
    level,
    levels: members.map(() => level),
    name: null,
  };
};

const mean = (values: number[]) =>
  values.length
    ? values.reduce((sum, value) => sum + value, 0) / values.length
    : 0;

/*
 * Reads your active team against the game's field rather than one
 * opponent: a Pokémon of every type the generation has, as strong as yours
 * on average, at each level the next leader battle in Story brings. Each of
 * yours meets each of them one on one with the games' damage formula, as
 * Story matchups does, so level weighs first, then how many each side has,
 * then types. Yours without a recorded level read at the battle's ace's
 * level, and without recorded damaging moves, by type.
 */
export const readTeamField = ({
  generationOrder,
  levelCap,
  members,
  types,
}: {
  generationOrder: number;
  levelCap: MainlinePlayLevelCap | null;
  members: MainlinePlayTeamMember[];
  types: Type[];
}): TeamFieldReading => {
  const benchmark = getBenchmark({ levelCap, members });
  const teamCount = Math.max(1, members.length);
  const typeBySlug = new Map(types.map((type) => [type.slug, type]));
  const yours = members.map((member) =>
    toYourBattler(member, generationOrder, benchmark.level),
  );
  const names = members.map(getPlayTeamMemberName);
  const fieldStats = getFieldStats(members);
  /* Per type, what the field's Pokémon at each of its levels costs the average player. */
  const answerCostsByLevel: number[][] = [];

  const typeReadings = getPokemonTypesForGeneration(generationOrder).flatMap(
    (slug): TeamFieldTypeReading[] => {
      const type = typeBySlug.get(slug);

      if (!type) {
        return [];
      }

      /* Yours by row, the field's levels by column, its physical and special ones averaged. */
      const duels = yours.map((your) =>
        benchmark.levels.map((level) => {
          const field = toFieldBattlers(
            slug,
            level,
            fieldStats,
            generationOrder,
          ).map((their) => getDuel({ generationOrder, their, your }));

          return {
            cost: mean(field.map((duel) => Math.min(duel.cost, teamCount))),
            /* Both share stats and type, so they take the same hit. */
            yourShare: field[0]?.yourShare ?? 0,
          };
        }),
      );
      const levelAnswerCosts = benchmark.levels.map((_, column) =>
        getAnswerCost(duels.map((row) => row[column].cost)),
      );
      const costs = duels.map((row) => mean(row.map((duel) => duel.cost)));

      answerCostsByLevel.push(levelAnswerCosts);

      return [
        {
          answerCost: mean(levelAnswerCosts),
          beats: names.filter(
            (_, index) =>
              costs[index] >= 1 &&
              yours[index].types.length > 0 &&
              getDefensiveTypeMultiplier(
                slug,
                yours[index].types,
                generationOrder,
              ) >= 2,
          ),
          hitsToKnockOut: Math.min(
            Infinity,
            ...duels.map((row) => {
              const share = mean(row.map((duel) => duel.yourShare));

              return share > 0 ? Math.ceil(1 / share) : Infinity;
            }),
          ),
          type,
        },
      ];
    },
  );

  const topLevel = Math.max(0, ...members.map((member) => member.level ?? 0));

  return {
    benchmark,
    levelGap:
      benchmark.kind === "battle" && topLevel > 0
        ? topLevel - benchmark.level
        : null,
    unrecorded: {
      levels: members.filter((member) => !member.level).length,
      moves: members.filter((member) => !hasRecordedDamagingMove(member))
        .length,
    },
    /* Each Pokémon the field brings reads as its level's average type, against your team. */
    share: getBattleShare({
      answerCosts: benchmark.levels.map((_, column) =>
        mean(answerCostsByLevel.map((row) => row[column])),
      ),
      teamCount,
    }),
    types: typeReadings,
  };
};
