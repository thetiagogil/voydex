import Image from "next/image";

import { cn } from "@/shared/utils/cn";
import { getGameInitials } from "@/modules/reference/features/games/utils/game-display";

type GameCoverArtProps = {
  className?: string;
  imageUrl: string | null;
  name: string;
};

export const GameCoverArt = ({
  className,
  imageUrl,
  name,
}: GameCoverArtProps) => {
  const initials = getGameInitials(name);

  return (
    <div
      className={cn(
        "bg-primary/10 border-primary/20 relative isolate flex aspect-4/3 items-center justify-center overflow-hidden rounded-xl border",
        className,
      )}
    >
      <div
        aria-hidden
        className="bg-primary/20 absolute inset-8 rounded-full blur-3xl"
      />
      {imageUrl ? (
        <Image
          src={imageUrl}
          alt={`${name} cover art`}
          fill
          sizes="(min-width: 1024px) 360px, (min-width: 640px) 50vw, 100vw"
          className="object-contain p-3 drop-shadow-xl"
        />
      ) : (
        <div className="relative flex flex-col items-center gap-2 px-6 text-center">
          <div className="bg-primary/15 text-primary flex size-12 items-center justify-center rounded-xl text-lg font-black">
            {initials}
          </div>
          <p className="text-primary text-sm font-semibold">{name}</p>
        </div>
      )}
    </div>
  );
};
