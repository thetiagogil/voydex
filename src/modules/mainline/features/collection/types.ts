import type { CollectionGames } from "@/modules/mainline/features/collection/data/collection-games-model";
import type {
  TrainerPokemonEntry,
  TrainerPokemonType,
} from "@/modules/mainline/shared/data/trainer-pokemon-model";

export type CollectionPageData = {
  entries: TrainerPokemonEntry[];
  /* The Games view: every game, with your Plays of each. */
  games: CollectionGames;
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

/* Which view the Collection shows, kept in the address (`?view=games`). */
export type CollectionView = "games" | "pokemon";
