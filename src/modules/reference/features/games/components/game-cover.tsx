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
 * Each place a cover appears outside a carousel. Images keep their intrinsic
 * width, so every platform's box keeps its shape; the stand-in is a 3:4 box.
 */
const coverSizeClassNames = {
  /* The Play's docked bar: a 40px thumbnail in a thin white frame. */
  dock: {
    fallback: "text-12 h-10 border-[2.5px] border-white",
    image: "h-10 w-7.5 border-[2.5px] border-white object-cover",
  },
  /*
   * The Play header's cover, in a white frame: every platform's box stands
   * 72px tall, 100px from `sm`, and takes its width from its own shape.
   */
  header: {
    fallback: "text-20 sm:text-24 h-18 w-auto border-4 border-white sm:h-25",
    image: "h-18 w-auto border-4 border-white sm:h-25",
  },
  /*
   * The Codex game header's cover, in a white frame: 110px wide on phones,
   * where it sits above the title; beside it, every game's box stands 284px
   * tall, as tall as the eyebrow, title, switches, Pokédex pills and
   * description.
   */
  hero: {
    fallback:
      "text-32 md:text-44 w-27.5 border-4 border-white md:h-71 md:w-auto",
    image: "h-auto w-27.5 max-w-full border-4 border-white md:h-71 md:w-auto",
  },
  /* The Codex's game card: the cover fits a 124px square (90px on phones). */
  shelf: {
    fallback: "text-20 sm:text-24 h-22.5 sm:h-31",
    image: "max-h-22.5 max-w-22.5 sm:max-h-31 sm:max-w-31",
  },
  /*
   * A Play's cover on the Plays list, framed like the Play header's: every
   * platform's box stands 80px tall, 96px from `sm`, its width from its shape.
   */
  token: {
    fallback: "text-20 sm:text-24 h-20 w-auto border-4 border-white sm:h-24",
    image: "h-20 w-auto max-w-full border-4 border-white sm:h-24",
  },
} as const;

/*
 * The covers in a carousel. Every cover in one carousel stands the same
 * height and takes its width from its box's shape, so each platform's box
 * keeps its proportions; with a `shape` it holds that box before the art
 * loads. Carousels may differ in height, the covers in one never do.
 * `height` is the tallest it stands, in pixels, for the copy it loads.
 */
const carouselCoverSizes = {
  /* The game picker (Start a Play, Home's first Play): 118px. */
  picker: { className: "text-24 h-29.5", height: 118 },
  /* The game picker in New Play, a step larger: 150px. */
  pickerLarge: { className: "text-28 h-37.5", height: 150 },
  /* Home's Plays: 90px on phones, 124px from `sm`. */
  playShelf: { className: "text-20 sm:text-24 h-22.5 sm:h-31", height: 124 },
} as const;

type CarouselCoverSize = keyof typeof carouselCoverSizes;
type GameCoverSize = keyof typeof coverSizeClassNames | CarouselCoverSize;

const isCarouselCoverSize = (
  size: GameCoverSize | undefined,
): size is CarouselCoverSize => !!size && size in carouselCoverSizes;

const coverShapeClassNames: Record<GameCoverShape, string> = {
  landscape: "aspect-28/25",
  portrait: "aspect-8/13",
  square: "aspect-square",
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
   * The box's shape, for a carousel size (`picker`, `pickerLarge`,
   * `playShelf`): the cover then holds its place on a quiet tint from the
   * first paint and loads a copy sized for it.
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
  const carouselSize = isCarouselCoverSize(size)
    ? carouselCoverSizes[size]
    : null;
  const sizeClassNames =
    size && !isCarouselCoverSize(size) ? coverSizeClassNames[size] : null;
  // In a carousel: one height, the width from the box's shape.
  const carouselClassName = carouselSize
    ? cn(
        carouselSize.className,
        "w-auto max-w-none",
        shape && coverShapeClassNames[shape],
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
          carouselClassName,
          className,
        )}
      >
        {getGameInitials(gameName)}
      </span>
    );
  }

  if (carouselSize && shape) {
    const ratio = gameCoverAspectRatios[shape];

    return (
      <Image
        src={coverImageUrl}
        alt={alt}
        width={Math.round(carouselSize.height * ratio)}
        height={carouselSize.height}
        loading={eager ? "eager" : "lazy"}
        className={cn(
          "bg-surface-2 shadow-cover block shrink-0 rounded-sm object-cover",
          carouselClassName,
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
        carouselClassName,
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
