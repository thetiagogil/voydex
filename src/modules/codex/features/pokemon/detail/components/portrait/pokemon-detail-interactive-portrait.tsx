import type { CSSProperties } from "react";

import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import type { PokemonTypeSlug } from "@/shared/domain/pokemon/constants";

type PokemonDetailInteractivePortraitProps = {
  alt: string;
  imageUrl: string | null;
  type: PokemonTypeSlug | null;
};

export const getPokemonDetailInteractivePortraitStyle = (
  type: PokemonTypeSlug | null,
) => {
  const colorValue = type ? `var(--type-${type})` : "var(--primary)";

  return {
    "--pokemon-detail-interactive-portrait-color": colorValue,
    "--pokemon-detail-interactive-portrait-background": `color-mix(in oklch, ${colorValue}, transparent 82%)`,
    "--pokemon-detail-interactive-portrait-shadow": `0 0 20px color-mix(in oklch, ${colorValue}, transparent 68%)`,
  } as CSSProperties;
};

export const PokemonDetailInteractivePortrait = ({
  alt,
  imageUrl,
  type,
}: PokemonDetailInteractivePortraitProps) => {
  return (
    <PokemonPortrait
      alt={alt}
      imageUrl={imageUrl}
      type={type}
      fallbackOnError
      loading="eager"
      sizes="(min-width: 640px) 72px, 64px"
      className="border-app-surface-border/70 bg-background/30 size-16 rounded-full transition-all duration-200 group-hover:border-(--pokemon-detail-interactive-portrait-color) group-hover:bg-(--pokemon-detail-interactive-portrait-background) group-hover:shadow-(--pokemon-detail-interactive-portrait-shadow) group-focus-visible:border-(--pokemon-detail-interactive-portrait-color) group-focus-visible:bg-(--pokemon-detail-interactive-portrait-background) group-focus-visible:shadow-(--pokemon-detail-interactive-portrait-shadow) sm:size-18"
      glowClassName="opacity-20 transition-opacity duration-200 group-hover:opacity-35 group-focus-visible:opacity-35"
      imageClassName="p-2"
    />
  );
};
