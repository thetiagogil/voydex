import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";
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

  if (eventTypeSlug.includes("milestone")) {
    return {
      icon: appIcons.product.milestone,
      label: event.event_type_name ?? "Milestone completed",
      tone: "milestone",
    };
  }

  if (eventTypeSlug.includes("evolution")) {
    return {
      icon: appIcons.product.activity,
      label: event.event_type_name ?? "Evolution",
      tone: "success",
    };
  }

  if (eventTypeSlug.includes("team") || eventTypeSlug.includes("roster")) {
    return {
      icon: appIcons.product.team,
      label: event.event_type_name ?? "Team change",
      tone: "info",
    };
  }

  if (eventTypeSlug.includes("snapshot")) {
    return {
      icon: appIcons.product.details,
      label: event.event_type_name ?? "Snapshot",
      tone: "neutral",
    };
  }

  if (eventTypeSlug.includes("note")) {
    return {
      icon: appIcons.product.event,
      label: event.event_type_name ?? "Note added",
      tone: "neutral",
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
