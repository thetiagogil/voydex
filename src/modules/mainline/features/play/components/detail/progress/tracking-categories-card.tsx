import { BookOpen, Gem, ListChecks } from "lucide-react";

import { appRoutes } from "@/config/routes";
import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import { formatNumber } from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { CompactProgressRow } from "@/modules/mainline/features/play/components/detail/mainline-play-widgets";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";

type TrackingCategoriesCardProps = {
  overview: MainlinePlayDetailData["overview"];
  playId: string;
};

export const TrackingCategoriesCard = ({
  overview,
  playId,
}: TrackingCategoriesCardProps) => {
  return (
    <Card>
      <CardHeader>
        <CardTitle>Tracking Categories</CardTitle>
        <CardDescription>
          Open each category to update the detailed tracker.
        </CardDescription>
      </CardHeader>
      <CardContent className="flex flex-col gap-3">
        <CompactProgressRow
          actionLabel="Open Story"
          count={`${formatNumber(overview.completed_required_milestone_count)} / ${formatNumber(overview.required_milestone_count)} milestones`}
          href={appRoutes.mainlinePlayStory(playId)}
          icon={<BookOpen className="size-5" />}
          label="Story Progress"
          percent={overview.milestone_completion_percent}
        />
        <CompactProgressRow
          actionLabel="Open Pokedex"
          count={`${formatNumber(overview.caught_required_pokedex_species_count)} / ${formatNumber(overview.required_pokedex_species_count)} caught`}
          href={appRoutes.mainlinePlayPokedex(playId)}
          icon={<ListChecks className="size-5" />}
          label="Pokedex"
          percent={overview.pokedex_completion_percent}
        />
        <CompactProgressRow
          actionLabel="Open Collectibles"
          count={`${formatNumber(overview.collected_required_collectible_entry_count)} / ${formatNumber(overview.required_collectible_entry_count)} collected`}
          href={appRoutes.mainlinePlayCollectibles(playId)}
          icon={<Gem className="size-5" />}
          label="Collectibles"
          percent={overview.collectible_completion_percent}
        />
      </CardContent>
    </Card>
  );
};
