import type {
  TrainerPokemonEntry,
  TrainerPokemonType,
} from "@/modules/mainline/shared/data/trainer-pokemon-model";

export type CollectionPageData = {
  entries: TrainerPokemonEntry[];
  /* Distinct games across the Plays the Collection's Pokémon were in. */
  gameCount: number;
  /* The newest Play still going, where "Add to your team" leads. */
  latestPlayId: string | null;
  /* Plays the Collection's Pokémon were in. */
  playCount: number;
  /* Every Play the trainer has, used for the empty states. */
  totalPlayCount: number;
  types: TrainerPokemonType[];
};
