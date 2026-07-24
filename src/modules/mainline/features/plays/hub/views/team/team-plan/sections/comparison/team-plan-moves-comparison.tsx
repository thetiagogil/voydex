import {
  comparisonFieldGridClassName,
  TeamPlanComparisonFieldHeader,
  TeamPlanComparisonResult,
} from "@/modules/mainline/features/plays/hub/views/team/team-plan/sections/comparison/team-plan-comparison-field";
import type {
  MainlinePlayTeamPlanMemberComparison,
  MainlinePlayTeamPlanMoveComparison,
} from "@/modules/mainline/features/plays/hub/types";
import { cn } from "@/shared/utils/cn";

const getMoveExplanation = (
  row: MainlinePlayTeamPlanMoveComparison,
  position: number,
) => {
  const label = `Move ${position}`;

  if (row.matches === null) {
    return `${label} is not specified by the Plan and does not affect the comparison.`;
  }

  if (row.matches) {
    return `${label} matches the Plan, even if it is recorded in another move slot.`;
  }

  if (!row.actual) {
    return `${row.planned?.name ?? label} is planned but is not recorded in this Play.`;
  }

  return `${row.actual.name} differs from the planned ${row.planned?.name ?? "move"}.`;
};

const MoveComparisonRow = ({
  position,
  row,
}: {
  position: number;
  row: MainlinePlayTeamPlanMoveComparison;
}) => {
  const description = getMoveExplanation(row, position);

  return (
    <div
      className={cn(
        "border-app-surface-border/50 grid items-start gap-2 border-t py-2",
        comparisonFieldGridClassName,
      )}
    >
      <dt className="text-muted-foreground text-[0.6875rem] font-medium uppercase">
        Move {position}
      </dt>
      <dd className="text-foreground min-w-0 text-center text-xs leading-5">
        {row.planned?.name ?? "Any"}
      </dd>
      <dd className="flex justify-center pt-0.5">
        <TeamPlanComparisonResult
          description={description}
          matches={row.matches}
        />
      </dd>
      <dd className="text-foreground min-w-0 text-center text-xs leading-5">
        {row.actual?.name ?? "Not recorded"}
      </dd>
    </div>
  );
};

export const TeamPlanMovesComparison = ({
  comparison,
  idPrefix,
}: {
  comparison: MainlinePlayTeamPlanMemberComparison;
  idPrefix: string;
}) => {
  return (
    <section
      className="grid gap-1"
      aria-labelledby={`${idPrefix}-moves-comparison`}
    >
      <h3
        id={`${idPrefix}-moves-comparison`}
        className="text-primary font-serif text-sm font-semibold"
      >
        Moves comparison
      </h3>
      {comparison.moves.length ? (
        <>
          <TeamPlanComparisonFieldHeader />
          <dl>
            {comparison.moves.map((row, index) => (
              <MoveComparisonRow
                key={`${row.planned?.id ?? "any"}-${row.actual?.id ?? "missing"}-${index}`}
                position={index + 1}
                row={row}
              />
            ))}
          </dl>
        </>
      ) : (
        <p className="text-muted-foreground py-2 text-xs leading-5">
          No moves are specified in the Plan or recorded in this Play.
        </p>
      )}
    </section>
  );
};
