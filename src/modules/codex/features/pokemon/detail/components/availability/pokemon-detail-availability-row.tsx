import Link from "next/link";

import { appRoutes } from "@/config/routes";
import {
  getPokemonDetailAvailabilityContentGame,
  getPokemonDetailAvailabilityContentLabel,
  getPokemonDetailAvailabilityDetails,
  getPokemonDetailAvailabilityMethodLabel,
} from "@/modules/codex/features/pokemon/detail/components/availability/pokemon-detail-availability-display";
import { pokemonDetailSectionTableGridClassName } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-section-grid";
import type {
  Game,
  PokemonAvailabilitySummary,
  VersionGroup,
} from "@/modules/reference/types";

type PokemonDetailAvailabilityRowProps = {
  activeGame: Game | null;
  activeVersionGroup: VersionGroup | null;
  availability: PokemonAvailabilitySummary;
};

export const PokemonDetailAvailabilityRow = ({
  activeGame,
  activeVersionGroup,
  availability,
}: PokemonDetailAvailabilityRowProps) => {
  const contentGame = getPokemonDetailAvailabilityContentGame({
    activeGame,
    activeVersionGroup,
    availability,
  });
  const contentLabel = getPokemonDetailAvailabilityContentLabel({
    activeGame,
    activeVersionGroup,
    availability,
  });

  return (
    <article
      className={`${pokemonDetailSectionTableGridClassName} border-app-surface-border/60 border-t px-4 py-3`}
    >
      <div className="grid min-w-0 gap-1">
        <div className="text-muted-foreground text-xs lg:hidden">Content</div>
        {contentGame ? (
          <Link
            href={appRoutes.codexGame(contentGame.slug)}
            className="text-foreground hover:text-primary focus-visible:ring-ring min-w-0 truncate rounded-sm text-sm font-medium underline-offset-4 focus-visible:ring-2 focus-visible:outline-none"
          >
            {contentLabel}
          </Link>
        ) : (
          <div className="truncate text-sm font-medium">{contentLabel}</div>
        )}
      </div>

      <div className="grid min-w-0 gap-1">
        <div className="text-muted-foreground text-xs lg:hidden">Method</div>
        <div className="truncate text-sm font-medium">
          {getPokemonDetailAvailabilityMethodLabel(availability)}
        </div>
      </div>

      <div className="grid min-w-0 gap-1">
        <div className="text-muted-foreground text-xs lg:hidden">Notes</div>
        <p className="text-muted-foreground min-w-0 text-xs leading-relaxed">
          {getPokemonDetailAvailabilityDetails(availability)}
        </p>
      </div>
    </article>
  );
};
