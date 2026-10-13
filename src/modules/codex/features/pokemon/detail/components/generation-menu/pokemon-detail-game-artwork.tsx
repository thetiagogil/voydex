import Image from "next/image";

import { getGameInitials } from "@/modules/reference/features/games/utils/game-display";

type PokemonDetailGameArtworkProps = {
  imageUrl: string | null;
  name: string;
};

export const PokemonDetailGameArtwork = ({
  imageUrl,
  name,
}: PokemonDetailGameArtworkProps) => {
  if (imageUrl) {
    return (
      <Image
        src={imageUrl}
        alt=""
        fill
        sizes="40px"
        className="object-contain p-1"
      />
    );
  }

  return (
    <span className="text-12 text-ink-2 font-extrabold">
      {getGameInitials(name)}
    </span>
  );
};
