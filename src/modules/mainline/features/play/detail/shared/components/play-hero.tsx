import Link from "next/link";
import { appRoutes } from "@/config/routes";
import { GameCoverArt } from "@/modules/codex/shared/components/game-cover-art";
import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import {
  formatDate,
  formatNumber,
  formatPercent,
  formatPlaytime,
  getActiveTeam,
  getPlayTitle,
  getReserveTeam,
} from "@/modules/mainline/features/play/detail/shared/data/mainline-play-formatters";
import { PlayQuickActions } from "@/modules/mainline/features/play/detail/shared/components/play-quick-actions";
import { ProgressMeter } from "@/shared/components/progress-meter";
import { StatusBadge } from "@/shared/components/status-badge";
import { Button } from "@/shared/components/ui/button";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

type PlayHeroProps = {
  data: MainlinePlayDetailData;
};

export const PlayHero = ({ data }: PlayHeroProps) => {
  const play = data.overview;
  const playId = String(play.play_id);
  const title = getPlayTitle(play);
  const activeTeamCount = getActiveTeam(data.team).length;
  const reserveTeamCount = getReserveTeam(data.team).length;
  const overallCompletion = play.overall_completion_percent ?? 0;
  return (
    <section className="ring-app-surface-border bg-card/78 rounded-xl p-4 ring-1 backdrop-blur-md sm:p-5">
      <div className="grid gap-5 xl:grid-cols-[auto_minmax(0,1fr)_18rem] xl:items-center">
        <GameCoverArt
          imageUrl={data.gameCoverImageUrl}
          name={play.game_name ?? title}
          className="aspect-4/3 w-full max-w-48 shrink-0 sm:w-44"
        />

        <div className="flex min-w-0 flex-col gap-4">
          <div className="flex flex-col gap-2">
            <h1 className="text-3xl font-semibold tracking-normal">{title}</h1>

            <div className="flex flex-wrap items-center gap-2 text-sm">
              {play.status_name ? (
                <StatusBadge tone="neutral">{play.status_name}</StatusBadge>
              ) : null}
              <span className="text-muted-foreground">
                {play.game_name ?? "Unknown game"}
              </span>
              {play.generation_name ? (
                <span className="text-muted-foreground">
                  {play.generation_name}
                </span>
              ) : null}
              {play.version_group_name ? (
                <span className="text-muted-foreground">
                  {play.version_group_name}
                </span>
              ) : null}
            </div>
          </div>

          <div className="text-muted-foreground flex flex-wrap gap-4 text-sm">
            <span className="inline-flex items-center gap-1.5">
              <AppIcon icon={appIcons.product.date} className="size-4" />
              Started {formatDate(play.started_on)}
            </span>
            <span className="inline-flex items-center gap-1.5">
              <AppIcon icon={appIcons.product.playtime} className="size-4" />
              {formatPlaytime(play.playtime_minutes)}
            </span>
          </div>

          <div className="flex flex-wrap gap-2">
            <StatusBadge tone="neutral">
              <AppIcon icon={appIcons.product.team} className="size-3" />
              {formatNumber(activeTeamCount)} active
            </StatusBadge>
            <StatusBadge tone="neutral">
              <AppIcon icon={appIcons.product.reserve} className="size-3" />
              {formatNumber(reserveTeamCount)} reserve
            </StatusBadge>
            <StatusBadge tone="neutral">
              <AppIcon
                icon={appIcons.views.mainline.pokedex}
                className="size-3"
              />
              Pokédex {play.pokedex_tracking_enabled ? "enabled" : "off"}
            </StatusBadge>
            <StatusBadge tone="neutral">
              <AppIcon
                icon={appIcons.product.optionalEntries}
                className="size-3"
              />
              Optional entries{" "}
              {play.include_optional_pokedex_entries_in_completion
                ? "count"
                : "do not count"}
            </StatusBadge>
          </div>
        </div>

        <div className="bg-background/35 flex flex-col gap-4 rounded-lg border p-4">
          <div>
            <div className="flex items-end justify-between gap-3">
              <p className="text-muted-foreground text-sm font-medium">
                Overall completion
              </p>
              <p className="text-2xl font-semibold">
                {formatPercent(overallCompletion)}
              </p>
            </div>
            <ProgressMeter className="mt-3" value={overallCompletion} />
          </div>

          <div className="grid grid-cols-2 gap-2">
            <Button
              variant="outline"
              render={<Link href={appRoutes.mainlinePlays} />}
              nativeButton={false}
            >
              <AppIcon icon={appIcons.actions.back} inline="start" />
              Plays
            </Button>
            <PlayQuickActions playId={playId} />
          </div>
        </div>
      </div>
    </section>
  );
};
