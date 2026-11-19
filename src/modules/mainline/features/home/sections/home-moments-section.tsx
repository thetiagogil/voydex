import type { ReactNode } from "react";

import { appRoutes } from "@/config/routes";

import type { HomePlay } from "@/modules/mainline/features/home/data/home-play-model";
import type { HomeMomentsData } from "@/modules/mainline/features/home/types";
import { PlayMomentRow } from "@/modules/mainline/features/plays/shared/components/play-moment-row";
import { toPlayMomentContext } from "@/modules/mainline/features/plays/shared/data/play-moment-record";
import type { MedallionContent } from "@/modules/mainline/features/plays/shared/components/medallion";
import { RecordRow } from "@/modules/mainline/features/plays/shared/components/record-row";
import { PlayMomentTime } from "@/modules/mainline/features/plays/shared/components/play-moment-time";
import { formatPlayDate } from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import { getPlayMomentInstant } from "@/modules/mainline/features/plays/shared/utils/play-moment-date";
import { appIcons } from "@/shared/components/app-icon";
import { SectionHead } from "@/shared/components/section-head";

type HomeMomentsSectionProps = {
  moments: HomeMomentsData;
  play: HomePlay;
};

type Beat = {
  body: ReactNode;
  headline: ReactNode;
  key: string;
  kicker: ReactNode;
  medallion: MedallionContent;
};

/* With nothing recorded yet: where the Play began, and what comes next. */
const getStartBeats = (play: HomePlay): Beat[] => {
  const position = play.storyPosition;

  return [
    {
      body: play.trainerName ? `Trainer ${play.trainerName}` : play.gameName,
      headline: "The journey began",
      key: "start",
      kicker: formatPlayDate(play.startedOn, "Start"),
      medallion: play.lead?.imageUrl
        ? {
            imageUrl: play.lead.imageUrl,
            kind: "pokemon",
            name: play.lead.name,
            type: null,
          }
        : { icon: appIcons.milestones.story, kind: "start" },
    },
    ...(position
      ? [
          {
            body:
              position.kind === "complete"
                ? "Journey complete"
                : play.storyPercent === null
                  ? "Your next objective"
                  : `${play.storyPercent}% of the story`,
            headline:
              position.kind === "complete" ? "Hall of Fame" : position.name,
            key: "next",
            kicker: position.kind === "complete" ? "Completed" : "Next",
            medallion:
              position.kind === "complete"
                ? ({
                    icon: appIcons.milestones.hallOfFame,
                    kind: "gold",
                  } as const)
                : ({
                    icon: appIcons.milestones.story,
                    kind: "status",
                  } as const),
          },
        ]
      : []),
  ];
};

/* How many the row holds: three cards across from 1024px. */
const HOME_MOMENTS_SHOWN = 3;

/*
 * Latest moments: the newest things recorded in the picked Play, newest
 * first, as History draws its months (a card each, three across from
 * 1024px, a list on the line below that), with the way on to its History. A
 * Play with nothing recorded shows where it began and where it stands.
 */
export const HomeMomentsSection = ({
  moments,
  play,
}: HomeMomentsSectionProps) => {
  const context = toPlayMomentContext(moments.context);
  /* The page reads them oldest first. */
  const recorded = moments.events.toReversed().slice(0, HOME_MOMENTS_SHOWN);

  return (
    <section
      aria-labelledby="home-moments"
      className="mt-8 grid gap-4 sm:mt-10"
    >
      <SectionHead
        title="Latest moments"
        titleId="home-moments"
        aside={play.label}
        more={
          recorded.length
            ? {
                href: appRoutes.mainlinePlayHistory(play.id),
                label: "History",
              }
            : undefined
        }
      />
      <ol
        aria-label="Latest moments"
        className="grid gap-3 lg:grid-cols-3 lg:gap-4"
      >
        {recorded.length
          ? recorded.map((event, index) => {
              const happenedAt = getPlayMomentInstant(event);

              return (
                <li
                  key={event.event_id ?? `moment-${index}`}
                  className="min-w-0"
                >
                  <PlayMomentRow
                    context={context}
                    event={event}
                    placement="grid"
                    variant="timeline"
                    when={
                      happenedAt ? <PlayMomentTime value={happenedAt} /> : null
                    }
                  />
                </li>
              );
            })
          : getStartBeats(play).map((beat) => (
              <li key={beat.key} className="min-w-0">
                <RecordRow
                  description={beat.body}
                  headline={beat.headline}
                  kicker={beat.kicker}
                  medallion={beat.medallion}
                  placement="grid"
                  variant="timeline"
                />
              </li>
            ))}
      </ol>
    </section>
  );
};
