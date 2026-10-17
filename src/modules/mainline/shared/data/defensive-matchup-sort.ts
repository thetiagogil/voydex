import type { TypeMatchupRow } from "./type-matchup-rows";

/* A row whose type knows its place in the type chart. */
type SortableRow = TypeMatchupRow<{
  name: string;
  slug: string;
  sort_order: number;
}>;

/* The type chart's order, or the most weak or most resisted first. */
export type DefensiveMatchupSort = "resist" | "type" | "weak";

export const defensiveMatchupSortOptions = [
  { label: "Type", value: "type" },
  { label: "Most weak", value: "weak" },
  { label: "Most resisted", value: "resist" },
] as const satisfies readonly {
  label: string;
  value: DefensiveMatchupSort;
}[];

const byTypeOrder = (left: SortableRow, right: SortableRow) =>
  left.attackingType.sort_order - right.attackingType.sort_order;

export const getDefensiveResistTotal = (
  row: Pick<TypeMatchupRow, "immuneCount" | "resistCount">,
) => row.resistCount + row.immuneCount;

/* Ties keep the type chart's order. */
const compareRows: Record<
  DefensiveMatchupSort,
  (left: SortableRow, right: SortableRow) => number
> = {
  resist: (left, right) =>
    getDefensiveResistTotal(right) - getDefensiveResistTotal(left) ||
    byTypeOrder(left, right),
  type: byTypeOrder,
  weak: (left, right) =>
    right.weakCount - left.weakCount || byTypeOrder(left, right),
};

export const sortDefensiveMatchupRows = <TRow extends SortableRow>(
  rows: readonly TRow[],
  sort: DefensiveMatchupSort,
) => rows.toSorted(compareRows[sort]);
