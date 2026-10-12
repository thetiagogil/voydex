import Image from "next/image";

import type { GameDetailData } from "@/modules/reference/types";
import { getGameInitials } from "@/modules/reference/features/games/utils/game-display";

type GameDetailCoverArtProps = {
  data: GameDetailData;
};

export const GameDetailCoverArt = ({ data }: GameDetailCoverArtProps) => {
  const initials = getGameInitials(data.game.name);

  return (
    <div className="relative flex h-52 w-full justify-center sm:h-64 md:h-full md:w-max md:justify-start">
      <div className="ring-line bg-card relative flex h-full max-w-full justify-center overflow-hidden rounded-xl p-4 shadow-xs ring-1 sm:p-5 md:justify-start">
        {data.coverImageUrl ? (
          <Image
            src={data.coverImageUrl}
            alt={`${data.game.name} cover art`}
            width={640}
            height={640}
            priority
            sizes="(min-width: 1024px) 18rem, (min-width: 768px) 18rem, 80vw"
            className="relative z-10 h-full w-auto max-w-full rounded-md object-contain object-center drop-shadow-sm md:object-left"
          />
        ) : (
          <div className="bg-surface-2 relative z-10 flex aspect-square h-full items-center justify-center rounded-md">
            <div className="flex size-20 items-center justify-center rounded-xl bg-game-soft text-2xl font-black text-game ring-1 ring-game">
              {initials}
            </div>
          </div>
        )}
      </div>
    </div>
  );
};
