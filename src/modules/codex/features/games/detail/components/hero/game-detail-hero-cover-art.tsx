import Image from "next/image";

import type { GameDetailData } from "@/modules/codex/shared/types";
import { getGameInitials } from "@/shared/domain/games/game-display";

type GameDetailHeroCoverArtProps = {
  data: GameDetailData;
};

export const GameDetailHeroCoverArt = ({
  data,
}: GameDetailHeroCoverArtProps) => {
  const initials = getGameInitials(data.game.name);

  return (
    <div className="relative flex h-72 w-full justify-center sm:h-80 md:h-84 md:justify-end lg:h-86">
      <div className="relative flex h-full max-w-full justify-center md:justify-end">
        {data.coverImageUrl ? (
          <Image
            src={data.coverImageUrl}
            alt={`${data.game.name} cover art`}
            width={640}
            height={640}
            priority
            sizes="(min-width: 1024px) 21.5rem, (min-width: 768px) 21rem, 90vw"
            className="relative z-10 h-full w-auto max-w-full rounded-lg border border-(--pokemon-game-color)/70 object-contain object-right shadow-sm"
          />
        ) : (
          <div className="via-card to-secondary/35 relative z-10 flex aspect-square h-full items-center justify-center rounded-lg border border-(--pokemon-game-color)/70 bg-linear-to-br from-(--pokemon-game-color)/40 shadow-sm">
            <div className="flex size-20 items-center justify-center rounded-2xl bg-(--pokemon-game-color)/16 text-2xl font-black text-(--pokemon-game-color) ring-1 ring-(--pokemon-game-color)/35 backdrop-blur-md">
              {initials}
            </div>
          </div>
        )}
        <div
          aria-hidden
          className="pointer-events-none absolute inset-0 z-20 rounded-lg ring-1 ring-white/10 ring-inset"
        />
      </div>
    </div>
  );
};
