import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";
import { appIcons } from "@/shared/components/app-icon";

import type {
  TimelineEventDisplay,
  TimelineEventTone,
} from "./recent-history-types";

export const timelineEventToneClassNames: Record<TimelineEventTone, string> = {
  info: "text-info",
  milestone: "text-milestone",
  neutral: "text-muted-foreground",
  success: "text-success",
};

export const getTimelineEventDisplay = (
  event: MainlinePlayTimelineEvent,
): TimelineEventDisplay => {
  const eventTypeSlug = event.event_type_slug ?? "";

  if (eventTypeSlug === "story_milestone") {
    return {
      icon: appIcons.product.milestone,
      label: event.event_type_name ?? "Milestone completed",
      tone: "milestone",
    };
  }

  if (eventTypeSlug === "pokemon_added") {
    return {
      icon: appIcons.product.teamAdded,
      label: event.event_type_name ?? "Pokemon added",
      tone: "info",
    };
  }

  if (eventTypeSlug === "pokemon_evolved") {
    return {
      icon: appIcons.product.evolved,
      label: event.event_type_name ?? "Pokemon evolved",
      tone: "success",
    };
  }

  if (eventTypeSlug === "pokemon_retired") {
    return {
      icon: appIcons.product.retired,
      label: event.event_type_name ?? "Pokemon retired",
      tone: "neutral",
    };
  }

  if (eventTypeSlug === "pokemon_replaced") {
    return {
      icon: appIcons.product.replaced,
      label: event.event_type_name ?? "Pokemon replaced",
      tone: "info",
    };
  }

  if (eventTypeSlug === "pokemon_form_changed") {
    return {
      icon: appIcons.product.formChanged,
      label: event.event_type_name ?? "Form changed",
      tone: "success",
    };
  }

  if (eventTypeSlug === "hall_of_fame") {
    return {
      icon: appIcons.product.completedPlay,
      label: event.event_type_name ?? "Hall of Fame",
      tone: "milestone",
    };
  }

  if (eventTypeSlug === "journal_note") {
    return {
      icon: appIcons.product.journal,
      label: event.event_type_name ?? "Journal note",
      tone: "neutral",
    };
  }

  if (eventTypeSlug === "status_change") {
    return {
      icon: appIcons.views.mainline.plays,
      label: event.event_type_name ?? "Status change",
      tone: "info",
    };
  }

  return {
    icon: appIcons.product.event,
    label: event.event_type_name ?? "Timeline event",
    tone: "neutral",
  };
};

const getTimelineTitle = (event: MainlinePlayTimelineEvent) => {
  return event.title ?? event.milestone_name ?? "Untitled event";
};

export const getTimelineDescription = (event: MainlinePlayTimelineEvent) => {
  return event.body ?? getTimelineTitle(event);
};
