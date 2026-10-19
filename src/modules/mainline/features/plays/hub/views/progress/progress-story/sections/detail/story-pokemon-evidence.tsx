import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";

/* A decision's Pokémon: its art on the portrait circle and its name. */
export const StoryPokemonEvidence = ({
  imageUrl,
  name,
}: {
  imageUrl: string | null;
  name: string;
}) => {
  return (
    <span className="flex min-w-0 items-center gap-2.5">
      <PokemonPortrait
        alt=""
        imageUrl={imageUrl}
        name={name}
        className="size-11 shrink-0"
        imageClassName="p-1"
      />

      <span className="text-15 min-w-0 truncate font-extrabold">{name}</span>
    </span>
  );
};
