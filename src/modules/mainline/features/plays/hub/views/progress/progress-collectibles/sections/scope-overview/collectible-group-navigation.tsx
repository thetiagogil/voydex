"use client";

import { Badge } from "@/shared/components/ui/badge";
import { NavigationMenuBar } from "@/shared/components/navigation-menu/navigation-menu-bar";
import { NavigationMenuControlTrigger } from "@/shared/components/navigation-menu/navigation-menu-control";
import { NavigationMenuOption } from "@/shared/components/navigation-menu/navigation-menu-option";
import { NavigationMenuOptionsPanel } from "@/shared/components/navigation-menu/navigation-menu-options-panel";
import { NavigationMenuItem } from "@/shared/components/ui/navigation-menu";
import { cn } from "@/shared/utils/cn";

import type { MainlinePlayCollectibleGroup } from "../../types";
import { getCollectibleGroupCounts } from "../../utils/collectibles-progress-model";

const GroupIdentity = ({
  group,
  showType,
}: {
  group: MainlinePlayCollectibleGroup;
  showType: boolean;
}) => {
  return (
    <span className="flex min-w-0 flex-wrap items-center gap-x-2 gap-y-1 text-left">
      <span className="text-primary truncate font-display text-lg leading-6 font-semibold">
        {group.name}
      </span>
      {showType ? (
        <Badge variant="outline" className="shrink-0">
          {group.typeName}
        </Badge>
      ) : null}
    </span>
  );
};

export const CollectibleGroupNavigation = ({
  group,
  groups,
  onGroupChange,
  stateByEntryId,
}: {
  group: MainlinePlayCollectibleGroup;
  groups: MainlinePlayCollectibleGroup[];
  onGroupChange: (groupId: number) => void;
  stateByEntryId: ReadonlyMap<number, boolean>;
}) => {
  if (groups.length <= 1) {
    return <GroupIdentity group={group} showType={false} />;
  }

  return (
    <NavigationMenuBar
      align="start"
      aria-label="Collectible group"
      className="min-w-0"
    >
      <NavigationMenuItem>
        <NavigationMenuControlTrigger className="h-auto max-w-full border-0 bg-transparent p-0 shadow-none hover:bg-transparent focus:bg-transparent focus-visible:bg-transparent data-open:bg-transparent data-open:hover:bg-transparent data-popup-open:bg-transparent data-popup-open:hover:bg-transparent">
          <GroupIdentity group={group} showType />
        </NavigationMenuControlTrigger>

        <NavigationMenuOptionsPanel className="w-88">
          {groups.map((candidate) => {
            const counts = getCollectibleGroupCounts({
              group: candidate,
              stateByEntryId,
            });

            return (
              <NavigationMenuOption
                key={candidate.id}
                active={candidate.id === group.id}
                accessibilityLabel={`View ${candidate.name}, ${counts.collectedCount} of ${counts.totalCount} collected`}
                className={cn(
                  "hover:bg-muted/50 focus:bg-muted/50 data-active:hover:bg-muted/50 data-active:focus:bg-muted/50 bg-transparent text-left data-active:bg-transparent",
                  candidate.id === group.id && "text-primary",
                )}
                description={`${counts.collectedCount} of ${counts.totalCount} collected`}
                onClick={() => onGroupChange(candidate.id)}
                render={<button type="button" />}
                title={candidate.name}
                titleAccessory={
                  <Badge
                    variant="outline"
                    className="px-1.5 py-0 text-[0.6875rem]"
                  >
                    {candidate.typeName}
                  </Badge>
                }
              />
            );
          })}
        </NavigationMenuOptionsPanel>
      </NavigationMenuItem>
    </NavigationMenuBar>
  );
};
