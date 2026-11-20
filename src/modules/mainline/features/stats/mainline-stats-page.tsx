import { StatsBoard } from "@/modules/mainline/features/stats/components/stats-board";
import type { StatsModel } from "@/modules/mainline/shared/data/stats-model";
import { formatWholeHours } from "@/modules/mainline/shared/utils/stats-format";
import { NewPlayTrigger } from "@/modules/mainline/features/plays/shared/components/new-play-trigger";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { EmptyState } from "@/shared/components/empty-state";
import { PageBand } from "@/shared/components/page-band";
import { PageHeader } from "@/shared/components/page-header";
import { buttonVariants } from "@/shared/components/ui/button";
import { Card } from "@/shared/components/ui/card";

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
 * The first Play: said plainly, with what fills in as it records more.
 */
const StatsStartingOut = ({ stats }: MainlineStatsPageProps) => {
  const firstRegion = stats.regions.find((region) => region.playLabels.length);
  const firstPlayLabel = stats.playLabels[0];
  const regionCount = stats.regions.filter(
    (region) => region.playLabels.length,
  ).length;
  const figures = [
    { label: "Play", value: "1" },
    { label: "Pokémon met", value: String(stats.speciesCount) },
    {
      label: regionCount === 1 ? "region" : "regions",
      value: String(regionCount),
    },
    { label: "recorded", value: formatWholeHours(stats.minutes) },
  ];

  return (
    <div className="flex flex-col gap-4 sm:gap-6">
      <PageBand>
        <PageHeader title="Statistics" description="Your Plays, added up" />
      </PageBand>
      <Card className="gap-4">
        <p className="font-display text-24 leading-tight font-semibold">
          {firstPlayLabel ? (
            <>
              One Play so far: <b>{firstPlayLabel}</b>
              {firstRegion ? ` in ${firstRegion.name}` : null}.
            </>
          ) : (
            "One Play so far."
          )}
        </p>
        <dl className="grid grid-cols-2 gap-3 sm:max-w-2xl sm:grid-cols-4">
          {figures.map((figure) => (
            <div
              key={figure.label}
              className="tile flex flex-col-reverse gap-1"
            >
              <dt className="text-ink-2 copy-label">{figure.label}</dt>
              <dd className="font-display text-24 leading-none font-semibold tabular-nums">
                {figure.value}
              </dd>
            </div>
          ))}
        </dl>
        <p className="text-ink-2 copy-body max-w-2xl">
          Where your time goes, the regions you&apos;ve visited and the Pokémon
          that stay with you fill in as you record more.
        </p>
      </Card>
    </div>
  );
};

/*
 * Statistics (v3 `statistics`): your Plays added up, shown rather than
 * told (see `StatsBoard`). Every figure is read from what you recorded.
 */
export const MainlineStatsPage = ({ stats }: MainlineStatsPageProps) => {
  if (!stats.playCount) return <StatsEmpty />;

  if (stats.playCount === 1) {
    return <StatsStartingOut stats={stats} />;
  }

  return <StatsBoard stats={stats} />;
};
