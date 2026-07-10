const POKEMONDB_HOME_SPRITE_BASE_URL =
  "https://img.pokemondb.net/sprites/home/normal";
const POKEMONDB_HOME_SHINY_SPRITE_BASE_URL =
  "https://img.pokemondb.net/sprites/home/shiny";

type PokemonImageForm = {
  name: string;
  sprite_slug: string | null;
  sprite_url?: string | null;
};

export const getPokemonFormImageUrl = (form: PokemonImageForm | null) => {
  if (!form) return null;

  if (form.sprite_url) {
    return form.sprite_url;
  }

  if (!form.sprite_slug) {
    return null;
  }

  return `${POKEMONDB_HOME_SPRITE_BASE_URL}/${form.sprite_slug}.png`;
};

export const getPokemonFormShinyImageUrl = (form: PokemonImageForm | null) => {
  if (!form?.sprite_slug) {
    return null;
  }

  return `${POKEMONDB_HOME_SHINY_SPRITE_BASE_URL}/${form.sprite_slug}.png`;
};

export const getPokemonFormImageAlt = (form: PokemonImageForm | null) => {
  return form ? `${form.name} artwork` : "";
};
