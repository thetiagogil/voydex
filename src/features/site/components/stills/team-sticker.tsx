import { PokemonRender } from "@/features/site/components/stills/pokemon-render";
import type { SiteArt, SitePokemon } from "@/features/site/types";
import { getTypeColourStyle } from "@/features/site/utils/type-colour";

type TeamStickerProps = {
  art: SiteArt;
  pokemon: SitePokemon;
};

/* A drawing of a small team sticker: owned, so type-tinted with a white border and a tinted lip. */
export const TeamSticker = ({ art, pokemon }: TeamStickerProps) => (
  <span
    style={getTypeColourStyle(pokemon.type)}
    className="type-tint grid aspect-square place-items-center rounded-md border-[3px] border-white shadow-[0_3px_0_color-mix(in_oklab,var(--t)_38%,var(--lip))]"
  >
    <PokemonRender art={art} pokemon={pokemon} className="size-[88%]" />
  </span>
);
