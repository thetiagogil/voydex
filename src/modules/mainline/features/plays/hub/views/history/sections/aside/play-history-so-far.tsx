"use client";

import type { MainlinePlayHistoryData } from "@/modules/mainline/features/plays/hub/types";
import { BadgeStamp } from "@/modules/mainline/features/plays/shared/components/badge-stamp";
import { getBadgeStampState } from "@/modules/mainline/features/plays/shared/components/stamp-grid";
import { describePlayStamp } from "@/modules/mainline/features/plays/shared/data/play-stamps";
import { useViewerClock } from "@/modules/mainline/features/plays/shared/client/use-viewer-clock";
import {
  getPlayTeamMemberImageUrl,
  getPlayTeamMemberName,
} from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { formatPlayDate } from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import {
  formatPlayMoment,
  getPlayCalendarDay,
} from "@/modules/mainline/features/plays/shared/utils/play-moment-date";
import { PokemonSticker } from "@/modules/reference/features/pokemon/components/pokemon-sticker";
import { DetailSectionCard } from "@/shared/components/detail-section-card";

import {
  formatPlayDaysSince,
  getPlayDaysSince,
} from "../../data/play-days-since";

/* The team as small stickers, three to a row. */
const teamLimit = 6;

/*
 * "So far": where the Play stands while you read its past. When it started
 * and how many days ago, its badges (earned, next, ahead) and the team now.
 * Beside History on wide screens, above it on narrow ones.
 */
export const PlayHistorySoFar = ({
  badgeCase,
  className,
  startedOn,
  team,
}: {
  badgeCase: MainlinePlayHistoryData["badgeCase"];
  className?: string;
  startedOn: string | null;
  team: MainlinePlayHistoryData["team"];
}) => {
  const clock = useViewerClock();
  const startedOnLabel = formatPlayDate(startedOn, "");
  const days = getPlayDaysSince(
    startedOn,
    clock.today ?? getPlayCalendarDay(clock.timeZone),
  );
  const members = team.slice(0, teamLimit);

  return (
    <DetailSectionCard
      title="So far"
      aside={days === null ? undefined : formatPlayDaysSince(days)}
      className={className}
      contentClassName="grid gap-5 pt-1"
    >
      <p className="text-ink-2 text-14 font-semibold">
        {startedOnLabel ? `Started ${startedOnLabel}` : "Start day not set"}
      </p>

      {badgeCase ? (
        <div className="grid gap-2.5">
          <p className="text-ink-2 text-14 font-semibold">
            <b className="text-ink font-extrabold">
              {badgeCase.earnedGymCount} of {badgeCase.gymCount}
            </b>{" "}
            badges
          </p>
          <ul
            aria-label="Badges"
            className="grid grid-cols-[repeat(auto-fill,minmax(32px,1fr))] gap-x-2 gap-y-3"
          >
            {badgeCase.stamps.map((stamp, index) => (
              <li key={stamp.milestoneId} className="flex">
                <BadgeStamp
                  label={describePlayStamp(
                    stamp,
                    formatPlayMoment(stamp.completedAt, clock)?.date,
                  )}
                  state={getBadgeStampState(stamp)}
                  tilt={index % 2 ? 4 : -4}
                />
              </li>
            ))}
          </ul>
        </div>
      ) : null}

      {members.length ? (
        <div className="grid gap-2.5">
          <p className="text-ink-2 text-14 font-semibold">
            <b className="text-ink font-extrabold">Your team</b> now
          </p>
          {/* Two to a row in the side column, so names like Butterfree fit. */}
          <ul
            aria-label="Your team"
            className="grid grid-cols-3 gap-2 lg:grid-cols-2"
          >
            {members.map((member) => (
              <li key={member.play_pokemon_id ?? member.slot}>
                <PokemonSticker
                  imageUrl={getPlayTeamMemberImageUrl(member)}
                  name={getPlayTeamMemberName(member)}
                  showTypes={false}
                  types={[member.primaryType, member.secondaryType].filter(
                    (type) => type !== null,
                  )}
                  variant="mini"
                />
              </li>
            ))}
          </ul>
        </div>
      ) : null}
    </DetailSectionCard>
  );
};
