import {
  MainlinePlaySectionCard,
  MainlinePlaySectionList,
} from "@/modules/mainline/features/play/detail/shared/components/mainline-play-section-card";
import { MainlinePlayShell } from "@/modules/mainline/features/play/detail/shared/components/mainline-play-shell";
import {
  formatNumber,
  formatPercent,
} from "@/modules/mainline/features/play/detail/shared/display/play-detail-display";
import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import type { MainlinePlayMilestoneCategorySummary } from "@/modules/mainline/shared/types/mainline.types";

type MainlinePlayProgressPageProps = {
  data: MainlinePlayDetailData;
};

const getCategoryKey = (
  category: MainlinePlayMilestoneCategorySummary,
  index: number,
) => {
  return `${category.game_id ?? "game"}-${category.category_id ?? index}`;
};

const renderCategory = (category: MainlinePlayMilestoneCategorySummary) => {
  return (
    <div className="flex items-start justify-between gap-3">
      <div className="min-w-0">
        <div className="font-medium">
          {category.category_name ?? "Milestone category"}
        </div>
        <div className="text-muted-foreground text-sm">
          {category.game_name ?? category.version_group_name ?? "Shared scope"}
        </div>
      </div>
      <div className="text-muted-foreground shrink-0 text-sm">
        {formatNumber(category.completed_required_milestone_count)} /{" "}
        {formatNumber(category.required_milestone_count)}
      </div>
    </div>
  );
};

export const MainlinePlayProgressPage = ({
  data,
}: MainlinePlayProgressPageProps) => {
  const play = data.overview;

  return (
    <MainlinePlayShell
      activeProgressTab="summary"
      activeTab="progress"
      data={data}
    >
      <div className="grid gap-5">
        <MainlinePlaySectionCard
          title="Progress"
          description="Read-only completion summary while the detailed tracking surfaces are rebuilt."
          metrics={[
            {
              label: "Overall",
              value: formatPercent(play.overall_completion_percent),
            },
            {
              label: "Story",
              value: formatPercent(play.milestone_completion_percent),
            },
            {
              label: "Pokédex",
              value: formatPercent(play.pokedex_completion_percent),
            },
            {
              label: "Collectibles",
              value: formatPercent(play.collectible_completion_percent),
            },
            {
              label: "Completed units",
              value: `${formatNumber(
                play.completed_completion_unit_count,
              )} / ${formatNumber(play.total_completion_unit_count)}`,
            },
            {
              label: "Required milestones",
              value: `${formatNumber(
                play.completed_required_milestone_count,
              )} / ${formatNumber(play.required_milestone_count)}`,
            },
          ]}
        />

        <MainlinePlaySectionCard
          title="Milestone categories"
          description="Seeded category summaries for the selected play."
        >
          <MainlinePlaySectionList
            emptyLabel="No milestone categories are available yet."
            getKey={getCategoryKey}
            items={data.milestoneCategories}
            renderItem={renderCategory}
          />
        </MainlinePlaySectionCard>
      </div>
    </MainlinePlayShell>
  );
};
