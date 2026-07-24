import { getGameInitials } from "@/modules/reference/features/games/utils/game-display";

type MainlinePlayTopCoverArtProps = {
  coverImageUrl: string | null;
  gameName: string;
};

export const MainlinePlayTopCoverArt = ({
  coverImageUrl,
  gameName,
}: MainlinePlayTopCoverArtProps) => {
  return (
    <div className="flex justify-center sm:justify-start">
      {coverImageUrl ? (
        <div className="border-app-surface-border/80 bg-background/55 h-36 shrink-0 overflow-hidden rounded-lg border p-1 shadow-sm">
          {/* Intrinsic width is required because game packaging uses different aspect ratios. */}
          {/* eslint-disable-next-line @next/next/no-img-element */}
          <img
            src={coverImageUrl}
            alt={`${gameName} cover art`}
            className="h-full w-auto max-w-none rounded-md object-contain"
          />
        </div>
      ) : (
        <div className="border-app-surface-border/80 bg-background/55 text-primary flex h-36 w-24 shrink-0 items-center justify-center rounded-lg border px-2 text-center text-2xl font-semibold tracking-wide shadow-sm">
          {getGameInitials(gameName)}
        </div>
      )}
    </div>
  );
};
