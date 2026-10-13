import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { MainlinePlaySectionDestination } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-destination";
import type { BadgeCase } from "@/modules/mainline/features/plays/hub/views/overview/data/badge-case-mapper";
import type { OverviewAheadMilestone } from "@/modules/mainline/features/plays/hub/views/overview/data/overview-milestones-mapper";
import { BadgeStamp } from "@/modules/mainline/features/plays/shared/components/badge-stamp";
import { formatPlayDate } from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

/* Stamps tilt at rest, each by its own small angle. */
const stampTilts = [-6, 4, -3, 7, -5, 3, -7, 5, -2, 4, -4, 6];

type BadgeCaseSectionProps = {
  aheadMilestones: OverviewAheadMilestone[];
  badgeCase: BadgeCase;
  storyHref: string;
};

/*
 * The stamps, then what is ahead in the journey: the next objective and the
 * open milestones after it, numbered as Story numbers them.
 */
export const BadgeCaseSection = ({
  aheadMilestones,
  badgeCase,
  storyHref,
}: BadgeCaseSectionProps) => {
  return (
    <DetailSectionCard
      title="Gym badges"
      aside={
        badgeCase.earnedGymCount === 0
          ? `${badgeCase.gymCount} to earn`
          : undefined
      }
      action={<MainlinePlaySectionDestination href={storyHref} label="Story" />}
      contentClassName="pt-2"
    >
      <ul className="grid grid-cols-5 gap-x-2.5 gap-y-4 p-1 sm:grid-cols-9">
        {badgeCase.stamps.map((stamp, index) => (
          <li key={stamp.milestoneId}>
            <BadgeStamp
              label={
                stamp.state === "earned"
                  ? `${stamp.name}, earned${stamp.completedAt ? ` ${formatPlayDate(stamp.completedAt)}` : ""}`
                  : `${stamp.name}, ${stamp.state === "next" ? "next" : "not earned yet"}`
              }
              state={
                stamp.kind === "gym"
                  ? stamp.state === "earned"
                    ? { kind: "badge", type: stamp.type }
                    : { kind: stamp.state }
                  : stamp.state === "earned"
                    ? { icon: appIcons.milestones.champion, kind: "earned" }
                    : { icon: appIcons.milestones.champion, kind: stamp.state }
              }
              tilt={stampTilts[index % stampTilts.length]}
            />
          </li>
        ))}
      </ul>
      <div className="text-ink-2 mt-5 flex flex-wrap justify-between gap-x-3 gap-y-1 text-[13.5px] font-semibold">
        <span>
          <b className="text-ink font-extrabold">
            {badgeCase.earnedGymCount} of {badgeCase.gymCount}
          </b>{" "}
          badges
          {badgeCase.lastEarnedAt
            ? ` · last on ${formatPlayDate(badgeCase.lastEarnedAt)}`
            : null}
        </span>
        <span>
          {badgeCase.nextName
            ? `${badgeCase.nextName} next`
            : "League complete"}
        </span>
      </div>
      {aheadMilestones.length ? (
        <ol aria-label="Ahead in the story" className="mt-4.5">
          {aheadMilestones.map(({ milestone, sequence }, index) => {
            const isDone = Boolean(milestone.is_completed);

            return (
              <li
                key={milestone.milestone_id}
                className="border-line text-14 grid grid-cols-[28px_minmax(0,1fr)_auto] items-center gap-3 border-t py-2.5"
              >
                <span
                  aria-hidden
                  className={cn(
                    "text-12 grid size-7 place-items-center rounded-full font-extrabold tabular-nums",
                    index === 0
                      ? "bg-surface text-game-deep shadow-[inset_0_0_0_2px_var(--game)]"
                      : "text-ink-3 shadow-[inset_0_0_0_1.5px_var(--line)]",
                  )}
                >
                  {isDone ? (
                    <AppIcon icon={appIcons.product.completion} size="sm" />
                  ) : (
                    sequence
                  )}
                </span>
                <span
                  className={cn(
                    "truncate font-extrabold",
                    isDone && "text-ink-3 line-through",
                  )}
                >
                  <span className="sr-only">Milestone {sequence}, </span>
                  {milestone.milestone_name}
                </span>
                <span className="text-ink-3 text-13 font-semibold">
                  {index === 0
                    ? "Next"
                    : isDone
                      ? "Recorded"
                      : milestone.milestone_type_name}
                </span>
              </li>
            );
          })}
        </ol>
      ) : null}
    </DetailSectionCard>
  );
};
