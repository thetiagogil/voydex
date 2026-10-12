import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import { MainlinePlaySectionDestination } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-destination";
import type { BadgeCase } from "@/modules/mainline/features/plays/hub/views/overview/data/badge-case-mapper";
import { BadgeStamp } from "@/modules/mainline/features/plays/shared/components/badge-stamp";
import { formatPlayDate } from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import { appIcons } from "@/shared/components/app-icon";

/* Stamps tilt at rest, each by its own small angle. */
const stampTilts = [-6, 4, -3, 7, -5, 3, -7, 5, -2, 4, -4, 6];

type BadgeCaseSectionProps = {
  badgeCase: BadgeCase;
  storyHref: string;
};

export const BadgeCaseSection = ({
  badgeCase,
  storyHref,
}: BadgeCaseSectionProps) => {
  return (
    <MainlinePlaySectionCard
      title="Gym badges"
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
    </MainlinePlaySectionCard>
  );
};
