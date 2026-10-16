import type { PlayBrowseItem } from "@/modules/mainline/features/plays/shared/types";

/* The library, or the Plays you archived (`?view=archived`). */
export type PlaysPageView = "active" | "archived";

export type PlaysPageData = {
  /* Null when the count couldn't be read: the way in stays hidden. */
  archivedCount: number | null;
  plays: PlayBrowseItem[];
  view: PlaysPageView;
};
