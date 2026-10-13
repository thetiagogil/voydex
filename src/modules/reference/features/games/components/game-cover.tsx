"use client";

import Image from "next/image";
import { useState } from "react";

import {
  gameCoverAspectRatios,
  type GameCoverShape,
} from "@/modules/reference/features/games/domain/game-cover-shapes";
import { getGameColourStyle } from "@/modules/reference/features/games/utils/game-color-styles";
import { getGameInitials } from "@/modules/reference/features/games/utils/game-display";
import { cn } from "@/shared/utils/cn";

/*
 * Each place a cover appears. Images keep their intrinsic width, so every
 * platform's box keeps its shape; the stand-in is a 3:4 box.
 */
const coverSizeClassNames = {
  /* The Play's docked bar: a 40px thumbnail in a thin white frame. */
  dock: {
    fallback: "text-12 h-10 border-[2.5px] border-white",
    image: "h-10 w-[30px] border-[2.5px] border-white object-cover",
  },
  /* The Play header's cover, in a white frame: 54px wide, 74px from `sm`. */
  header: {
    fallback: "text-20 sm:text-24 w-[54px] border-4 border-white sm:w-[74px]",
    image: "w-[54px] border-4 border-white sm:w-[74px]",
  },
  /*
   * The Codex game header's cover, in a white frame: 110px wide on phones,
   * where it sits above the title, then 220px tall beside it.
   */
  hero: {
    fallback:
      "text-32 md:text-44 w-27.5 border-4 border-white md:h-55 md:w-auto",
    image: "h-auto w-27.5 max-w-full border-4 border-white md:h-55 md:w-auto",
  },
  /* The game picker's cover shelf (Start a Play): 118px tall. */
  picker: {
    fallback: "text-24 h-29.5",
    image: "h-29.5 w-auto max-w-none",
  },
  /* The game picker in New Play, a step larger: 150px tall. */
  pickerLarge: {
    fallback: "text-28 h-37.5",
    image: "h-37.5 w-auto max-w-none",
  },
  /* A shelf cover fits a 124px square (90px on phones). */
  shelf: {
    fallback: "text-20 sm:text-24 h-22.5 sm:h-31",
    image: "max-h-22.5 max-w-22.5 sm:max-h-31 sm:max-w-31",
  },
  /* A Play's cover on its token on the Plays list. */
  token: {
    fallback: "text-24 h-24",
    image: "max-h-28 max-w-full",
  },
} as const;

export type GameCoverSize = keyof typeof coverSizeClassNames;

const coverShapeClassNames: Record<GameCoverShape, string> = {
  landscape: "aspect-[28/25]",
  portrait: "aspect-[8/13]",
  square: "aspect-square",
};

/*
 * The sizes that take a `shape` and hold their box before the art loads: the
 * box's longest side in pixels (its height, or the side of the square a
 * shelf cover fits), and the classes that set it for a wide or square box
 * and for a tall one.
 */
const shapedCoverBoxes: Partial<
  Record<
    GameCoverSize,
    { box: number; fitsSquare: boolean; tall: string; wide: string }
  >
> = {
  picker: { box: 118, fitsSquare: false, tall: "h-29.5", wide: "h-29.5" },
  pickerLarge: { box: 150, fitsSquare: false, tall: "h-37.5", wide: "h-37.5" },
  shelf: {
    box: 124,
    fitsSquare: true,
    tall: "h-22.5 w-auto sm:h-31 sm:w-auto",
    wide: "h-auto w-22.5 sm:h-auto sm:w-31",
  },
};

type GameCoverProps = {
  /* Empty when a visible name beside the cover already says which game it is. */
  alt: string;
  className?: string;
  coverImageUrl: string | null;
  /* Loads at once, for covers in view when the page or shelf opens. */
  eager?: boolean;
  gameName: string;
  /*
   * Colours the stand-in when the cover sits outside its game's scope, as in
   * the Codex. Inside a Play the stand-in takes the Play's colour.
   */
  gameSlug?: string;
  /*
   * The box's shape, where the size supports it (`picker`, `pickerLarge`,
   * `shelf`): the cover then holds its place on a quiet tint from the first
   * paint and loads a copy sized for it.
   */
  shape?: GameCoverShape | null;
  size?: GameCoverSize;
};

/*
 * A game's box: the real cover when there is one, otherwise a cover-shaped
 * stand-in with the game's initials in its colour. A cover that fails to load
 * falls back to the stand-in too.
 */
export const GameCover = ({
  alt,
  className,
  coverImageUrl,
  eager = false,
  gameName,
  gameSlug,
  shape,
  size,
}: GameCoverProps) => {
  const [failedImageUrl, setFailedImageUrl] = useState<string | null>(null);
  const sizeClassNames = size ? coverSizeClassNames[size] : null;
  const shapedBox = shape && size ? shapedCoverBoxes[size] : undefined;
  const ratio = shape ? gameCoverAspectRatios[shape] : 1;
  const shapedClassName =
    shape && shapedBox
      ? cn(
          coverShapeClassNames[shape],
          ratio >= 1 ? shapedBox.wide : shapedBox.tall,
        )
      : null;
  const markCoverFailed = () => {
    setFailedImageUrl(coverImageUrl);
  };

  if (!coverImageUrl || failedImageUrl === coverImageUrl) {
    return (
      <span
        role={alt ? "img" : undefined}
        aria-label={alt || undefined}
        aria-hidden={alt ? undefined : true}
        style={gameSlug ? getGameColourStyle(gameSlug) : undefined}
        className={cn(
          "bg-game-strong font-display shadow-cover grid aspect-3/4 shrink-0 place-items-center rounded-sm font-semibold text-white",
          sizeClassNames?.fallback,
          shapedClassName,
          className,
        )}
      >
        {getGameInitials(gameName)}
      </span>
    );
  }

  if (shapedBox && shapedClassName) {
    // The box's own size: its height, or the square it fits.
    const isWidthBound = shapedBox.fitsSquare && ratio >= 1;
    const width = isWidthBound
      ? shapedBox.box
      : Math.round(shapedBox.box * ratio);
    const height = isWidthBound
      ? Math.round(shapedBox.box / ratio)
      : shapedBox.box;

    return (
      <Image
        src={coverImageUrl}
        alt={alt}
        width={width}
        height={height}
        loading={eager ? "eager" : "lazy"}
        className={cn(
          "bg-surface-2 shadow-cover block max-w-none shrink-0 rounded-sm object-cover",
          shapedClassName,
          className,
        )}
        onError={markCoverFailed}
        ref={(image) => {
          if (image?.complete && !image.naturalWidth) {
            markCoverFailed();
          }
        }}
      />
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
        "shadow-cover block h-auto w-auto shrink-0 rounded-sm",
        sizeClassNames?.image,
        className,
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
