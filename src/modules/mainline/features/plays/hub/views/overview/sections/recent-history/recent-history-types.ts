import type { AppIconComponent } from "@/shared/components/app-icon";

export type TimelineEventTone = "info" | "milestone" | "neutral" | "success";

export type TimelineEventDisplay = {
  icon: AppIconComponent;
  label: string;
  tone: TimelineEventTone;
};

export type TimelineMediaItem = {
  imageUrl: string | null;
  key: string;
  name: string;
};
