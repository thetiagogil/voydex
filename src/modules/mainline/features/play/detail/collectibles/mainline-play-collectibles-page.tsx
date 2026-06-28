import {
  MainlinePlayGenericPanel,
  MainlinePlaySimpleList,
} from "@/modules/mainline/features/play/detail/shared/components/mainline-play-generic-panel";
import { MainlinePlayShell } from "@/modules/mainline/features/play/detail/shared/components/mainline-play-shell";
import {
  formatNumber,
  formatPercent,
} from "@/modules/mainline/features/play/detail/shared/data/mainline-play-formatters";
import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import type { MainlinePlayCollectibleDetail } from "@/modules/mainline/shared/types/mainline.types";
import { StatusBadge } from "@/shared/components/status-badge";

type MainlinePlayCollectiblesPageProps = {
  data: MainlinePlayDetailData;
};

const getCollectibleKey = (
  entry: MainlinePlayCollectibleDetail,
  index: number,
) => {
  return `${entry.collectible_id ?? "collectible"}-${entry.collectible_entry_id ?? index}`;
};

const renderCollectible = (entry: MainlinePlayCollectibleDetail) => {
  return (
    <div className="flex items-start justify-between gap-3">
      <div className="min-w-0">
        <div className="font-medium">
          {entry.collectible_entry_name ??
            entry.collectible_name ??
            "Collectible"}
        </div>
        <div className="text-muted-foreground text-sm">
          {entry.collectible_name ?? "Group"} ·{" "}
          {entry.location_label ?? "Unknown location"}
        </div>
      </div>
      <StatusBadge tone={entry.is_collected ? "success" : "neutral"}>
        {entry.is_collected ? "Collected" : "Open"}
      </StatusBadge>
    </div>
  );
};

export const MainlinePlayCollectiblesPage = ({
  data,
}: MainlinePlayCollectiblesPageProps) => {
  const play = data.overview;

  return (
    <MainlinePlayShell
      activeProgressTab="collectibles"
      activeTab="progress"
      data={data}
    >
      <div className="grid gap-5">
        <MainlinePlayGenericPanel
          title="Collectibles"
          description="Read-only collectible progress while collection toggles are rebuilt."
          metrics={[
            {
              label: "Collected",
              value: formatNumber(play.collected_entry_count),
            },
            {
              label: "Required collected",
              value: formatNumber(
                play.collected_required_collectible_entry_count,
              ),
            },
            {
              label: "Required total",
              value: formatNumber(play.required_collectible_entry_count),
            },
            {
              label: "Completion",
              value: formatPercent(play.collectible_completion_percent),
            },
          ]}
        />

        <MainlinePlayGenericPanel
          title="Entries"
          description={`${formatNumber(
            data.collectibleEntries.length,
          )} seeded collectible entries are loaded for this play.`}
        >
          <MainlinePlaySimpleList
            emptyLabel="No collectible entries are available yet."
            getKey={getCollectibleKey}
            items={data.collectibleEntries.slice(0, 24)}
            renderItem={renderCollectible}
          />
        </MainlinePlayGenericPanel>
      </div>
    </MainlinePlayShell>
  );
};
