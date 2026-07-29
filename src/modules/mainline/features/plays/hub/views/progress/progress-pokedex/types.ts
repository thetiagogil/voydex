import type {
  Generation,
  Pokedex,
  PokemonAttributes,
  PokemonForm,
  Type,
} from "@/modules/reference/types";
import type { ViewRow } from "@/shared/types/database-helpers";

export type PokedexProgressState = "missing" | "seen" | "caught";

export type PokedexProgressType = Pick<Type, "id" | "name" | "slug">;

export type MainlinePlayPokedexEntry = {
  displayFormName: string | null;
  imageAlt: string;
  imageUrl: string | null;
  isIncludedInCompletion: boolean;
  isSourceRequiredForCompletion: boolean;
  nationalNumber: number | null;
  pokedexNumber: number;
  primaryType: PokedexProgressType | null;
  secondaryType: PokedexProgressType | null;
  speciesId: number;
  speciesName: string;
  speciesSlug: string;
  state: PokedexProgressState;
};

export type MainlinePlayPokedexScope = {
  entries: MainlinePlayPokedexEntry[];
  id: number;
  isCompletionRelevant: boolean;
  kind: string;
  name: string;
  slug: string;
  sortOrder: number;
};

export type MainlinePlayProgressPokedexData = {
  gameName: string;
  gameSlug: string;
  scopes: MainlinePlayPokedexScope[];
};

export type MainlinePlayPokedexDetailRow =
  ViewRow<"mainline_play_pokedex_detail">;

export type MainlinePlayPokedexSourceRows = {
  attributes: PokemonAttributes[];
  detailRows: MainlinePlayPokedexDetailRow[];
  forms: PokemonForm[];
  generations: Generation[];
  pokedexes: Pokedex[];
  types: Type[];
};

export type PokedexProgressFilter = "all" | "missing" | "seen" | "caught";
export type PokedexInclusionFilter = "all" | "required" | "optional";
export type PokedexUpdateMode = "seen" | "caught";
export type PokedexViewMode = "grid" | "list";
