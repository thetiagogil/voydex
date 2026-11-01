import { useId } from "react";

import { PlayMomentRow } from "@/modules/mainline/features/plays/hub/components/play-moment-row";
import {
  PlayTimeline,
  PlayTimelineItem,
} from "@/modules/mainline/features/plays/hub/components/play-timeline";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/shared/types";
import { PlayMomentTime } from "@/modules/mainline/features/plays/shared/components/play-moment-time";
import type { PlayMomentContext } from "@/modules/mainline/features/plays/shared/data/play-moment-record";
import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { getPlayMomentInstant } from "@/modules/mainline/features/plays/shared/utils/play-moment-date";

import { TeamMemberSectionLabel } from "./team-member-section-label";

export type TeamMemberMomentsData = {
  context: PlayMomentContext;
  events: MainlinePlayTimelineEvent[];
};

/*
 * The selected Pokémon's latest moments, under its moves, on the same line
 * History draws. The Roster reads them with the team, so they redraw with
 * it after every save; a failed read leaves the section out.
 */
export const TeamMemberMoments = ({
  context,
  events,
  member,
}: TeamMemberMomentsData & {
  member: MainlinePlayTeamMember;
}) => {
  const labelId = useId();

  return (
    <div className="mt-5">
      <TeamMemberSectionLabel id={labelId}>
        Latest moments
      </TeamMemberSectionLabel>
      {events.length ? (
        <PlayTimeline labelledBy={labelId}>
          {events.map((event, index) => {
            const happenedAt = getPlayMomentInstant(event);

            return (
              <PlayTimelineItem
                key={event.event_id ?? `${event.title}-${index}`}
              >
                <PlayMomentRow
                  context={context}
                  event={event}
                  variant="timeline"
                  when={
                    happenedAt ? <PlayMomentTime value={happenedAt} /> : null
                  }
                />
              </PlayTimelineItem>
            );
          })}
        </PlayTimeline>
      ) : (
        <p className="text-ink-2 text-14 font-semibold">
          Nothing recorded for {getPlayTeamMemberName(member)} yet.
        </p>
      )}
    </div>
  );
};
