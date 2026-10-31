import type { PlayBrowseItem } from "@/modules/mainline/features/plays/shared/types";
import { getPlayStatusTone } from "@/modules/mainline/shared/utils/play-status-tone";
import { StatusBadge } from "@/shared/components/status-badge";

/* A Play's lifecycle status as the list and the grid both mark it. */
export const PlayCardStatus = ({
  className,
  play,
}: {
  className?: string;
  play: Pick<PlayBrowseItem, "status_name" | "status_slug">;
}) =>
  play.status_name ? (
    <StatusBadge
      size="xs"
      tone={getPlayStatusTone(play.status_slug)}
      className={className}
    >
      {play.status_name}
    </StatusBadge>
  ) : null;
