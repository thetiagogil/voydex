import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";
import { appIcons } from "@/shared/components/app-icon";

import type { TimelineEventDisplay } from "./recent-history-types";

export const getTimelineEventDisplay = (
  event: MainlinePlayTimelineEvent,
): TimelineEventDisplay => {
  const eventTypeSlug = event.event_type_slug ?? "";

  if (eventTypeSlug === "story_milestone") {
    return {
      icon: appIcons.milestones.story,
      label: event.event_type_name ?? "Milestone completed",
      medallion: "milestone",
    };
  }

  if (eventTypeSlug === "pokemon_added") {
    return {
      icon: appIcons.product.teamAdded,
      label: event.event_type_name ?? "Pokémon added",
      medallion: "pokemon",
    };
  }

  if (eventTypeSlug === "pokemon_evolved") {
    return {
      icon: appIcons.product.evolved,
      label: event.event_type_name ?? "Pokémon evolved",
      medallion: "pokemon",
    };
  }

  if (eventTypeSlug === "pokemon_retired") {
    return {
      icon: appIcons.product.retired,
      label: event.event_type_name ?? "Pokémon retired",
      medallion: "pokemon",
    };
  }

  if (eventTypeSlug === "pokemon_replaced") {
    return {
      icon: appIcons.product.replaced,
      label: event.event_type_name ?? "Pokémon replaced",
      medallion: "pokemon",
    };
  }

  if (eventTypeSlug === "pokemon_form_changed") {
    return {
      icon: appIcons.product.formChanged,
      label: event.event_type_name ?? "Form changed",
      medallion: "pokemon",
    };
  }

  if (eventTypeSlug === "hall_of_fame") {
    return {
      icon: appIcons.milestones.hallOfFame,
      label: event.event_type_name ?? "Hall of Fame",
      medallion: "milestone",
    };
  }

  if (eventTypeSlug === "journal_note") {
    return {
      icon: appIcons.actions.edit,
      label: event.event_type_name ?? "Note",
      medallion: "note",
    };
  }

  if (eventTypeSlug === "status_change") {
    return {
      icon: appIcons.product.journey,
      label: event.event_type_name ?? "Status change",
      medallion: "status",
    };
  }

  return {
    icon: appIcons.product.event,
    label: event.event_type_name ?? "Timeline event",
    medallion: "status",
  };
};

const getTimelineTitle = (event: MainlinePlayTimelineEvent) => {
  return event.title ?? event.milestone_name ?? "Untitled event";
};

export const getTimelineDescription = (event: MainlinePlayTimelineEvent) => {
  return event.body ?? getTimelineTitle(event);
};
