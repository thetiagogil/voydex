import type { ReactNode } from "react";

import { getPlayCardEyebrow } from "@/modules/mainline/features/plays/browse/play-browse-display";
import type { PlayBrowseItem } from "@/modules/mainline/features/plays/shared/types";

/*
 * A Play card's words, the same on the Plays list and the Archived list: the
 * game and region eyebrow, the Play's name in Fredoka (`title`, which may be
 * a link) and one line under it.
 */
export const PlayCardHeading = ({
  children,
  play,
  title,
}: {
  /* The quiet line under the name, such as the playtime or when it was archived. */
  children?: ReactNode;
  play: PlayBrowseItem;
  title: ReactNode;
}) => (
  <div className="min-w-0">
    <p className="text-action-ink text-13 font-bold">
      {getPlayCardEyebrow(play)}
    </p>
    <h3 className="text-20 sm:text-24 mt-0.5 line-clamp-2 leading-tight tracking-[-0.01em] wrap-break-word">
      {title}
    </h3>
    {children ? (
      <p className="text-ink-2 text-13 sm:text-14 mt-1 font-semibold">
        {children}
      </p>
    ) : null}
  </div>
);
