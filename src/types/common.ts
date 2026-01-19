// =============================================================================
// BASE INFO - Common structure for entities with id, slug, name
// =============================================================================

interface BaseInfo {
  id: number;
  slug: string;
  name: string;
}

// =============================================================================
// BREADCRUMBS - Navigation breadcrumb item
// =============================================================================

interface Breadcrumb {
  label: string;
  href: string;
  current?: boolean;
}

// =============================================================================
// POKEMON TYPES
// =============================================================================

type PokemonType =
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
