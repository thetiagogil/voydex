// =============================================================================
// BASE INFO - Common structure for entities with id, slug, name
// =============================================================================

export interface BaseInfo {
  id: number;
  slug: string;
  name: string;
}

// =============================================================================
// BREADCRUMBS - Navigation breadcrumb item
// =============================================================================

export interface Breadcrumb {
  label: string;
  href: string;
  current?: boolean;
}

// =============================================================================
// POKEMON TYPES
// =============================================================================

export type PokemonType =
  | "normal"
  | "fire"
  | "water"
  | "electric"
  | "grass"
  | "ice"
  | "fighting"
  | "poison"
  | "ground"
  | "flying"
  | "psychic"
  | "bug"
  | "rock"
  | "ghost"
  | "dragon"
  | "dark"
  | "steel"
  | "fairy";
