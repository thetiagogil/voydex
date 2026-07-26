import {
  validateAddMainlinePlayPokemon,
  type AddMainlinePlayPokemonInput,
} from "../utils/team-member-validation";

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
