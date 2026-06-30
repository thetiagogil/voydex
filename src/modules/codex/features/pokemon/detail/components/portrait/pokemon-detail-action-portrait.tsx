import type { CSSProperties } from "react";

import { cn } from "@/lib/utils";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import type { PokemonTypeSlug } from "@/shared/domain/pokemon/constants";

type PokemonDetailActionPortraitProps = {
  alt: string;
  imageUrl: string | null;
  size?: "default" | "compact";
  type: PokemonTypeSlug | null;
};

export const getPokemonDetailActionPortraitStyle = (
  type: PokemonTypeSlug | null,
) => {
  const colorValue = type ? `var(--type-${type})` : "var(--primary)";

  return {
    "--pokemon-detail-action-portrait-color": colorValue,
    "--pokemon-detail-action-portrait-background": `color-mix(in oklch, ${colorValue}, transparent 82%)`,
    "--pokemon-detail-action-portrait-shadow": `0 0 20px color-mix(in oklch, ${colorValue}, transparent 68%)`,
  } as CSSProperties;
};

export const PokemonDetailActionPortrait = ({
  alt,
  imageUrl,
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
        "border-app-surface-border/70 bg-background/30 rounded-full transition-all duration-200 group-hover:border-(--pokemon-detail-action-portrait-color) group-hover:bg-(--pokemon-detail-action-portrait-background) group-hover:shadow-(--pokemon-detail-action-portrait-shadow) group-focus-visible:border-(--pokemon-detail-action-portrait-color) group-focus-visible:bg-(--pokemon-detail-action-portrait-background) group-focus-visible:shadow-(--pokemon-detail-action-portrait-shadow)",
        isCompact ? "size-9" : "size-16 sm:size-18",
      )}
      glowClassName="opacity-20 transition-opacity duration-200 group-hover:opacity-35 group-focus-visible:opacity-35"
      imageClassName={isCompact ? "p-1.5" : "p-2"}
    />
  );
};
