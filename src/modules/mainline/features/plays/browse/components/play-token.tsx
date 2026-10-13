"use client";

import { useState } from "react";

import { getGameInitials } from "@/modules/reference/features/games/utils/game-display";

type PlayTokenProps = {
  coverImageUrl: string | null;
  gameName: string;
};

/*
 * A Play's cover on its soft game tile: the one game-colour fill on a Plays
 * card. It is the Play's own, so it keeps a white border and a game lip.
 * Wear it inside `game-scope`.
 */
export const PlayToken = ({ coverImageUrl, gameName }: PlayTokenProps) => {
  const [failedImageUrl, setFailedImageUrl] = useState<string | null>(null);
  const showCover = Boolean(coverImageUrl) && failedImageUrl !== coverImageUrl;
  const markCoverFailed = () => {
    setFailedImageUrl(coverImageUrl);
  };

  return (
    <div className="grid h-34 place-items-center overflow-hidden rounded-lg border-4 border-white bg-[color-mix(in_oklab,var(--game)_14%,var(--surface))] px-1.5 shadow-[0_4px_0_var(--game-lip)]">
      {showCover && coverImageUrl ? (
        // Intrinsic width keeps each platform's box shape.
        // eslint-disable-next-line @next/next/no-img-element
        <img
          src={coverImageUrl}
          alt={`${gameName} cover art`}
          className="shadow-cover block max-h-28 w-auto max-w-full rounded-sm"
          onError={markCoverFailed}
          ref={(image) => {
            // A cover that failed before hydration never fires onError.
            if (image?.complete && !image.naturalWidth) {
              markCoverFailed();
            }
          }}
        />
      ) : (
        <span
          role="img"
          aria-label={`${gameName} cover art`}
          className="bg-game-strong font-display shadow-cover text-24 grid aspect-3/4 h-24 place-items-center rounded-sm font-semibold text-white"
        >
          {getGameInitials(gameName)}
        </span>
      )}
    </div>
  );
};
