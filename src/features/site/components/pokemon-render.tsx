import type { PublicArt, PublicPokemonForm } from "@/config/public-art";
import { cn } from "@/shared/utils/cn";

type PokemonRenderProps = {
  art: PublicArt;
  className?: string;
  loading?: "eager" | "lazy";
  pokemon: PublicPokemonForm;
};

/* A Pokémon's render, decorative: the words around it name the Pokémon. */
export const PokemonRender = ({
  art,
  className,
  loading = "lazy",
  pokemon,
}: PokemonRenderProps) => {
  const src = art.pokemon(pokemon);

  if (!src) {
    return null;
  }

  return (
    // Renders are square but sit differently in their squares, so they keep their own size.
    // eslint-disable-next-line @next/next/no-img-element
    <img
      src={src}
      alt=""
      loading={loading}
      className={cn("max-w-none object-contain", className)}
    />
  );
};
