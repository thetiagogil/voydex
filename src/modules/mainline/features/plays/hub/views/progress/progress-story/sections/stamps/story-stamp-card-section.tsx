import { StampGrid } from "@/modules/mainline/features/plays/shared/components/stamp-grid";
import type { PlayStamp } from "@/modules/mainline/features/plays/shared/data/play-stamps";
import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

const titleId = "story-stamp-card-title";

/*
 * The stamp card, across the top of Story: every badge and the League in one
 * row, tilted like stamps, each with its label. The stamps name it, so its
 * title is for screen readers only. A row longer than the card scrolls
 * sideways rather than wrapping, so it never takes more than one row of
 * height. The one you just recorded slaps down once; nothing moves on load.
 */
export const StoryStampCardSection = ({
  className,
  onSlapEnd,
  slappingMilestoneId,
  stamps,
}: {
  className?: string;
  /* Called once the just-recorded slap has played. */
  onSlapEnd: () => void;
  /* The milestone recorded a moment ago, whose stamp slaps once. */
  slappingMilestoneId: number | null;
  stamps: PlayStamp[];
}) => {
  return (
    <Card
      role="region"
      aria-labelledby={titleId}
      className={cn("gap-0 px-0 py-4 sm:py-5", className)}
    >
      <h2 id={titleId} className="sr-only">
        Stamp card
      </h2>
      <StampGrid
        captions
        className="no-scrollbar auto-cols-[56px] grid-flow-col justify-between gap-x-3 overflow-x-auto px-5 pt-1 pb-1.5 sm:auto-cols-[64px] sm:px-7"
        onSlapEnd={onSlapEnd}
        slappingMilestoneId={slappingMilestoneId}
        stamps={stamps}
      />
    </Card>
  );
};
