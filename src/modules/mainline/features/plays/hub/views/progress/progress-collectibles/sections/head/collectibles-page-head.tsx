import { PageHeader } from "@/shared/components/page-header";
import { SegmentedControl } from "@/shared/components/segmented-control";

import type { MainlinePlayCollectibleGroup } from "../../types";
import { getCollectibleGroupCounts } from "../../utils/collectibles-progress-model";

/*
 * The page head, as Pokédex's: the collectible's name, one line of progress
 * (how much is found and how many areas are complete), and a pill for each
 * collectible the game tracks when there is more than one.
 */
export const CollectiblesPageHead = ({
  areaCount,
  completeAreaCount,
  group,
  groups,
  onGroupChange,
  stateByEntryId,
}: {
  areaCount: number;
  completeAreaCount: number;
  group: MainlinePlayCollectibleGroup;
  groups: MainlinePlayCollectibleGroup[];
  onGroupChange: (groupId: number) => void;
  stateByEntryId: ReadonlyMap<number, boolean>;
}) => {
  const counts = getCollectibleGroupCounts({ group, stateByEntryId });

  return (
    <PageHeader
      headingLevel="h2"
      title={group.name}
      description={
        <>
          <b className="text-ink font-extrabold tabular-nums">
            {counts.percentage}%
          </b>{" "}
          found ·{" "}
          <span className="tabular-nums">
            {counts.collectedCount} of {counts.totalCount}
          </span>
          {areaCount > 1 ? (
            <>
              {" "}
              ·{" "}
              <span className="tabular-nums">
                {completeAreaCount} of {areaCount}
              </span>{" "}
              areas complete
            </>
          ) : null}
        </>
      }
      className="pt-0 sm:pt-0"
      action={
        groups.length > 1 ? (
          <SegmentedControl
            ariaLabel="Collectible"
            selectedTone="strong"
            className="no-scrollbar -mx-4 w-[calc(100%+2rem)] max-w-none flex-nowrap overflow-x-auto px-4 py-1.5 sm:mx-0 sm:ml-auto sm:w-auto sm:max-w-full sm:flex-wrap sm:overflow-visible sm:px-0 sm:py-0"
            onValueChange={(value) => onGroupChange(Number(value))}
            options={groups.map((candidate) => {
              const candidateCounts = getCollectibleGroupCounts({
                group: candidate,
                stateByEntryId,
              });

              return {
                count: `${candidateCounts.collectedCount}/${candidateCounts.totalCount}`,
                label: candidate.name,
                value: String(candidate.id),
              };
            })}
            value={String(group.id)}
          />
        ) : null
      }
    />
  );
};
