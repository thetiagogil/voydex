import Link from "next/link";

import { PokemonAvatar } from "@/modules/reference/features/pokemon/components/pokemon-avatar";
import { cn } from "@/shared/utils/cn";

type PokemonTileProps = {
  className?: string;
  href: string;
  imageUrl: string | null;
  name: string;
  /* Tints its portrait; neutral when it isn't known. */
  primaryTypeSlug?: string | null;
};

/*
 * A small Pokémon that opens its entry: the one small portrait
 * (`PokemonAvatar`) with its name under it, for lists where a card's number
 * and type dots would be noise (a game's version exclusives, its first
 * partners).
 */
export const PokemonTile = ({
  className,
  href,
  imageUrl,
  name,
  primaryTypeSlug = null,
}: PokemonTileProps) => (
  <Link
    href={href}
    className={cn(
      "flex h-full min-w-0 flex-col items-center gap-1.5 rounded-md px-1 py-1.5 text-center transition-transform duration-150 hover:-translate-y-0.75",
      className,
    )}
  >
    <PokemonAvatar
      className="w-full max-w-18"
      decorative
      imageUrl={imageUrl}
      name={name}
      typeSlug={primaryTypeSlug}
    />
    <b className="text-13 line-clamp-2 w-full leading-tight font-extrabold text-balance wrap-break-word">
      {name}
    </b>
  </Link>
);
