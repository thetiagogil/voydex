"use client";

import type { PlayPokemon } from "@/features/play/types";
import {
  getPlayPokemonDisplayName,
  getPlayPokemonTypeKeys,
} from "@/features/play/utils/pokemon-team-display";
import type {
  PokemonTeamCoverageMove,
  PokemonTeamCoverageStab,
} from "@/features/play/utils/pokemon-team-analysis";
import { cn } from "@/lib/utils/cn";
import { TypeDisplay } from "@/shared/components/type-display";
import { Badge } from "@/shared/components/ui/badge";
import { TYPE_COLOR_VARIANTS } from "@/shared/constants/color-variants";
import type { PokemonType } from "@/shared/constants/reference";

export const CountBadge = ({
  value,
  tone = "neutral",
}: {
  value: number;
  tone?: "positive" | "warning" | "danger" | "neutral";
}) => {
  const toneClassName =
    tone === "positive"
      ? "border-success/30 bg-success/12 text-success"
      : tone === "warning"
        ? "border-warning/30 bg-warning/12 text-warning"
        : tone === "danger"
          ? "border-destructive/30 bg-destructive/12 text-destructive"
          : "border-border bg-muted/20 text-foreground";

  return (
    <Badge
      variant="outline"
      className={cn("min-w-9 justify-center", toneClassName)}
    >
      {value}
    </Badge>
  );
};

export const PokemonSourceBadge = ({
  pokemon,
  count,
}: {
  pokemon: PlayPokemon;
  count?: number;
}) => {
  const primaryType = getPlayPokemonTypeKeys(pokemon)[0] ?? "normal";
  const colors = TYPE_COLOR_VARIANTS[primaryType];

  return (
    <Badge
      variant="outline"
      className={cn("gap-1.5", colors.bg, colors.border, colors.text)}
    >
      <TypeDisplay type={primaryType} iconOnly size="sm" />
      <span>{getPlayPokemonDisplayName(pokemon)}</span>
      {typeof count === "number" ? <span>({count})</span> : null}
    </Badge>
  );
};

export const renderTypeBadges = (
  types: PokemonType[],
  emptyMessage: string,
  limit?: number,
) => {
  const visibleTypes = limit ? types.slice(0, limit) : types;

  if (visibleTypes.length === 0) {
    return (
      <span className="text-muted-foreground text-sm">{emptyMessage}</span>
    );
  }

  return (
    <div className="flex flex-wrap gap-2">
      {visibleTypes.map((type) => (
        <TypeDisplay key={type} type={type} size="sm" />
      ))}
      {limit && types.length > limit ? (
        <Badge variant="outline">+{types.length - limit} more</Badge>
      ) : null}
    </div>
  );
};

export const renderMoveCoverageBadges = (
  coverage: PokemonTeamCoverageMove[],
  emptyMessage: string,
) => {
  if (coverage.length === 0) {
    return (
      <span className="text-muted-foreground text-sm">{emptyMessage}</span>
    );
  }

  const coverageByPokemon = new Map<
    string,
    { pokemon: PlayPokemon; count: number }
  >();

  for (const entry of coverage) {
    const current = coverageByPokemon.get(entry.pokemon.id);

    if (current) {
      current.count += 1;
      continue;
    }

    coverageByPokemon.set(entry.pokemon.id, {
      pokemon: entry.pokemon,
      count: 1,
    });
  }

  const entries = Array.from(coverageByPokemon.values());

  return (
    <div className="flex flex-wrap gap-2">
      {entries.slice(0, 3).map((entry) => (
        <PokemonSourceBadge
          key={entry.pokemon.id}
          pokemon={entry.pokemon}
          count={entry.count}
        />
      ))}
      {entries.length > 3 ? (
        <Badge variant="secondary">+{entries.length - 3} more</Badge>
      ) : null}
    </div>
  );
};

export const renderStabCoverageBadges = (
  coverage: PokemonTeamCoverageStab[],
  emptyMessage: string,
) => {
  if (coverage.length === 0) {
    return (
      <span className="text-muted-foreground text-sm">{emptyMessage}</span>
    );
  }

  return (
    <div className="flex flex-wrap gap-2">
      {coverage.slice(0, 3).map((entry) => (
        <PokemonSourceBadge key={entry.pokemon.id} pokemon={entry.pokemon} />
      ))}
      {coverage.length > 3 ? (
        <Badge variant="secondary">+{coverage.length - 3} more</Badge>
      ) : null}
    </div>
  );
};

export const renderDefensiveExposure = (
  pokemon: Array<{ pokemon: PlayPokemon; multiplier: number }>,
  emptyMessage: string,
) => {
  if (pokemon.length === 0) {
    return (
      <span className="text-muted-foreground text-sm">{emptyMessage}</span>
    );
  }

  return (
    <div className="flex flex-wrap gap-2">
      {pokemon.slice(0, 3).map(({ pokemon: member }) => (
        <PokemonSourceBadge key={member.id} pokemon={member} />
      ))}
      {pokemon.length > 3 ? (
        <Badge variant="secondary">+{pokemon.length - 3} more</Badge>
      ) : null}
    </div>
  );
};

export const multiplierCellClassName = (multiplier: number) => {
  if (multiplier >= 4) {
    return "border-success/35 bg-success/18 text-success";
  }

  if (multiplier > 1) {
    return "border-success/30 bg-success/12 text-success";
  }

  if (multiplier === 0) {
    return "border-immune/30 bg-immune/12 text-immune";
  }

  if (multiplier <= 0.25) {
    return "border-destructive/35 bg-destructive/18 text-destructive";
  }

  if (multiplier < 1) {
    return "border-destructive/30 bg-destructive/12 text-destructive";
  }

  return "border-border bg-muted/20 text-muted-foreground";
};
