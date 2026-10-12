import { cn } from "@/shared/utils/cn";
import { PokemonPortraitFallbackImage } from "@/modules/reference/features/pokemon/components/pokemon-portrait-fallback-image";
import { PokemonPortraitPlaceholder } from "@/modules/reference/features/pokemon/components/pokemon-portrait-placeholder";
import {
  getPokemonTypeCssVariables,
  pokemonTypeSoftBackgroundClassName,
} from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import Image from "next/image";

/* A Pokémon's art on its soft type-tint circle. */
type PokemonPortraitProps = {
  alt: string;
  className?: string;
  fallbackOnError?: boolean;
  fetchPriority?: "high" | "low" | "auto";
  imageClassName?: string;
  imageUrl: string | null;
  loading?: "eager" | "lazy";
  preload?: boolean;
  priority?: boolean;
  sizes?: string;
  type?: PokemonTypeSlug | null;
};

const defaultPokemonPortraitSizes =
  "(min-width: 1280px) 180px, (min-width: 768px) 25vw, 45vw";

export const PokemonPortrait = ({
  alt,
  className,
  fallbackOnError = false,
  fetchPriority,
  imageClassName,
  imageUrl,
  loading,
  preload,
  priority = false,
  sizes = defaultPokemonPortraitSizes,
  type,
}: PokemonPortraitProps) => {
  const typeStyle = type ? getPokemonTypeCssVariables(type) : undefined;
  const shouldPreload = preload ?? priority;
  const imageLoading = shouldPreload ? "eager" : loading;
  const resolvedFetchPriority =
    fetchPriority ?? (shouldPreload ? "high" : undefined);

  return (
    <div
      style={typeStyle}
      className={cn(
        "bg-surface-2 relative isolate flex aspect-square items-center justify-center overflow-hidden rounded-full",
        type && pokemonTypeSoftBackgroundClassName,
        className,
      )}
    >
      {imageUrl && fallbackOnError ? (
        <PokemonPortraitFallbackImage
          alt={alt}
          imageUrl={imageUrl}
          loading={imageLoading}
          preload={shouldPreload}
          fetchPriority={resolvedFetchPriority}
          sizes={sizes}
          className={imageClassName}
        />
      ) : imageUrl ? (
        <Image
          src={imageUrl}
          alt={alt}
          fill
          preload={shouldPreload}
          loading={imageLoading}
          fetchPriority={resolvedFetchPriority}
          sizes={sizes}
          className={cn("object-contain p-3", imageClassName)}
        />
      ) : (
        <PokemonPortraitPlaceholder alt={alt} />
      )}
    </div>
  );
};
