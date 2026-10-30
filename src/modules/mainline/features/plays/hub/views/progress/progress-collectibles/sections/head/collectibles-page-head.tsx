import { PageHeader } from "@/shared/components/page-header";
import { SegmentedControl } from "@/shared/components/segmented-control";

import type { MainlinePlayCollectibleGroup } from "../../types";
import { getCollectibleGroupCounts } from "../../utils/collectibles-progress-model";

/*
 * The page head, as Pokédex's: the collectible's name, one line of progress
 * (how much is found and how many areas are complete), what completing the
 * set rewards, and a pill for each collectible the game tracks when there is
 * more than one.
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
      note={
        group.reward ? (
          <>
            <b className="text-ink font-extrabold">Reward</b> · {group.reward}
          </>
        ) : null
      }
      className="pt-0 sm:pt-0"
      action={
        groups.length > 1 ? (
          <SegmentedControl
            ariaLabel="Collectible"
            selectedTone="strong"
            phoneScroll
            className="sm:ml-auto"
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
