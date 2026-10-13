import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";
import {
  getPokemonFormImageUrl,
  getPokemonFormShinyImageUrl,
} from "@/modules/reference/features/pokemon/data/pokemon-images";
import type { Json } from "@/shared/types/database.types";

type JsonRecord = Record<string, Json | undefined>;

/* The Pokémon a moment is about after it happened: what it evolved or changed into, or what replaced it. */
const outcomeRoles = ["to", "replacement", "subject"];

const isJsonRecord = (value: Json | undefined): value is JsonRecord => {
  return Boolean(value && typeof value === "object" && !Array.isArray(value));
};

const getString = (record: JsonRecord, keys: string[]) => {
  for (const key of keys) {
    const value = record[key];

    if (typeof value === "string" && value.trim()) {
      return value;
    }
  }

  return null;
};

const getImageUrl = (record: JsonRecord) => {
  const imageForm = {
    name:
      getString(record, ["nickname", "species_name", "form_name", "name"]) ??
      "Pokémon",
    sprite_slug: getString(record, ["sprite_slug", "form_sprite_slug"]),
    sprite_url: getString(record, ["sprite_url", "image_url", "artwork_url"]),
  };

  return record.is_shiny === true || record.shiny === true
    ? (getPokemonFormShinyImageUrl(imageForm) ??
        getPokemonFormImageUrl(imageForm))
    : getPokemonFormImageUrl(imageForm);
};

/*
 * The art for a moment's medallion: the outcome Pokémon of an evolution, form
 * change or replacement, else the first Pokémon with an image.
 */
export const getTimelineEventImageUrl = (
  event: MainlinePlayTimelineEvent,
): string | null => {
  const refs = Array.isArray(event.pokemon_refs)
    ? event.pokemon_refs.filter(isJsonRecord)
    : [];
  const withImages = refs
    .map((record) => ({ imageUrl: getImageUrl(record), record }))
    .filter((ref): ref is { imageUrl: string; record: JsonRecord } =>
      Boolean(ref.imageUrl),
    );

  for (const role of outcomeRoles) {
    const match = withImages.find((ref) => ref.record.role === role);

    if (match) {
      return match.imageUrl;
    }
  }

  return withImages[0]?.imageUrl ?? null;
};
