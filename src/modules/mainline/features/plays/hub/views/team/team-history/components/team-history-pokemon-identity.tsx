import type { TeamEventPokemon } from "@/modules/mainline/features/plays/hub/views/team/shared/team-event-payload";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import { cn } from "@/shared/utils/cn";

type TeamHistoryPokemonIdentityProps = {
  className?: string;
  pokemon: TeamEventPokemon;
};

export const TeamHistoryPokemonIdentity = ({
  className,
  pokemon,
}: TeamHistoryPokemonIdentityProps) => {
  return (
    <PokemonPortrait
      alt={`${pokemon.name} portrait`}
      imageUrl={pokemon.imageUrl}
      sizes="3rem"
      className={cn(
        "border-line bg-muted/30 size-12 shrink-0 rounded-lg",
        className,
      )}
      imageClassName="p-1"
    />
  );
};
