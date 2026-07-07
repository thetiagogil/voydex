import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { cn } from "@/lib/utils";
import type { MainlinePlaySummary } from "@/modules/mainline/features/plays/types";
import { Card, CardContent } from "@/shared/components/ui/card";
import { appIcons } from "@/shared/domain/icons/app-icons";

type PlaySummaryCardProps = {
  play: MainlinePlaySummary;
};

const formatDate = (value: string | null) => {
  if (!value) {
    return "No recent update";
  }

  return new Intl.DateTimeFormat("en", {
    day: "numeric",
    month: "short",
    year: "numeric",
  }).format(new Date(value));
};

const formatPokedexProgress = (play: MainlinePlaySummary) => {
  if (play.pokedex_caught_count === null && play.pokedex_seen_count === null) {
    return "No Pokedex progress";
  }

  return `${play.pokedex_caught_count ?? 0} caught / ${play.pokedex_seen_count ?? 0} seen`;
};

const PlayCardBody = ({ play }: PlaySummaryCardProps) => {
  const ContinueIcon = appIcons.actions.continue;

  return (
    <Card
      size="sm"
      className={cn(
        "h-full transition-colors",
        play.play_id
          ? "group-hover:bg-card/95 group-hover:ring-primary/50"
          : "opacity-70",
      )}
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
              {formatPokedexProgress(play)}
            </dd>
          </div>
          <div>
            <dt className="text-muted-foreground text-xs">Updated</dt>
            <dd className="text-foreground mt-1 font-medium">
              {formatDate(play.updated_at)}
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
      className="group focus-visible:ring-ring/50 block rounded-xl outline-none focus-visible:ring-3"
    >
      <PlayCardBody play={play} />
    </Link>
  );
};
