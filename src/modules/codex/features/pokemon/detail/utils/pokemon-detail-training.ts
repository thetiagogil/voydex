import type {
  GrowthRate,
  PokemonTrainingAttributes,
  VersionGroup,
} from "@/modules/reference/types";

type VersionGroupOrderRow = Pick<
  VersionGroup,
  "generation_id" | "id" | "parent_version_group_id" | "sort_order"
>;

/* An EV yield as "2 Sp. Atk": each stat the yield raises, with its points. */
export type PokemonDetailEvYield = { points: number; stat: string }[];

/* What the Training card reads for one form in one game. */
export type PokemonDetailTraining = {
  baseExperience: number;
  /* Null in Generation I, which has no friendship. */
  baseFriendship: number | null;
  catchRate: number;
  /* Null where the game counts no EV yields. */
  evYield: PokemonDetailEvYield | null;
  growthRate: { levelOneHundredExperience: number; name: string } | null;
};

const statNames: [keyof PokemonTrainingAttributes, string][] = [
  ["ev_hp", "HP"],
  ["ev_attack", "Attack"],
  ["ev_defense", "Defense"],
  ["ev_special_attack", "Sp. Atk"],
  ["ev_special_defense", "Sp. Def"],
  ["ev_speed", "Speed"],
];

/*
 * A base group's place in release order: its generation, then its own
 * order; an expansion stands where its base game does.
 */
const getReleaseOrder = (
  versionGroupId: number,
  versionGroups: readonly VersionGroupOrderRow[],
): [number, number] | null => {
  const group = versionGroups.find((row) => row.id === versionGroupId);

  if (!group) return null;

  const base =
    group.parent_version_group_id === null
      ? group
      : (versionGroups.find(
          (row) => row.id === group.parent_version_group_id,
        ) ?? group);

  return [base.generation_id, base.sort_order];
};

const isAtOrBefore = (left: [number, number], right: [number, number]) =>
  left[0] < right[0] || (left[0] === right[0] && left[1] <= right[1]);

/*
 * The training row a game reads for a form: the latest row whose start
 * group is at or before the game in release order. Null when the form has
 * no row by then (a form that arrives later).
 */
export const selectPokemonDetailTrainingRow = ({
  formId,
  rows,
  versionGroupId,
  versionGroups,
}: {
  formId: number;
  rows: readonly PokemonTrainingAttributes[];
  versionGroupId: number;
  versionGroups: readonly VersionGroupOrderRow[];
}): PokemonTrainingAttributes | null => {
  const game = getReleaseOrder(versionGroupId, versionGroups);

  if (!game) return null;

  return (
    rows
      .filter((row) => row.form_id === formId)
      .flatMap((row) => {
        const start = getReleaseOrder(
          row.version_group_start_id,
          versionGroups,
        );

        return start && isAtOrBefore(start, game) ? [{ row, start }] : [];
      })
      .toSorted(
        (left, right) =>
          right.start[0] - left.start[0] || right.start[1] - left.start[1],
      )[0]?.row ?? null
  );
};

/* The Training card's values from a row, with the growth rate named. */
export const toPokemonDetailTraining = (
  row: PokemonTrainingAttributes,
  growthRates: readonly GrowthRate[],
): PokemonDetailTraining => {
  const growthRate = growthRates.find((rate) => rate.id === row.growth_rate_id);
  const evYield =
    row.ev_hp === null
      ? null
      : statNames.flatMap(([column, stat]) => {
          const points = row[column];

          return typeof points === "number" && points > 0
            ? [{ points, stat }]
            : [];
        });

  return {
    baseExperience: row.base_experience,
    baseFriendship: row.base_friendship,
    catchRate: row.catch_rate,
    evYield,
    growthRate: growthRate
      ? {
          levelOneHundredExperience: growthRate.level_100_experience,
          name: growthRate.name,
        }
      : null,
  };
};

/* "2 Sp. Atk", "1 Attack, 1 Speed". */
export const formatEvYield = (evYield: PokemonDetailEvYield) =>
  evYield.map((part) => `${part.points} ${part.stat}`).join(", ");
