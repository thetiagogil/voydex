import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { cn } from "@/lib/utils";
import {
  formatPlayDate,
  formatPlayPokedexProgress,
} from "@/modules/mainline/features/plays/shared/display/play-formatters";
import type { MainlinePlaySummary } from "@/modules/mainline/features/plays/shared/types";
import { Card, CardContent } from "@/shared/components/ui/card";
import { appIcons } from "@/shared/domain/icons/app-icons";

type PlaySummaryCardProps = {
  play: MainlinePlaySummary;
};

const PlayCardBody = ({ play }: PlaySummaryCardProps) => {
  const ContinueIcon = appIcons.actions.continue;

  return (
    <Card
      size="sm"
      variant={play.play_id ? "interactive" : "default"}
      className={cn("h-full", !play.play_id && "opacity-70")}
    >
      <CardContent className="grid h-full gap-4">
        <div className="flex min-w-0 items-start justify-between gap-4">
          <div className="min-w-0">
            <h2 className="text-foreground truncate text-base font-semibold">
              {play.play_name ?? "Untitled play"}
            </h2>
            <p className="text-muted-foreground mt-1 text-sm">
              {play.game_name ?? "Unknown game"}
            </p>
          </div>

          {play.status_name ? (
            <span className="bg-muted text-muted-foreground border-app-surface-border shrink-0 rounded-full border px-2 py-1 text-xs font-medium">
              {play.status_name}
            </span>
          ) : null}
        </div>

        <dl className="grid gap-3 text-sm sm:grid-cols-3">
          <div>
            <dt className="text-muted-foreground text-xs">Trainer</dt>
            <dd className="text-foreground mt-1 font-medium">
              {play.trainer_name ?? "Unknown"}
            </dd>
          </div>
          <div>
            <dt className="text-muted-foreground text-xs">Pokedex</dt>
            <dd className="text-foreground mt-1 font-medium">
              {formatPlayPokedexProgress({
                caughtCount: play.pokedex_caught_count,
                seenCount: play.pokedex_seen_count,
              })}
            </dd>
          </div>
          <div>
            <dt className="text-muted-foreground text-xs">Updated</dt>
            <dd className="text-foreground mt-1 font-medium">
              {formatPlayDate(play.updated_at, "No recent update")}
            </dd>
          </div>
        </dl>

        {play.play_id ? (
          <div className="text-primary flex items-center gap-1 text-sm font-medium">
            Open play
            <ContinueIcon aria-hidden className="size-4" />
          </div>
        ) : (
          <p className="text-muted-foreground text-sm">
            This play cannot be opened because it has no play id.
          </p>
        )}
      </CardContent>
    </Card>
  );
};

export const PlaySummaryCard = ({ play }: PlaySummaryCardProps) => {
  if (!play.play_id) {
    return <PlayCardBody play={play} />;
  }

  const title = play.play_name ?? "Untitled play";

  return (
    <Link
      href={appRoutes.mainlinePlay(play.play_id)}
      aria-label={`Open ${title}`}
      className="group/card-link focus-visible:ring-ring/50 block rounded-xl outline-none focus-visible:ring-3"
    >
      <PlayCardBody play={play} />
    </Link>
  );
};
