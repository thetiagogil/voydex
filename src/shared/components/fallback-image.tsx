"use client";

import { useState, type ImgHTMLAttributes, type ReactNode } from "react";

import { cn } from "@/shared/utils/cn";

type FallbackImageProps = Omit<
  ImgHTMLAttributes<HTMLImageElement>,
  "children" | "name" | "onError" | "src" | "title"
> & {
  /*
   * How the stand-in looks. `letter` (default) is for art that already sits
   * in a container (an avatar's circle, a card's art spot, a medallion): the
   * first letter, centred in it. `badge` is for art that stands on its own
   * (a Pokémon on the meadow, an empty state's Pokémon): a round sticker the
   * art's size with the name inside, or the first letter when it is too small
   * for words.
   */
  fallback?: "badge" | "letter";
  /* Extra classes for the stand-in's box (the image's own classes size it). */
  fallbackClassName?: string;
  /*
   * What the stand-in's `letter` shows instead of the name's first letter,
   * such as a trainer's initials ("LS" for Lt. Surge).
   */
  letters?: string;
  /* What the image pictures: it names the stand-in when the image can't show. */
  name: string;
  src: string | null | undefined;
  /*
   * What the stand-in shows instead of the letter, such as a badge's type
   * icon.
   */
  standIn?: ReactNode;
};

/*
 * An image that, when it has no address or fails to load, shows what it
 * pictures (a Pokémon, a game, a trainer) by name in the same box, so the
 * layout never moves and no broken-image icon or squashed alt text shows.
 * `className` sizes and places both.
 */
export const FallbackImage = ({
  alt = "",
  className,
  fallback = "letter",
  fallbackClassName,
  letters,
  name,
  src,
  standIn,
  ...imageProps
}: FallbackImageProps) => {
  const [failedSrc, setFailedSrc] = useState<string | null>(null);

  if (!src || failedSrc === src) {
    const letter =
      letters?.trim() || name.trim().charAt(0).toUpperCase() || "?";

    return (
      <span
        role={alt ? "img" : undefined}
        aria-label={alt || undefined}
        aria-hidden={alt ? undefined : true}
        style={imageProps.style}
        className={cn(
          "@container grid place-items-center select-none",
          fallback === "badge"
            ? "sticker text-ink overflow-hidden rounded-full text-center font-extrabold"
            : "text-ink-tint font-extrabold",
          className,
          fallbackClassName,
        )}
      >
        {/* Centres itself, so a box the caller sets to `block` still centres it. */}
        <span className="flex size-full items-center justify-center">
          {standIn ? (
            standIn
          ) : fallback === "badge" ? (
            <>
              <span className="text-[clamp(0.75rem,40cqw,4rem)] leading-none @min-[3.5rem]:hidden">
                {letter}
              </span>
              <span className="hidden w-full px-[8%] @min-[3.5rem]:block">
                <span className="line-clamp-2 text-[clamp(0.75rem,15cqw,1.125rem)] leading-tight text-balance wrap-break-word">
                  {name.trim() || letter}
                </span>
              </span>
            </>
          ) : (
            <span
              className={cn(
                "leading-none",
                letter.length > 1
                  ? "text-[clamp(0.75rem,32cqw,4.5rem)]"
                  : "text-[clamp(0.75rem,45cqw,6rem)]",
              )}
            >
              {letter}
            </span>
          )}
        </span>
      </span>
    );
  }

  return (
    // eslint-disable-next-line @next/next/no-img-element
    <img
      {...imageProps}
      src={src}
      alt={alt}
      className={className}
      onError={() => setFailedSrc(src)}
      // An image that failed before React hydrated never fires onError.
      ref={(image) => {
        if (image?.complete && !image.naturalWidth) {
          setFailedSrc(src);
        }
      }}
    />
  );
};
