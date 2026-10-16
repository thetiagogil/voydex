"use client";

import Image from "next/image";
import { useState } from "react";

import { cn } from "@/shared/utils/cn";
import { PokemonPortraitPlaceholder } from "@/modules/reference/features/pokemon/components/pokemon-portrait-placeholder";

type PokemonPortraitFallbackImageProps = {
  alt: string;
  className?: string;
  fetchPriority?: "high" | "low" | "auto";
  imageUrl: string;
  loading?: "eager" | "lazy";
  preload?: boolean;
  sizes: string;
};

export const PokemonPortraitFallbackImage = ({
  alt,
  className,
  fetchPriority,
  imageUrl,
  loading,
  preload,
  sizes,
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
      preload={preload}
      loading={loading}
      fetchPriority={fetchPriority}
      sizes={sizes}
      className={cn("object-contain p-3", className)}
      onError={() => {
        setFailedImageUrl(imageUrl);
      }}
    />
  );
};
