"use client";

import Image from "next/image";
import { useState } from "react";

import { cn } from "@/lib/utils";
import { PokemonPortraitPlaceholder } from "@/shared/components/pokemon/pokemon-portrait-placeholder";

type PokemonPortraitFallbackImageProps = {
  alt: string;
  className?: string;
  imageUrl: string;
  priority: boolean;
};

export const PokemonPortraitFallbackImage = ({
  alt,
  className,
  imageUrl,
  priority,
}: PokemonPortraitFallbackImageProps) => {
  const [failedImageUrl, setFailedImageUrl] = useState<string | null>(null);
  const hasFailed = failedImageUrl === imageUrl;

  if (hasFailed) {
    return <PokemonPortraitPlaceholder alt={alt} />;
  }

  return (
    <Image
      src={imageUrl}
      alt={alt}
      fill
      priority={priority}
      loading={priority ? "eager" : undefined}
      fetchPriority={priority ? "high" : undefined}
      sizes="(min-width: 1280px) 180px, (min-width: 768px) 25vw, 45vw"
      className={cn("object-contain p-4 drop-shadow-lg", className)}
      onError={() => {
        setFailedImageUrl(imageUrl);
      }}
    />
  );
};
