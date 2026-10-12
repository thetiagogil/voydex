import type { AppIconComponent } from "@/shared/components/app-icon";

/* Which medallion a moment wears; the badge and Pokémon art are resolved per event. */
export type TimelineEventMedallion =
  | "milestone"
  | "note"
  | "pokemon"
  | "status";

export type TimelineEventDisplay = {
  icon: AppIconComponent;
  label: string;
  medallion: TimelineEventMedallion;
};

export type TimelineMediaItem = {
  imageUrl: string | null;
  key: string;
  name: string;
};
