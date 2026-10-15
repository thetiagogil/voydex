import type { StatsModel } from "@/modules/mainline/features/stats/data/stats-model";
import { StatsHeroSection } from "@/modules/mainline/features/stats/sections/stats-hero-section";
import { StatsRegionsSection } from "@/modules/mainline/features/stats/sections/stats-regions-section";
import { StatsStyleSection } from "@/modules/mainline/features/stats/sections/stats-style-section";
import { StatsTimeSection } from "@/modules/mainline/features/stats/sections/stats-time-section";
import { formatWholeHours } from "@/modules/mainline/features/stats/utils/stats-format";
import { NewPlayTrigger } from "@/modules/mainline/features/plays/shared/components/new-play-trigger";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { PageBand } from "@/shared/components/page-band";
import { PageHeader } from "@/shared/components/page-header";
import { buttonVariants } from "@/shared/components/ui/button";
import { Card } from "@/shared/components/ui/card";

type MainlineStatsPageProps = {
  stats: StatsModel;
};

/*
 * A new account (no Play, or the first one): said plainly, with what fills
 * in as it records more.
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
    <div className="flex flex-col gap-5 sm:gap-6">
      <PageBand>
        <PageHeader title="Statistics" description="Your Plays, added up" />
      </PageBand>
      <Card className="gap-5 px-5 py-6 sm:px-8">
        <p className="font-display text-24 leading-tight font-semibold">
          {stats.playCount && firstPlayLabel ? (
            <>
              One Play so far: <b>{firstPlayLabel}</b>
              {firstRegion ? ` in ${firstRegion.name}` : null}.
            </>
          ) : (
            "Your statistics start with your first Play."
          )}
        </p>
        {stats.playCount ? (
          <dl className="grid grid-cols-2 gap-3 sm:max-w-2xl sm:grid-cols-4">
            {figures.map((figure) => (
              <div
                key={figure.label}
                className="bg-surface-2 flex flex-col-reverse gap-1 rounded-lg px-4 py-3"
              >
                <dt className="text-ink-2 text-13 font-bold">{figure.label}</dt>
                <dd className="font-display text-24 leading-none font-semibold tabular-nums">
                  {figure.value}
                </dd>
              </div>
            ))}
          </dl>
        ) : null}
        <p className="text-ink-2 text-15 max-w-2xl font-semibold">
          {stats.playCount
            ? "Where your time goes, the regions you've visited and the Pokémon that stay with you fill in as you record more."
            : "Start a Play and this page fills in as you record: time, regions and the Pokémon that stay with you."}
        </p>
        {stats.playCount ? null : (
          <NewPlayTrigger
            className={buttonVariants({ className: "self-start" })}
          >
            <AppIcon icon={appIcons.actions.create} inline="start" />
            Start a Play
          </NewPlayTrigger>
        )}
      </Card>
    </div>
  );
};

/*
 * Statistics (v3 `statistics`): your Plays added up. One sentence leads,
 * then where your time went, the regions you've travelled and your team
 * style. Every figure is read from what you recorded.
 */
export const MainlineStatsPage = ({ stats }: MainlineStatsPageProps) => {
  if (stats.playCount <= 1) {
    return <StatsStartingOut stats={stats} />;
  }

  return (
    <div className="flex flex-col gap-8 sm:gap-10">
      <StatsHeroSection stats={stats} />
      <StatsTimeSection stats={stats} />
      <StatsRegionsSection stats={stats} />
      <StatsStyleSection stats={stats} />
    </div>
  );
};
