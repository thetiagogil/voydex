import { PageHeader } from "@/shared/components/page-header";
import { SegmentedControl } from "@/shared/components/segmented-control";

import type { StoryScope } from "../../types";

const getPercent = (scope: StoryScope) =>
  scope.totalCount
    ? Math.round((scope.completedCount / scope.totalCount) * 100)
    : 0;

/*
 * The Story page head: one line of progress for the open scope, and a pill
 * for each scope when the game has DLC.
 */
export const StoryPageHead = ({
  onScopeChange,
  scope,
  scopes,
}: {
  onScopeChange: (scopeId: number) => void;
  scope: StoryScope;
  scopes: StoryScope[];
}) => {
  return (
    <PageHeader
      headingLevel="h2"
      title="Story"
      className="pt-0 sm:pt-0"
      description={
        <>
          <b className="text-ink font-extrabold tabular-nums">
            {getPercent(scope)}%
          </b>{" "}
          ·{" "}
          <span className="tabular-nums">
            {scope.completedCount} of {scope.totalCount}
          </span>{" "}
          milestones
        </>
      }
      action={
        scopes.length > 1 ? (
          <SegmentedControl
            ariaLabel="Story scope"
            selectedTone="strong"
            phoneScroll
            className="sm:ml-auto"
            onValueChange={(value) => onScopeChange(Number(value))}
            options={scopes.map((candidate) => ({
              count: `${candidate.completedCount}/${candidate.totalCount}`,
              label: candidate.label,
              value: String(candidate.id),
            }))}
            value={String(scope.id)}
          />
        ) : null
      }
    />
  );
};
