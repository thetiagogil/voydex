import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";
import {
  getPokemonFormImageUrl,
  getPokemonFormShinyImageUrl,
} from "@/modules/reference/features/pokemon/data/pokemon-images";
import type { Json } from "@/shared/types/database.types";

type JsonRecord = Record<string, Json>;

/* A Pokémon a moment names, as it was when the moment was recorded. */
export type PlayMomentPokemon = {
  formId: number | null;
  formName: string | null;
  imageUrl: string | null;
  key: string;
  level: number | null;
  name: string;
  nickname: string | null;
  role: string | null;
  speciesName: string | null;
};

export type PlayMomentRosterDestination = "Active" | "Reserve";

const isJsonRecord = (value: Json): value is JsonRecord => {
  return Boolean(value && typeof value === "object" && !Array.isArray(value));
};

const getString = (record: JsonRecord, keys: string[]): string | null => {
  for (const key of keys) {
    const value = record[key];

    if (typeof value === "string" && value.trim()) {
      return value;
    }
  }

  return null;
};

const getBoolean = (record: JsonRecord, key: string): boolean => {
  return record[key] === true;
};

const getNumber = (record: JsonRecord, key: string): number | null => {
  return typeof record[key] === "number" ? record[key] : null;
};

const getRosterDestination = (
  value: Json | undefined,
): PlayMomentRosterDestination | null => {
  if (typeof value !== "string") {
    return null;
  }

  const normalizedValue = value.trim().toLowerCase();

  if (normalizedValue === "active") {
    return "Active";
  }

  if (normalizedValue === "reserve" || normalizedValue === "reserves") {
    return "Reserve";
  }

  return null;
};

export const getPlayMomentRosterDestination = (
  event: MainlinePlayTimelineEvent,
): PlayMomentRosterDestination | null => {
  if (!Array.isArray(event.pokemon_refs)) {
    return null;
  }

  for (const value of event.pokemon_refs) {
    if (!isJsonRecord(value)) {
      continue;
    }

    for (const key of [
      "to_roster_state_slug",
      "destination_roster_state_slug",
      "destination",
      "roster_state_slug",
    ]) {
      const destination = getRosterDestination(value[key]);

      if (destination) {
        return destination;
      }
    }
  }

  return null;
};

export const getPlayMomentPokemon = (
  event: MainlinePlayTimelineEvent,
): PlayMomentPokemon[] => {
  if (!Array.isArray(event.pokemon_refs)) {
    return [];
  }

  return event.pokemon_refs.flatMap((value, index) => {
    if (!isJsonRecord(value)) {
      return [];
    }

    const nickname = getString(value, ["nickname"]);
    const formName = getString(value, ["form_name"]);
    const speciesName = getString(value, ["species_name"]);
    const name = nickname ?? formName ?? speciesName ?? "Unknown Pokémon";
    const role = getString(value, ["role"]);
    const formSlug = getString(value, ["slug"]);
    const spriteUrl = getString(value, ["sprite_url", "image_url"]);
    const imageForm = {
      name,
      slug: formSlug,
      sprite_url: spriteUrl,
    };
    const imageUrl = getBoolean(value, "is_shiny")
      ? (getPokemonFormShinyImageUrl(imageForm) ??
        getPokemonFormImageUrl(imageForm))
      : getPokemonFormImageUrl(imageForm);
    const identityValue =
      value.play_pokemon_id ?? value.form_id ?? value.species_id ?? index;

    return [
      {
        formId: getNumber(value, "form_id"),
        formName,
        imageUrl,
        key: `${event.event_id ?? "team-event"}-${role ?? "pokemon"}-${String(identityValue)}`,
        level: getNumber(value, "level"),
        name,
        nickname,
        role,
        speciesName,
      },
    ];
  });
};
