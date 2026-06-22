import {
  ArrowRight,
  CheckCircle2,
  Circle,
  CircleHelp,
  Clock3,
  Eye,
  UsersRound,
} from "lucide-react";

import type {
  MainlinePlayPokedexEntry,
  MainlinePlayTeamPokemon,
} from "@/modules/mainline/features/play/types";
import type { MainlinePlayTimelineDetail } from "@/modules/mainline/shared/types/mainline.types";
import {
  formatDateTime,
  formatNumber,
  getPokemonDisplayName,
  getPokemonPrimaryTypeSlug,
  getPokemonTypeSlug,
  getTimelineEventTitle,
} from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { ProgressMeter } from "@/shared/components/app/progress-meter";
import { StatusBadge } from "@/shared/components/app/status-badge";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { PokemonTypeBadge } from "@/shared/components/pokemon/pokemon-type-icon";
import { Badge } from "@/shared/components/ui/badge";
import { Button } from "@/shared/components/ui/button";
import { Card, CardContent } from "@/shared/components/ui/card";
import { cn } from "@/lib/utils";

export function CompactProgressRow({
  actionLabel,
  count,
  href,
  icon,
  label,
  percent,
  tone = "neutral",
}: {
  actionLabel?: string;
  count: string;
  href?: string;
  icon: React.ReactNode;
  label: string;
  percent: number | null;
  tone?: "battle" | "info" | "milestone" | "neutral" | "success" | "warning";
}) {
  return (
    <div className="grid gap-3 rounded-lg border p-3 sm:grid-cols-[minmax(0,1fr)_11rem_auto] sm:items-center">
      <div className="flex min-w-0 items-center gap-3">
        <div className="bg-primary/10 text-primary flex size-9 shrink-0 items-center justify-center rounded-lg">
          {icon}
        </div>
        <div className="min-w-0">
          <p className="font-medium">{label}</p>
          <p className="text-muted-foreground text-sm">{count}</p>
        </div>
      </div>
      <ProgressMeter value={percent ?? 0} />
      {href && actionLabel ? (
        <Button
          render={<a href={href} />}
          nativeButton={false}
          variant="ghost"
          size="sm"
        >
          {actionLabel}
          <ArrowRight data-icon="inline-end" />
        </Button>
      ) : (
        <StatusBadge tone={tone}>{Math.round(percent ?? 0)}%</StatusBadge>
      )}
    </div>
  );
}

export function EmptyPanel({
  description,
  title,
}: {
  description: string;
  title: string;
}) {
  return (
    <Card>
      <CardContent className="flex min-h-40 flex-col items-center justify-center gap-2 text-center">
        <CircleHelp className="text-muted-foreground size-8" />
        <p className="font-medium">{title}</p>
        <p className="text-muted-foreground max-w-sm text-sm">{description}</p>
      </CardContent>
    </Card>
  );
}

export function PokemonStatusControls({
  isCaught,
  isSeen,
}: {
  isCaught: boolean | null;
  isSeen: boolean | null;
}) {
  return (
    <div className="grid grid-cols-2 overflow-hidden rounded-lg border">
      <div
        className={cn(
          "flex items-center justify-center gap-1 px-2 py-1 text-xs",
          isSeen
            ? "bg-primary text-primary-foreground"
            : "text-muted-foreground",
        )}
      >
        <Eye className="size-3.5" />
        Seen
      </div>
      <div
        className={cn(
          "flex items-center justify-center gap-1 border-l px-2 py-1 text-xs",
          isCaught
            ? "bg-primary text-primary-foreground"
            : "text-muted-foreground",
        )}
      >
        <CheckCircle2 className="size-3.5" />
        Caught
      </div>
    </div>
  );
}

export function PokemonTypeBadges({
  pokemon,
}: {
  pokemon: MainlinePlayPokedexEntry | MainlinePlayTeamPokemon;
}) {
  const primaryType = getPokemonTypeSlug(pokemon.display.primaryType);
  const secondaryType = getPokemonTypeSlug(pokemon.display.secondaryType);

  return (
    <div className="flex flex-wrap justify-center gap-1.5">
      {primaryType ? <PokemonTypeBadge type={primaryType} /> : null}
      {secondaryType ? <PokemonTypeBadge type={secondaryType} /> : null}
    </div>
  );
}

export function SmallPokemonSprite({
  className,
  pokemon,
}: {
  className?: string;
  pokemon: MainlinePlayTeamPokemon;
}) {
  return (
    <PokemonPortrait
      alt={getPokemonDisplayName(pokemon)}
      className={cn("size-12 rounded-lg", className)}
      imageUrl={pokemon.display.imageUrl}
      type={getPokemonPrimaryTypeSlug(pokemon)}
    />
  );
}

export function TeamMemberRow({
  isSelected = false,
  pokemon,
}: {
  isSelected?: boolean;
  pokemon: MainlinePlayTeamPokemon;
}) {
  return (
    <div
      className={cn(
        "grid grid-cols-[auto_minmax(0,1fr)_auto] items-center gap-3 rounded-lg border p-2",
        isSelected && "border-primary bg-primary/5",
      )}
    >
      <SmallPokemonSprite pokemon={pokemon} />
      <div className="min-w-0">
        <p className="truncate font-medium">{getPokemonDisplayName(pokemon)}</p>
        <p className="text-muted-foreground text-xs">
          Lv. {pokemon.level ?? "-"}
        </p>
      </div>
      <div className="hidden sm:block">
        <PokemonTypeBadges pokemon={pokemon} />
      </div>
    </div>
  );
}

export function TimelineRows({
  events,
  limit = 4,
}: {
  events: MainlinePlayTimelineDetail[];
  limit?: number;
}) {
  const visibleEvents = events.slice(0, limit);

  if (!visibleEvents.length) {
    return (
      <div className="text-muted-foreground rounded-lg border border-dashed p-4 text-sm">
        No history has been logged for this play yet.
      </div>
    );
  }

  return (
    <div className="flex flex-col gap-2">
      {visibleEvents.map((event) => (
        <div
          key={event.event_id}
          className="grid grid-cols-[auto_minmax(0,1fr)_auto] items-center gap-3 rounded-lg border p-3"
        >
          <div className="bg-primary/10 text-primary flex size-9 items-center justify-center rounded-full">
            <Circle className="size-3 fill-current" />
          </div>
          <div className="min-w-0">
            <p className="truncate font-medium">
              {getTimelineEventTitle(event)}
            </p>
            {event.body ? (
              <p className="text-muted-foreground truncate text-sm">
                {event.body}
              </p>
            ) : null}
          </div>
          <span className="text-muted-foreground hidden items-center gap-1.5 text-xs sm:inline-flex">
            <Clock3 className="size-3.5" />
            {formatDateTime(event.happened_at)}
          </span>
        </div>
      ))}
    </div>
  );
}

export function TeamCountBadge({
  activeCount,
  reserveCount,
}: {
  activeCount: number;
  reserveCount: number;
}) {
  return (
    <Badge variant="secondary" className="gap-1.5">
      <UsersRound className="size-3" />
      {formatNumber(activeCount)} active
      <span className="text-muted-foreground">/</span>
      {formatNumber(reserveCount)} reserve
    </Badge>
  );
}
