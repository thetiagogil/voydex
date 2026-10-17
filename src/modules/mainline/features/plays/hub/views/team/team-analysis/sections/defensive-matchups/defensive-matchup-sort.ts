import type { TeamAnalysisDefensiveRow } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";

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

const byTypeOrder = (
  left: TeamAnalysisDefensiveRow,
  right: TeamAnalysisDefensiveRow,
) => left.attackingType.sort_order - right.attackingType.sort_order;

export const getDefensiveResistTotal = (row: TeamAnalysisDefensiveRow) =>
  row.resistCount + row.immuneCount;

/* Ties keep the type chart's order. */
const compareRows: Record<
  DefensiveMatchupSort,
  (left: TeamAnalysisDefensiveRow, right: TeamAnalysisDefensiveRow) => number
> = {
  resist: (left, right) =>
    getDefensiveResistTotal(right) - getDefensiveResistTotal(left) ||
    byTypeOrder(left, right),
  type: byTypeOrder,
  weak: (left, right) =>
    right.weakCount - left.weakCount || byTypeOrder(left, right),
};

export const sortDefensiveMatchupRows = (
  rows: readonly TeamAnalysisDefensiveRow[],
  sort: DefensiveMatchupSort,
) => rows.toSorted(compareRows[sort]);
