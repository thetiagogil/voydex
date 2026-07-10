import Image from "next/image";

import {
  getPokemonDetailAvailabilityContentLabel,
  getPokemonDetailAvailabilityContentMedia,
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

type PokemonDetailAvailabilityMediaProps = {
  imageUrl: string | null;
  initials: string;
  label: string;
};

const PokemonDetailAvailabilityMedia = ({
  imageUrl,
  initials,
  label,
}: PokemonDetailAvailabilityMediaProps) => {
  return (
    <div className="border-app-surface-border/70 bg-background relative flex size-10 shrink-0 items-center justify-center overflow-hidden rounded-lg border">
      {imageUrl ? (
        <Image
          src={imageUrl}
          alt={`${label} artwork`}
          fill
          sizes="40px"
          className="object-contain p-1"
        />
      ) : (
        <span className="text-primary text-xs font-semibold tracking-wide">
          {initials}
        </span>
      )}
    </div>
  );
};

export const PokemonDetailAvailabilityRow = ({
  activeGame,
  activeVersionGroup,
  availability,
}: PokemonDetailAvailabilityRowProps) => {
  const media = getPokemonDetailAvailabilityContentMedia({
    activeGame,
    availability,
  });

  return (
    <article
      className={`${pokemonDetailSectionTableGridClassName} border-app-surface-border/60 border-t px-4 py-3`}
    >
      <div className="flex min-w-0 items-center gap-3">
        <PokemonDetailAvailabilityMedia
          imageUrl={media.imageUrl}
          initials={media.initials}
          label={media.label}
        />
        <div className="truncate text-sm font-medium">
          {getPokemonDetailAvailabilityContentLabel({
            activeGame,
            activeVersionGroup,
            availability,
          })}
        </div>
      </div>

      <div className="truncate text-sm font-medium">
        {getPokemonDetailAvailabilityMethodLabel(availability)}
      </div>

      <p className="text-muted-foreground min-w-0 text-xs leading-relaxed">
        {getPokemonDetailAvailabilityDetails(availability)}
      </p>
    </article>
  );
};
