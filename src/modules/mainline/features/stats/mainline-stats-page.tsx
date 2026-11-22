import { StatsBoard } from "@/modules/mainline/features/stats/components/stats-board";
import type { StatsModel } from "@/modules/mainline/shared/data/stats-model";
import { NewPlayTrigger } from "@/modules/mainline/features/plays/shared/components/new-play-trigger";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { EmptyState } from "@/shared/components/empty-state";
import { PageBand } from "@/shared/components/page-band";
import { PageHeader } from "@/shared/components/page-header";
import { buttonVariants } from "@/shared/components/ui/button";

type MainlineStatsPageProps = {
  stats: StatsModel;
};

const emptyArt = {
  name: "Porygon",
  url: getPokemonFormImageUrl({ name: "Porygon", slug: "porygon" }),
};

/* No Play yet: the same empty state as every other page of yours. */
const StatsEmpty = () => (
  <div className="flex flex-col gap-4 sm:gap-6">
    <PageBand>
      <PageHeader title="Statistics" description="Your Plays, added up" />
    </PageBand>
    <EmptyState
      headingLevel="h2"
      art={emptyArt}
      title="Your statistics start with your first Play"
      description="Start a Play and this page fills in as you record: time, regions and the Pokémon that stay with you."
      action={
        <NewPlayTrigger className={buttonVariants()}>
          <AppIcon icon={appIcons.actions.create} inline="start" />
          Start a Play
        </NewPlayTrigger>
      }
    />
  </div>
);

/*
 * Statistics (v3 `statistics`): your Plays added up, shown rather than
 * told (see `StatsBoard`), the whole page from the first Play on, however
 * small its numbers. Every figure is read from what you recorded. With no
 * Play at all there is nothing to add up yet, and the page says how to
 * start.
 */
export const MainlineStatsPage = ({ stats }: MainlineStatsPageProps) =>
  stats.playCount ? <StatsBoard stats={stats} /> : <StatsEmpty />;
