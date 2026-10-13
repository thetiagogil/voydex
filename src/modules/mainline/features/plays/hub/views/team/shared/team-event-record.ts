import type {
  MainlinePlayTeamMember,
  MainlinePlayTimelineEvent,
} from "@/modules/mainline/features/plays/hub/types";
import {
  getTeamEventDisplay,
  type TeamEventTextPart,
} from "@/modules/mainline/features/plays/hub/views/team/shared/team-event-display";
import type { MedallionContent } from "@/modules/mainline/features/plays/shared/components/medallion";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";

export type TeamEventRecord = {
  description: string | null;
  /* Retired and removed Pokémon wear a faded medallion. */
  faded: boolean;
  headline: TeamEventTextPart[];
  label: string;
  medallion: MedallionContent;
};

/* Event Pokémon carry no type; a form's type is known from the roster. */
export type TeamEventTypeByFormId = ReadonlyMap<number, PokemonTypeSlug>;

const fadedEventTypes = new Set(["pokemon_removed", "pokemon_retired"]);

/* The types of the forms on the roster, for event medallions. */
export const getTeamEventTypeByFormId = (
  roster: MainlinePlayTeamMember[],
): TeamEventTypeByFormId => {
  const typeByFormId = new Map<number, PokemonTypeSlug>();

  for (const member of roster) {
    if (
      member.form_id !== null &&
      member.primaryType &&
      isPokemonTypeSlug(member.primaryType.slug)
    ) {
      typeByFormId.set(member.form_id, member.primaryType.slug);
    }
  }

  return typeByFormId;
};

/*
 * One Team moment: what kind, the line, the note that came with it, and one
 * medallion. The medallion shows the Pokémon the moment left on the team (what
 * it evolved or changed into, or its replacement) on its type's tint when the
 * roster knows that form, else on the neutral tint; without art it falls back
 * to the event's icon.
 */
export const getTeamEventRecord = (
  event: MainlinePlayTimelineEvent,
  typeByFormId?: TeamEventTypeByFormId,
): TeamEventRecord => {
  const display = getTeamEventDisplay(event);
  const { formId, imageUrl } = display.outcome;
  const body = event.body?.trim();

  return {
    description: body && body !== event.title?.trim() ? body : null,
    faded: fadedEventTypes.has(event.event_type_slug ?? ""),
    headline: display.text,
    label: display.label,
    medallion: imageUrl
      ? {
          imageUrl,
          kind: "pokemon",
          type: formId === null ? null : (typeByFormId?.get(formId) ?? null),
        }
      : { icon: display.icon, kind: "status" },
  };
};
