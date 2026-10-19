import { preload as preloadResource } from "react-dom";

import {
  getPokemonTypeCssVariables,
  pokemonTypeSoftBackgroundClassName,
} from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { FallbackImage } from "@/shared/components/fallback-image";
import { cn } from "@/shared/utils/cn";

/*
 * A Pokémon's art on its soft type-tint circle; without art, or when it
 * fails to load, the first letter of its name in the circle.
 */
type PokemonPortraitProps = {
  alt: string;
  className?: string;
  fetchPriority?: "high" | "low" | "auto";
  imageClassName?: string;
  imageUrl: string | null;
  loading?: "eager" | "lazy";
  /* What the portrait pictures, for the letter that stands in for its art. */
  name: string;
  preload?: boolean;
  priority?: boolean;
  type?: PokemonTypeSlug | null;
};

export const PokemonPortrait = ({
  alt,
  className,
  fetchPriority,
  imageClassName,
  imageUrl,
  loading,
  name,
  preload,
  priority = false,
  type,
}: PokemonPortraitProps) => {
  const typeStyle = type ? getPokemonTypeCssVariables(type) : undefined;
  const shouldPreload = preload ?? priority;
  const imageLoading = shouldPreload ? "eager" : (loading ?? "lazy");
  const resolvedFetchPriority =
    fetchPriority ?? (shouldPreload ? "high" : undefined);

  if (shouldPreload && imageUrl) {
    preloadResource(imageUrl, {
      as: "image",
      fetchPriority: resolvedFetchPriority,
    });
  }

  return (
    <div
      style={typeStyle}
      className={cn(
        "bg-surface-2 relative isolate flex aspect-square items-center justify-center overflow-hidden rounded-full border border-transparent",
        type && pokemonTypeSoftBackgroundClassName,
        className,
      )}
    >
      <FallbackImage
        src={imageUrl}
        name={name}
        alt={alt}
        loading={imageLoading}
        fetchPriority={resolvedFetchPriority}
        className={cn(
          "absolute inset-0 size-full object-contain p-3",
          imageClassName,
        )}
      />
    </div>
  );
};
