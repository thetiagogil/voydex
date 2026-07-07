import Image from "next/image";

import { getGameInitials } from "@/shared/domain/games/game-display";

type MainlinePlayTopCoverArtProps = {
  coverImageUrl: string | null;
  gameName: string;
};

export const MainlinePlayTopCoverArt = ({
  coverImageUrl,
  gameName,
}: MainlinePlayTopCoverArtProps) => {
  return (
    <div className="flex justify-center lg:justify-start">
      {coverImageUrl ? (
        <Image
          src={coverImageUrl}
          alt={`${gameName} cover art`}
          width={384}
          height={384}
          priority
          sizes="(min-width: 1024px) 11rem, (min-width: 640px) 10rem, 70vw"
          className="h-auto max-h-36 w-auto rounded-lg object-contain sm:max-h-40"
        />
      ) : (
        <div className="bg-muted text-primary flex h-36 min-w-36 items-center justify-center rounded-lg text-3xl font-semibold tracking-wide sm:h-40 sm:min-w-40">
          {getGameInitials(gameName)}
        </div>
      )}
    </div>
  );
};
