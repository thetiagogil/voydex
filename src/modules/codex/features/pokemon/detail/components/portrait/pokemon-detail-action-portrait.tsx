import { cn } from "@/lib/utils";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import {
  pokemonTypeGroupHoverSurfaceClassName,
  pokemonTypeSelectedSurfaceClassName,
} from "@/shared/components/pokemon/pokemon-type-styles";
import type { PokemonTypeSlug } from "@/shared/domain/pokemon/constants";

type PokemonDetailActionPortraitProps = {
  alt: string;
  imageUrl: string | null;
  isActive?: boolean;
  size?: "default" | "compact";
  type: PokemonTypeSlug | null;
};

export const PokemonDetailActionPortrait = ({
  alt,
  imageUrl,
  isActive = false,
  size = "default",
  type,
}: PokemonDetailActionPortraitProps) => {
  const isCompact = size === "compact";

  return (
    <PokemonPortrait
      alt={alt}
      imageUrl={imageUrl}
      type={type}
      fallbackOnError
      loading="eager"
      sizes={isCompact ? "36px" : "(min-width: 640px) 72px, 64px"}
      className={cn(
        "border-app-surface-border/70 bg-background/30 rounded-full",
        pokemonTypeGroupHoverSurfaceClassName,
        isActive && pokemonTypeSelectedSurfaceClassName,
        isCompact ? "size-12" : "size-16 sm:size-18",
      )}
      glowClassName="opacity-20 transition-opacity duration-200 group-hover:opacity-35 group-focus-visible:opacity-35"
      imageClassName={isCompact ? "p-1.5" : "p-2"}
    />
  );
};
