import type {
  StatsModel,
  StatsRegion,
} from "@/modules/mainline/shared/data/stats-model";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { SectionHead } from "@/shared/components/section-head";
import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";
import {
  TipBody,
  TipCard,
  TipHead,
  TipNote,
  TipRow,
  TipRows,
} from "@/shared/components/tip-parts";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";

type StatsRegionsSectionProps = {
  stats: StatsModel;
};

/* How many of a region's Plays its tip lists before "and N more". */
const regionTipPlays = 4;

/* A visited region's Plays, each with its game's cover. */
export const RegionTip = ({ region }: { region: StatsRegion }) => {
  const count = region.plays.length;
  const games = new Set(region.plays.map((play) => play.gameName)).size;

  return (
    <TipCard>
      <TipHead
        name={region.name}
        sub={`${count} ${count === 1 ? "Play" : "Plays"} in ${games} ${games === 1 ? "game" : "games"}`}
      />
      <TipBody>
        <TipRows>
          {region.plays.slice(0, regionTipPlays).map((play, index) => (
            <TipRow
              key={`${play.id}-${index}`}
              detail={play.gameName}
              leading={
                <span className="grid w-8 shrink-0 place-items-center">
                  <GameCover
                    alt=""
                    coverImageUrl={play.coverImageUrl}
                    gameName={play.gameName}
                    gameSlug={play.gameSlug ?? undefined}
                    className="text-12 h-8 w-auto max-w-8 rounded-xs"
                  />
                </span>
              }
              name={play.name}
            />
          ))}
        </TipRows>
        {count > regionTipPlays ? (
          <TipNote>and {count - regionTipPlays} more</TipNote>
        ) : null}
      </TipBody>
    </TipCard>
  );
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
      <Card>
        <ul className="grid grid-cols-3 gap-2 min-[480px]:grid-cols-4 sm:grid-cols-5 sm:gap-3 lg:grid-cols-10">
          {stats.regions.map((region) => {
            const count = region.playLabels.length;

            return (
              <Tooltip key={region.slug} disabled={!count}>
                <TooltipTrigger
                  render={
                    <li
                      className={cn(
                        "flex min-w-0 flex-col items-center gap-1.5 rounded-lg px-2 pt-3 pb-2.5 text-center",
                        count ? "bg-surface-2" : "empty-slot",
                      )}
                    />
                  }
                >
                  <span className="grid h-16 place-items-center">
                    {count && region.gameName ? (
                      <GameCover
                        alt=""
                        coverImageUrl={region.coverImageUrl}
                        gameName={region.gameName}
                        gameSlug={region.gameSlug ?? undefined}
                        className="text-15 h-16 w-auto max-w-14 rounded-xs"
                      />
                    ) : (
                      <span className="empty-slot size-11 rounded-full" />
                    )}
                  </span>
                  <b className="text-ink copy-strong w-full truncate">
                    {region.name}
                  </b>
                  <span className="text-ink-2 copy-mark">
                    {count
                      ? `${count} ${count === 1 ? "Play" : "Plays"}`
                      : "Not yet"}
                  </span>
                </TooltipTrigger>
                {/* An open slot already says "Not yet": only a visited region has more to show. */}
                {count ? (
                  <TooltipContent variant="card">
                    <RegionTip region={region} />
                  </TooltipContent>
                ) : null}
              </Tooltip>
            );
          })}
        </ul>
      </Card>
    </section>
  );
};
