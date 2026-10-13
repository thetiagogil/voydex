import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";
import type { PokemonForm } from "@/modules/reference/types";
import type { Json } from "@/shared/types/database.types";
import { uniqueNumberIds } from "@/shared/utils/collections";

type JsonRecord = Record<string, Json>;

const isJsonRecord = (value: Json): value is JsonRecord => {
  return Boolean(value && typeof value === "object" && !Array.isArray(value));
};

const getTimelineJsonRecords = (
  events: MainlinePlayTimelineEvent[],
): JsonRecord[] => {
  return events.flatMap((event) =>
    [event.pokemon_refs, event.team_snapshots].flatMap((value) =>
      Array.isArray(value) ? value.filter(isJsonRecord) : [],
    ),
  );
};

export const getMainlineTimelinePokemonFormIds = (
  events: MainlinePlayTimelineEvent[],
): number[] => {
  return uniqueNumberIds(
    getTimelineJsonRecords(events).map((record) =>
      typeof record.form_id === "number" ? record.form_id : null,
    ),
  );
};

const addTimelineSpriteSlugs = (
  value: Json | null,
  spriteSlugByFormId: Map<number, string | null>,
): Json | null => {
  if (!Array.isArray(value)) {
    return value;
  }

  return value.map((item) => {
    if (!isJsonRecord(item) || typeof item.form_id !== "number") {
      return item;
    }

    const spriteSlug = spriteSlugByFormId.get(item.form_id);

    return spriteSlug ? { ...item, sprite_slug: spriteSlug } : item;
  });
};

export const hydrateMainlineTimelinePokemonImages = (
  events: MainlinePlayTimelineEvent[],
  forms: Pick<PokemonForm, "id" | "sprite_slug">[],
): MainlinePlayTimelineEvent[] => {
  const spriteSlugByFormId = new Map(
    forms.map((form) => [form.id, form.sprite_slug]),
  );

  return events.map((event) => ({
    ...event,
    pokemon_refs: addTimelineSpriteSlugs(
      event.pokemon_refs,
      spriteSlugByFormId,
    ),
    team_snapshots: addTimelineSpriteSlugs(
      event.team_snapshots,
      spriteSlugByFormId,
    ),
  }));
};
