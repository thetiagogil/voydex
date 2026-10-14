import { PageHeader } from "@/shared/components/page-header";
import { SegmentedControl } from "@/shared/components/segmented-control";

import type { MainlinePlayCollectibleGroup } from "../../types";
import { getCollectibleGroupCounts } from "../../utils/collectibles-progress-model";

/*
 * The page head: "Collectibles", one sentence for where they hide, and a pill
 * for each collectible the game tracks when there is more than one.
 */
export const CollectiblesPageHead = ({
  group,
  groups,
  onGroupChange,
  stateByEntryId,
  whereabouts,
}: {
  group: MainlinePlayCollectibleGroup;
  groups: MainlinePlayCollectibleGroup[];
  onGroupChange: (groupId: number) => void;
  stateByEntryId: ReadonlyMap<number, boolean>;
  whereabouts: string;
}) => {
  return (
    <PageHeader
      headingLevel="h2"
      title="Collectibles"
      description={whereabouts}
      className="pt-0 sm:pt-0"
      action={
        groups.length > 1 ? (
          <SegmentedControl
            ariaLabel="Collectible"
            selectedTone="strong"
            className="no-scrollbar -mx-4 w-[calc(100%+2rem)] max-w-none flex-nowrap overflow-x-auto px-4 py-1.5 sm:mx-0 sm:ml-auto sm:w-auto sm:max-w-full sm:flex-wrap sm:overflow-visible sm:px-0 sm:py-0"
            onValueChange={(value) => onGroupChange(Number(value))}
            options={groups.map((candidate) => {
              const counts = getCollectibleGroupCounts({
                group: candidate,
                stateByEntryId,
              });

              return {
                count: `${counts.collectedCount}/${counts.totalCount}`,
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
