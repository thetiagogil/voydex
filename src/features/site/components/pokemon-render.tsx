import type { PublicArt, PublicPokemonForm } from "@/config/public-art";
import { FallbackImage } from "@/shared/components/fallback-image";
import { cn } from "@/shared/utils/cn";

type PokemonRenderProps = {
  art: PublicArt;
  className?: string;
  /*
   * The stand-in when the render can't show: `badge` (default) where it
   * stands on its own, `letter` inside a tile that already frames it.
   */
  fallback?: "badge" | "letter";
  loading?: "eager" | "lazy";
  pokemon: PublicPokemonForm;
};

/* A Pokémon's render, decorative: the words around it name the Pokémon. */
export const PokemonRender = ({
  art,
  className,
  fallback = "badge",
  loading = "lazy",
  pokemon,
}: PokemonRenderProps) => (
  // Renders are square but sit differently in their squares, so they keep their own size.
  <FallbackImage
    src={art.pokemon(pokemon)}
    name={pokemon.name}
    fallback={fallback}
    loading={loading}
    className={cn("max-w-none object-contain", className)}
  />
);
