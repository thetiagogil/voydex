"use client";

import { useMemo, useState } from "react";
import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import { CollectibleDetail } from "@/modules/mainline/features/play/components/detail/collectibles/collectible-detail";
import { CollectibleGroupList } from "@/modules/mainline/features/play/components/detail/collectibles/collectible-group-list";
import { buildCollectibleGroups } from "@/modules/mainline/features/play/components/detail/collectibles/collectible-groups";
import { formatNumber } from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { MainlinePlayShell } from "@/modules/mainline/features/play/components/detail/mainline-play-shell";
import { EmptyPanel } from "@/modules/mainline/features/play/components/detail/mainline-play-widgets";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

type MainlinePlayCollectiblesPageProps = {
  data: MainlinePlayDetailData;
};

export const MainlinePlayCollectiblesPage = ({
  data,
}: MainlinePlayCollectiblesPageProps) => {
  const playId = String(data.overview.play_id);
  const groups = useMemo(
    () => buildCollectibleGroups(data.collectibleEntries),
    [data.collectibleEntries],
  );
  const [selectedGroupId, setSelectedGroupId] = useState(groups[0]?.id ?? 0);

  const selectedGroup =
    groups.find((group) => group.id === selectedGroupId) ?? groups[0] ?? null;
  const totalCollected = groups.reduce(
    (total, group) => total + group.collectedCount,
    0,
  );
  const totalEntries = groups.reduce(
    (total, group) => total + group.totalCount,
    0,
  );
  return (
    <MainlinePlayShell
      activeProgressTab="collectibles"
      activeTab="progress"
      data={data}
    >
      <div className="flex flex-col gap-5">
        <div className="flex flex-col gap-3 lg:flex-row lg:items-center lg:justify-between">
          <div className="flex items-center gap-4">
            <div className="bg-primary/10 text-primary flex size-14 items-center justify-center rounded-xl">
              <AppIcon
                icon={appIcons.views.mainline.collectibles}
                className="size-7"
              />
            </div>
            <div>
              <h2 className="text-2xl font-semibold tracking-normal">
                Collectibles
              </h2>
              <p className="text-muted-foreground text-sm">
                {formatNumber(totalCollected)} / {formatNumber(totalEntries)}{" "}
                collected across {formatNumber(groups.length)} groups.
              </p>
            </div>
          </div>
        </div>

        {selectedGroup ? (
          <div className="grid gap-4 xl:grid-cols-[20rem_minmax(0,1fr)]">
            <CollectibleGroupList
              groups={groups}
              selectedGroupId={selectedGroup.id}
              onSelectGroup={setSelectedGroupId}
            />
            <CollectibleDetail group={selectedGroup} playId={playId} />
          </div>
        ) : (
          <EmptyPanel
            title="No collectibles seeded for this play"
            description="Collectible groups will appear here when this game has tracked collectibles enabled."
          />
        )}
      </div>
    </MainlinePlayShell>
  );
};
