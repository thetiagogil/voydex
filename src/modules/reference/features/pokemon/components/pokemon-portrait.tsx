import { cn } from "@/shared/utils/cn";
import { PokemonPortraitFallbackImage } from "@/modules/reference/features/pokemon/components/pokemon-portrait-fallback-image";
import { PokemonPortraitPlaceholder } from "@/modules/reference/features/pokemon/components/pokemon-portrait-placeholder";
import {
  getPokemonTypeCssVariables,
  pokemonTypeSoftBackgroundClassName,
  pokemonTypeSoftBorderClassName,
  pokemonTypeSolidBackgroundClassName,
} from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import Image from "next/image";

type PokemonPortraitProps = {
  alt: string;
  backgroundImageClassName?: string;
  backgroundImageUrl?: string | null;
  backgroundOverlayClassName?: string;
  className?: string;
  fallbackOnError?: boolean;
  fetchPriority?: "high" | "low" | "auto";
  glowClassName?: string;
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
  backgroundImageClassName,
  backgroundImageUrl,
  backgroundOverlayClassName,
  className,
  fallbackOnError = false,
  fetchPriority,
  glowClassName,
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
        "bg-muted/60 relative isolate flex aspect-square items-center justify-center overflow-hidden rounded-xl border",
        type && pokemonTypeSoftBackgroundClassName,
        type && pokemonTypeSoftBorderClassName,
        className,
      )}
    >
      {backgroundImageUrl ? (
        <>
          <div
            aria-hidden
            className={cn(
              "pointer-events-none absolute inset-0 bg-cover bg-center",
              backgroundImageClassName,
            )}
            style={{ backgroundImage: `url(${backgroundImageUrl})` }}
          />
          {backgroundOverlayClassName ? (
            <div
              aria-hidden
              className={cn(
                "pointer-events-none absolute inset-0",
                backgroundOverlayClassName,
              )}
            />
          ) : null}
        </>
      ) : null}

      <div
        aria-hidden
        className={cn(
          "absolute inset-5 rounded-full blur-2xl",
          type ? pokemonTypeSolidBackgroundClassName : "bg-primary",
          "opacity-15",
          glowClassName,
        )}
      />
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
          className={cn("object-contain p-4 drop-shadow-lg", imageClassName)}
        />
      ) : (
        <PokemonPortraitPlaceholder alt={alt} />
      )}
    </div>
  );
};
