import { cn } from "@/shared/utils/cn";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";

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
        "border-line bg-surface-2 group-hover:border-primary/35 group-hover:bg-muted/60 group-focus-visible:border-primary/35 group-focus-visible:bg-muted/60 rounded-full transition-colors",
        isActive && "border-primary/50 bg-primary/5 ring-primary/20 ring-2",
        isCompact ? "size-12" : "size-16 sm:size-18",
      )}
      imageClassName={isCompact ? "p-1.5" : "p-2"}
    />
  );
};
