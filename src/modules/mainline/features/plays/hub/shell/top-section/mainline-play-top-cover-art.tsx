import Image from "next/image";

import { getGameInitials } from "@/modules/reference/features/games/display/game-display";

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
        <div className="border-app-surface-border/80 bg-background/55 rounded-lg border p-1 shadow-sm">
          <Image
            src={coverImageUrl}
            alt={`${gameName} cover art`}
            width={384}
            height={384}
            priority
            sizes="(min-width: 1024px) 9rem, (min-width: 640px) 8rem, 8rem"
            className="h-auto max-h-32 w-auto rounded-md object-contain sm:max-h-36"
          />
        </div>
      ) : (
        <div className="border-app-surface-border/80 bg-background/55 text-primary flex size-32 items-center justify-center rounded-lg border text-3xl font-semibold tracking-wide shadow-sm sm:size-36">
          {getGameInitials(gameName)}
        </div>
      )}
    </div>
  );
};
