"use client";

import { useState } from "react";

import { getGameColourStyle } from "@/modules/reference/features/games/utils/game-color-styles";
import { getGameInitials } from "@/modules/reference/features/games/utils/game-display";
import { cn } from "@/shared/utils/cn";

const coverSizeClassNames = {
  /* A shelf cover fits a 124px square (90px on phones), keeping its box shape. */
  shelf: {
    fallback: "text-20 sm:text-24 h-22.5 sm:h-31",
    image: "max-h-22.5 max-w-22.5 sm:max-h-31 sm:max-w-31",
  },
  /*
   * The game header's cover, in a white frame: 110px wide on phones, where it
   * sits above the title, then 220px tall beside it.
   */
  hero: {
    fallback:
      "text-32 md:text-44 w-27.5 border-4 border-white md:h-55 md:w-auto",
    image: "h-auto w-27.5 max-w-full border-4 border-white md:h-55 md:w-auto",
  },
} as const;

type GameCoverProps = {
  /* Empty when a visible name beside the cover already says which game it is. */
  alt: string;
  coverImageUrl: string | null;
  eager?: boolean;
  gameName: string;
  gameSlug: string;
  size: keyof typeof coverSizeClassNames;
};

/*
 * A game's box: the real cover when there is one, otherwise a cover-shaped
 * stand-in in the game's colour. The cover is what carries the game in the
 * Codex; nothing around it takes the game colour.
 */
export const GameCover = ({
  alt,
  coverImageUrl,
  eager = false,
  gameName,
  gameSlug,
  size,
}: GameCoverProps) => {
  const [failedImageUrl, setFailedImageUrl] = useState<string | null>(null);
  const sizeClassNames = coverSizeClassNames[size];
  const markCoverFailed = () => {
    setFailedImageUrl(coverImageUrl);
  };

  if (!coverImageUrl || failedImageUrl === coverImageUrl) {
    return (
      <span
        role={alt ? "img" : undefined}
        aria-label={alt || undefined}
        aria-hidden={alt ? undefined : true}
        style={getGameColourStyle(gameSlug)}
        className={cn(
          "bg-game-strong font-display shadow-cover grid aspect-3/4 place-items-center rounded-sm font-semibold text-white",
          sizeClassNames.fallback,
        )}
      >
        {getGameInitials(gameName)}
      </span>
    );
  }

  return (
    // Intrinsic width keeps each platform's box shape.
    // eslint-disable-next-line @next/next/no-img-element
    <img
      src={coverImageUrl}
      alt={alt}
      loading={eager ? "eager" : "lazy"}
      decoding="async"
      className={cn(
        "shadow-cover block h-auto w-auto rounded-sm",
        sizeClassNames.image,
      )}
      onError={markCoverFailed}
      ref={(image) => {
        // A cover that failed before hydration never fires onError.
        if (image?.complete && !image.naturalWidth) {
          markCoverFailed();
        }
      }}
    />
  );
};
