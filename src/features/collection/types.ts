import type { BaseInfo } from "@/shared/types";

// =============================================================================
// COLLECTION POKEMON
// =============================================================================

export interface CollectionPokemon {
  id: string;
  playId: string;
  nickname: string | null;
  level: number;
  gender: string | null;
  isShiny: boolean;
  position: number;
  createdAt: string;
  updatedAt: string;
  play: { id: string; name: string; status: string } | null;
  game: {
    id: number;
    slug: string;
    name: string;
    generation: BaseInfo;
  } | null;
  species: BaseInfo;
  form: BaseInfo & { pokemonDbSpriteSlug: string | null };
  types: BaseInfo[];
  ability: BaseInfo | null;
  nature: BaseInfo | null;
}
