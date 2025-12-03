interface BaseInfo {
  id: number;
  slug: string;
  name: string;
  sprite_url?: string | null;
}

interface Breadcrumbs {
  label: string;
  href: string;
  menu?: {
    endpoint: string;
  };
}
[];

type Type =
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
