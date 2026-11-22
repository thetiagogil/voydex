import type { ReactNode } from "react";

import { getPlayCardEyebrow } from "@/modules/mainline/features/plays/shared/utils/play-browse-display";
import type { PlayBrowseItem } from "@/modules/mainline/features/plays/shared/types";
import { cn } from "@/shared/utils/cn";

/*
 * A Play card's words, the same on the Plays list and the Archived list: the
 * game and region eyebrow, the Play's name in Baloo 2 (`title`, which may be
 * a link) and one line under it.
 */
export const PlayCardHeading = ({
  children,
  eyebrow,
  play,
  size = "md",
  title,
}: {
  /* The quiet line under the name, such as the playtime or when it was archived. */
  children?: ReactNode;
  /* In place of the game and region, such as Home's "Continue". */
  eyebrow?: string;
  /* `sm` on Home's Continue card: the name a step smaller. */
  size?: "md" | "sm";
  play: PlayBrowseItem;
  title: ReactNode;
}) => (
  <div className="min-w-0">
    <p
      className={
        eyebrow ? "text-select-ink copy-label" : "text-ink-2 copy-label"
      }
    >
      {eyebrow ?? getPlayCardEyebrow(play)}
    </p>
    <h3
      className={cn(
        "title-card descender-room mt-0.5 line-clamp-2 wrap-break-word",
        size === "sm" && "sm:text-20",
      )}
    >
      {title}
    </h3>
    {children ? <p className="text-ink-2 copy-meta mt-1">{children}</p> : null}
  </div>
);
