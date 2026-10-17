import type { StatsModel } from "@/modules/mainline/features/stats/data/stats-model";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { SectionHead } from "@/shared/components/section-head";
import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

type StatsRegionsSectionProps = {
  stats: StatsModel;
};

/*
 * Regions you've travelled: every region, the ones you've played in shown
 * with the cover of your latest Play there, the rest as open slots.
 */
export const StatsRegionsSection = ({ stats }: StatsRegionsSectionProps) => {
  const visited = stats.regions.filter((region) => region.playLabels.length);

  return (
    <section aria-labelledby="stats-regions" className="flex flex-col gap-4">
      <SectionHead
        title="Regions you've travelled"
        titleId="stats-regions"
        aside={`${visited.length} of ${stats.regions.length}`}
      />
      <Card className="px-4 py-4 sm:px-6 sm:py-5">
        <ul className="grid grid-cols-3 gap-2.5 min-[480px]:grid-cols-4 sm:grid-cols-5 sm:gap-3 lg:grid-cols-10">
          {stats.regions.map((region) => {
            const count = region.playLabels.length;

            return (
              <li
                key={region.slug}
                title={
                  count
                    ? `${region.name} · ${region.playLabels.join(", ")}`
                    : `${region.name} · not visited yet`
                }
                className={cn(
                  "flex min-w-0 flex-col items-center gap-1.5 rounded-lg px-2 pt-3 pb-2.5 text-center",
                  count ? "bg-surface-2" : "empty-slot",
                )}
              >
                <span className="grid h-16 place-items-center">
                  {count && region.gameName ? (
                    <GameCover
                      alt=""
                      coverImageUrl={region.coverImageUrl}
                      gameName={region.gameName}
                      gameSlug={region.gameSlug ?? undefined}
                      className="text-16 h-16 w-auto max-w-14 rounded-xs"
                    />
                  ) : (
                    <span className="empty-slot size-11 rounded-full" />
                  )}
                </span>
                <b className="text-ink text-14 w-full truncate font-extrabold">
                  {region.name}
                </b>
                <span className="text-ink-2 text-12 font-bold">
                  {count
                    ? `${count} ${count === 1 ? "Play" : "Plays"}`
                    : "Not yet"}
                </span>
              </li>
            );
          })}
        </ul>
      </Card>
    </section>
  );
};
