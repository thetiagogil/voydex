import { DetailSectionCard } from "@/shared/components/detail-section-card";
import type { TeamAnalysisCoverageRow } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";
import { TypeCoverageChip } from "@/modules/mainline/shared/components/type-coverage-chip";

export const TeamAnalysisMoveCoverageSection = ({
  rows,
}: {
  rows: TeamAnalysisCoverageRow[];
}) => {
  const coveredCount = rows.filter((row) => row.moveCount > 0).length;

  return (
    <DetailSectionCard
      title="Move coverage"
      headingLevel={3}
      aside={
        <>
          <b className="text-ink font-extrabold tabular-nums">
            {coveredCount} of {rows.length}
          </b>{" "}
          types hit super effectively
        </>
      }
      contentClassName="pt-2"
    >
      <ul aria-label="Move coverage by type" className="flex flex-wrap gap-2">
        {rows.map((row) => (
          <li key={row.defendingType.id}>
            <TypeCoverageChip
              type={row.defendingType}
              covered={row.moveCount > 0}
              count={row.moveCount}
              spoken={
                row.moveCount > 0
                  ? `${row.moveCount} recorded ${row.moveCount === 1 ? "move" : "moves"}`
                  : "no recorded move"
              }
            />
          </li>
        ))}
      </ul>
    </DetailSectionCard>
  );
};
