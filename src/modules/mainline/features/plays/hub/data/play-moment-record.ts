import {
  getPlayMomentTeamLine,
  type PlayMomentTextPart,
} from "@/modules/mainline/features/plays/hub/data/play-moment-team-line";
import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";
import type { MedallionContent } from "@/modules/mainline/features/plays/shared/components/medallion";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import { appIcons, type AppIconComponent } from "@/shared/components/app-icon";

/*
 * One recorded moment of a Play, the same wherever moments show (Overview's
 * recent moments, Team history): what kind, the line, the note that came
 * with it and one medallion.
 */
export type PlayMomentRecord = {
  description: string | null;
  /* Retired and removed Pokémon wear a faded medallion. */
  faded: boolean;
  headline: PlayMomentTextPart[];
  label: string;
  medallion: MedallionContent;
};

/*
 * What a moment's medallion can know beyond the event: a gym milestone's
 * badge type, and the types of the forms on the team (event Pokémon carry
 * no type).
 */
export type PlayMomentContext = {
  badgeTypeByMilestoneId?: ReadonlyMap<number, PokemonTypeSlug>;
  typeByFormId?: ReadonlyMap<number, PokemonTypeSlug>;
};

/* The types of the forms on a team, for moment medallions. */
export const getPlayMomentTypeByFormId = (
  members: readonly {
    form_id: number | null;
    primaryType: { slug: string } | null;
  }[],
): ReadonlyMap<number, PokemonTypeSlug> => {
  const typeByFormId = new Map<number, PokemonTypeSlug>();

  for (const member of members) {
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

const teamEventTypeSlugs = new Set([
  "pokemon_added",
  "pokemon_evolved",
  "pokemon_form_changed",
  "pokemon_moved",
  "pokemon_removed",
  "pokemon_replaced",
  "pokemon_retired",
  "pokemon_returned",
  "pokemon_updated",
]);

const fadedEventTypes = new Set(["pokemon_removed", "pokemon_retired"]);

type OtherMomentKind = {
  fallbackLabel: string;
  icon: AppIconComponent;
  medallion: "milestone" | "note" | "status";
};

const otherMomentKinds: Record<string, OtherMomentKind> = {
  hall_of_fame: {
    fallbackLabel: "Hall of Fame",
    icon: appIcons.milestones.hallOfFame,
    medallion: "milestone",
  },
  journal_note: {
    fallbackLabel: "Note",
    icon: appIcons.actions.edit,
    medallion: "note",
  },
  status_change: {
    fallbackLabel: "Status change",
    icon: appIcons.product.journey,
    medallion: "status",
  },
  story_milestone: {
    fallbackLabel: "Milestone completed",
    icon: appIcons.milestones.story,
    medallion: "milestone",
  },
};

const unknownMomentKind: OtherMomentKind = {
  fallbackLabel: "Timeline event",
  icon: appIcons.product.event,
  medallion: "status",
};

const getDescription = (event: MainlinePlayTimelineEvent) => {
  const body = event.body?.trim();

  return body && body !== event.title?.trim() ? body : null;
};

/*
 * A Team moment wears the Pokémon it left on the team (what it evolved or
 * changed into, or its replacement) on its type's tint when the team knows
 * that form; without art it falls back to the moment's icon. A milestone
 * wears its badge, or gold; a note is warm; anything else is neutral.
 */
export const getPlayMomentRecord = (
  event: MainlinePlayTimelineEvent,
  context: PlayMomentContext = {},
): PlayMomentRecord => {
  const eventTypeSlug = event.event_type_slug ?? "";

  if (teamEventTypeSlugs.has(eventTypeSlug)) {
    const line = getPlayMomentTeamLine(event);
    const { formId, imageUrl } = line.outcome;

    return {
      description: getDescription(event),
      faded: fadedEventTypes.has(eventTypeSlug),
      headline: line.text,
      label: line.label,
      medallion: imageUrl
        ? {
            imageUrl,
            kind: "pokemon",
            type:
              formId === null
                ? null
                : (context.typeByFormId?.get(formId) ?? null),
          }
        : { icon: line.icon, kind: "status" },
    };
  }

  const kind = otherMomentKinds[eventTypeSlug] ?? unknownMomentKind;
  const badgeType =
    event.milestone_id === null
      ? undefined
      : context.badgeTypeByMilestoneId?.get(event.milestone_id);
  const medallion: MedallionContent =
    kind.medallion === "milestone"
      ? badgeType
        ? { kind: "badge", type: badgeType }
        : { icon: kind.icon, kind: "gold" }
      : { icon: kind.icon, kind: kind.medallion };

  return {
    description: getDescription(event),
    faded: false,
    headline: [
      {
        text:
          event.title ??
          event.milestone_name ??
          event.event_type_name ??
          kind.fallbackLabel,
      },
    ],
    label: event.event_type_name ?? kind.fallbackLabel,
    medallion,
  };
};
