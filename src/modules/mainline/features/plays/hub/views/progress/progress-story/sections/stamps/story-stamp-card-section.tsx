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
 * height. Each stamp opens its milestone; recording stamps the list below.
 */
export const StoryStampCardSection = ({
  className,
  onStampSelect,
  stamps,
}: {
  className?: string;
  /* Opens a stamp's milestone in the list and the panel. */
  onStampSelect: (milestoneId: number) => void;
  stamps: PlayStamp[];
}) => {
  return (
    <Card
      role="region"
      aria-labelledby={titleId}
      className={cn("gap-0 px-0 py-2 sm:py-3", className)}
    >
      <h2 id={titleId} className="sr-only">
        Stamp card
      </h2>
      <StampGrid
        captions
        className="no-scrollbar auto-cols-[56px] grid-flow-col justify-between gap-x-3 overflow-x-auto px-5 pt-3 pb-2 sm:auto-cols-[64px] sm:px-7"
        onStampSelect={onStampSelect}
        scrollLabel="Stamps"
        stamps={stamps}
      />
    </Card>
  );
};
