import { BadgeStamp } from "@/modules/mainline/features/plays/shared/components/badge-stamp";
import { formatPlayDate } from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import { DetailSectionCard } from "@/shared/components/detail-section-card";

import type { StoryStamp } from "../../types";
import { getStoryMilestoneIcon } from "../../utils/story-milestone-icon";

/* Stamps tilt at rest, each by its own small angle, as on Overview. */
const stampTilts = [-6, 4, -3, 7, -5, 3, -7, 5, -2, 4, -4, 6];

const getStampLabel = ({ milestone, state }: StoryStamp) =>
  state === "earned"
    ? `${milestone.name}, earned${milestone.completedAt ? ` ${formatPlayDate(milestone.completedAt)}` : ""}`
    : `${milestone.name}, ${state === "next" ? "next" : "not earned yet"}`;

const getStampState = (stamp: StoryStamp) => {
  const icon = getStoryMilestoneIcon(stamp.milestone.typeSlug);

  if (stamp.kind === "gym") {
    return stamp.state === "earned"
      ? { kind: "badge" as const, type: stamp.milestone.badgeType }
      : { kind: stamp.state };
  }

  return stamp.state === "earned"
    ? { icon, kind: "earned" as const }
    : { icon, kind: stamp.state };
};

/*
 * The stamp card: every badge and the League, tilted like stamps. The one you
 * just recorded slaps down once; nothing moves on load.
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
  stamps: StoryStamp[];
}) => {
  return (
    <DetailSectionCard
      title="Stamp card"
      aside="Badges and the League"
      className={className}
      headerClassName="sm:px-7"
      contentClassName="pt-2 sm:px-7"
    >
      <ul className="grid grid-cols-[repeat(4,minmax(0,72px))] justify-between gap-4 px-1 pt-1 pb-1.5">
        {stamps.map((stamp, index) => {
          const isSlapping =
            stamp.state === "earned" &&
            stamp.milestone.id === slappingMilestoneId;

          return (
            <li key={stamp.milestone.id} className="flex flex-col">
              <BadgeStamp
                label={getStampLabel(stamp)}
                state={getStampState(stamp)}
                tilt={stampTilts[index % stampTilts.length]}
                slap={isSlapping}
                onSlapEnd={onSlapEnd}
              />
              <span
                aria-hidden
                className="text-ink-3 text-12 mt-4 text-center leading-[1.2] font-bold"
              >
                {stamp.label}
              </span>
            </li>
          );
        })}
      </ul>
    </DetailSectionCard>
  );
};
