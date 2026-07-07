import Image from "next/image";

import type { GameDetailData } from "@/modules/codex/shared/types";

type GameDetailHeroBackdropProps = {
  data: GameDetailData;
};

export const GameDetailHeroBackdrop = ({
  data,
}: GameDetailHeroBackdropProps) => {
  if (!data.coverImageUrl) {
    return (
      <div
        aria-hidden
        className="from-background/30 via-card/50 to-card/80 absolute inset-0 bg-linear-to-r"
      />
    );
  }

  return (
    <>
      <Image
        src={data.coverImageUrl}
        alt=""
        fill
        aria-hidden
        priority
        sizes="100vw"
        className="scale-110 object-cover opacity-25 blur-2xl saturate-125"
      />
      <div
        aria-hidden
        className="from-background/24 via-card/68 to-card/94 absolute inset-0 bg-linear-to-r"
      />
      <div
        aria-hidden
        className="absolute inset-0 bg-radial-[at_34%_44%] from-(--pokemon-game-color)/22 via-transparent to-transparent"
      />
    </>
  );
};
