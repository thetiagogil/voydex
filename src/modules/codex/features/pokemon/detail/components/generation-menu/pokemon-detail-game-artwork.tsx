import Image from "next/image";

import { getPokemonDetailGameInitials } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-game-display";

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
    <span className="text-primary text-xs font-semibold">
      {getPokemonDetailGameInitials(name)}
    </span>
  );
};
