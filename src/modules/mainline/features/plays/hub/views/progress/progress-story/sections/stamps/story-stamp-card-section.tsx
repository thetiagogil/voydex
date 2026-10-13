import { StampGrid } from "@/modules/mainline/features/plays/shared/components/stamp-grid";
import type { PlayStamp } from "@/modules/mainline/features/plays/shared/data/play-stamps";
import { DetailSectionCard } from "@/shared/components/detail-section-card";

/*
 * The stamp card: every badge and the League, tilted like stamps, each with
 * its label. The one you just recorded slaps down once; nothing moves on load.
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
    >
      <StampGrid
        captions
        className="grid-cols-[repeat(4,minmax(0,72px))] justify-between gap-4 px-1 pt-1 pb-1.5"
        onSlapEnd={onSlapEnd}
        slappingMilestoneId={slappingMilestoneId}
        stamps={stamps}
      />
    </DetailSectionCard>
  );
};
