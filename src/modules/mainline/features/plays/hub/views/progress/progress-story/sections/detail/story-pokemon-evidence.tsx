import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";

export const StoryPokemonEvidence = ({
  imageUrl,
  isShiny = false,
  name,
}: {
  imageUrl: string | null;
  isShiny?: boolean;
  name: string;
}) => {
  return (
    <span className="flex min-w-0 items-center gap-2">
      {imageUrl ? (
        <PokemonPortrait
          alt={`${name}${isShiny ? " shiny" : ""} portrait`}
          imageUrl={imageUrl}
          sizes="2.75rem"
          className="size-11 shrink-0 rounded-lg"
          imageClassName="p-1"
        />
      ) : (
        <span
          aria-label={`${name} image unavailable`}
          className="bg-muted/60 text-muted-foreground flex size-11 shrink-0 items-center justify-center rounded-lg border text-sm font-semibold"
        >
          ?
        </span>
      )}

      <span className="min-w-0 truncate text-xs font-semibold">{name}</span>
    </span>
  );
};
