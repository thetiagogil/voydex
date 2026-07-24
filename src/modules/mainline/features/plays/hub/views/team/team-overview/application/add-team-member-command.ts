import {
  validateAddMainlinePlayPokemon,
  type AddMainlinePlayPokemonInput,
} from "@/modules/mainline/features/plays/hub/views/team/team-overview/domain/team-member-domain";

export type AddMainlinePlayPokemonResult = {
  eventId: string | null;
  playPokemonId: string;
};

export type AddMainlinePlayPokemonRepository = {
  addPlayPokemon: (
    input: AddMainlinePlayPokemonInput,
  ) => Promise<AddMainlinePlayPokemonResult>;
};

export const addMainlinePlayPokemon = async ({
  input,
  repository,
}: {
  input: AddMainlinePlayPokemonInput;
  repository: AddMainlinePlayPokemonRepository;
}): Promise<AddMainlinePlayPokemonResult> => {
  const validatedInput = validateAddMainlinePlayPokemon(input);

  return repository.addPlayPokemon(validatedInput);
};
