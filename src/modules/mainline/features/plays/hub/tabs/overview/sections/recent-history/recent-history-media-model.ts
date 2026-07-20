import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";
import {
  getPokemonFormImageUrl,
  getPokemonFormShinyImageUrl,
} from "@/modules/reference/features/pokemon/data/pokemon-images";
import type { Json } from "@/shared/types/database.types";

import type { TimelineMediaItem } from "./recent-history-types";

type JsonRecord = Record<string, Json | undefined>;

const timelineMediaLimit = 6;

const isJsonRecord = (value: Json | null | undefined): value is JsonRecord => {
  return Boolean(value && typeof value === "object" && !Array.isArray(value));
};

const getJsonString = (record: JsonRecord, keys: string[]): string | null => {
  for (const key of keys) {
    const value = record[key];

    if (typeof value === "string" && value.trim()) {
      return value;
    }
  }

  return null;
};

const getJsonBoolean = (record: JsonRecord, keys: string[]): boolean | null => {
  for (const key of keys) {
    const value = record[key];

    if (typeof value === "boolean") {
      return value;
    }
  }

  return null;
};

const getJsonArray = (value: Json | null | undefined): Json[] => {
  if (Array.isArray(value)) {
    return value;
  }

  if (!isJsonRecord(value)) {
    return [];
  }

  const nestedArrays = ["items", "members", "pokemon", "refs", "snapshots"];

  for (const key of nestedArrays) {
    const nestedValue = value[key];

    if (Array.isArray(nestedValue)) {
      return nestedValue;
    }
  }

  return [value];
};

const getTimelineMediaFromRecord = (
  record: JsonRecord,
  index: number,
): TimelineMediaItem => {
  const name =
    getJsonString(record, [
      "nickname",
      "display_name",
      "pokemon_name",
      "species_name",
      "form_name",
      "target_species_name",
      "source_species_name",
      "name",
    ]) ?? "Unknown Pokemon";
  const spriteSlug = getJsonString(record, [
    "sprite_slug",
    "form_sprite_slug",
    "target_sprite_slug",
    "source_sprite_slug",
  ]);
  const spriteUrl = getJsonString(record, [
    "sprite_url",
    "image_url",
    "artwork_url",
    "target_sprite_url",
    "source_sprite_url",
  ]);
  const isShiny = getJsonBoolean(record, ["is_shiny", "shiny"]);
  const imageForm = {
    name,
    sprite_slug: spriteSlug,
    sprite_url: spriteUrl,
  };
  const imageUrl = isShiny
    ? (getPokemonFormShinyImageUrl(imageForm) ??
      getPokemonFormImageUrl(imageForm))
    : getPokemonFormImageUrl(imageForm);

  return {
    imageUrl,
    key:
      getJsonString(record, ["id", "play_pokemon_id", "pokemon_id", "slug"]) ??
      `${name}-${index}`,
    name,
  };
};

export const getTimelineMedia = (
  event: MainlinePlayTimelineEvent,
): TimelineMediaItem[] => {
  const mediaRecords = [
    ...getJsonArray(event.pokemon_refs),
    ...getJsonArray(event.team_snapshots),
  ];

  return mediaRecords
    .map((record, index) =>
      isJsonRecord(record) ? getTimelineMediaFromRecord(record, index) : null,
    )
    .filter((item): item is TimelineMediaItem => Boolean(item))
    .slice(0, timelineMediaLimit);
};
