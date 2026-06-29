import Image from "next/image";
import type { PokemonTypeSlug } from "@/shared/domain/pokemon/constants";
import { pokemonTypeClassNames } from "@/shared/components/pokemon/type-styles";
import { cn } from "@/lib/utils";
import { PokemonPortraitFallbackImage } from "@/shared/components/pokemon/pokemon-portrait-fallback-image";
import { PokemonPortraitPlaceholder } from "@/shared/components/pokemon/pokemon-portrait-placeholder";

type PokemonPortraitProps = {
  alt: string;
  className?: string;
  fallbackOnError?: boolean;
  glowClassName?: string;
  imageClassName?: string;
  imageUrl: string | null;
  priority?: boolean;
  type?: PokemonTypeSlug | null;
};

export const PokemonPortrait = ({
  alt,
  className,
  fallbackOnError = false,
  glowClassName,
  imageClassName,
  imageUrl,
  priority = false,
  type,
}: PokemonPortraitProps) => {
  const typeClassNames = type ? pokemonTypeClassNames[type] : null;
  return (
    <div
      className={cn(
        "bg-muted/60 relative isolate flex aspect-square items-center justify-center overflow-hidden rounded-xl border",
        typeClassNames?.background,
        typeClassNames?.border,
        className,
      )}
    >
      <div
        aria-hidden
        className={cn(
          "absolute inset-5 rounded-full blur-2xl",
          typeClassNames?.solidBackground ?? "bg-primary",
          "opacity-15",
          glowClassName,
        )}
      />
      {imageUrl && fallbackOnError ? (
        <PokemonPortraitFallbackImage
          alt={alt}
          imageUrl={imageUrl}
          priority={priority}
          className={imageClassName}
        />
      ) : imageUrl ? (
        <Image
          src={imageUrl}
          alt={alt}
          fill
          priority={priority}
          loading={priority ? "eager" : undefined}
          fetchPriority={priority ? "high" : undefined}
          sizes="(min-width: 1280px) 180px, (min-width: 768px) 25vw, 45vw"
          className={cn("object-contain p-4 drop-shadow-lg", imageClassName)}
        />
      ) : (
        <PokemonPortraitPlaceholder alt={alt} />
      )}
    </div>
  );
};
