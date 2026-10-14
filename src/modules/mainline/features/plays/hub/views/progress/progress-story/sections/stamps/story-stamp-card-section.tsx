import type { CSSProperties } from "react";

import { StampGrid } from "@/modules/mainline/features/plays/shared/components/stamp-grid";
import type { PlayStamp } from "@/modules/mainline/features/plays/shared/data/play-stamps";
import { DetailSectionCard } from "@/shared/components/detail-section-card";

/* From tablets up the stamps share one row, wrapping only past ten. */
const maxStampsPerRow = 10;

/*
 * The stamp card, across the top of Story: every badge and the League in one
 * row (wrapping on phones), tilted like stamps, each with its label. The one
 * you just recorded slaps down once; nothing moves on load.
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
    <DetailSectionCard
      title="Stamp card"
      aside="Badges and the League"
      className={className}
      headerClassName="sm:px-7"
      contentClassName="pt-2 sm:px-7"
      style={
        {
          "--stamp-columns": Math.min(stamps.length, maxStampsPerRow),
        } as CSSProperties
      }
    >
      <StampGrid
        captions
        className="grid-cols-5 gap-x-2.5 gap-y-4 px-1 pt-1 pb-1.5 sm:grid-cols-[repeat(var(--stamp-columns),minmax(0,72px))] sm:justify-between sm:gap-x-3 sm:gap-y-5"
        onSlapEnd={onSlapEnd}
        slappingMilestoneId={slappingMilestoneId}
        stamps={stamps}
      />
    </DetailSectionCard>
  );
};
