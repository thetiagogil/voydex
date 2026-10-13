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
      {imageUrl ? (
        <PokemonPortrait
          alt=""
          imageUrl={imageUrl}
          sizes="2.75rem"
          className="size-11 shrink-0"
          imageClassName="p-1"
        />
      ) : (
        <span
          aria-hidden
          className="empty-slot size-11 shrink-0 rounded-full"
        />
      )}

      <span className="text-15 min-w-0 truncate font-extrabold">{name}</span>
    </span>
  );
};
