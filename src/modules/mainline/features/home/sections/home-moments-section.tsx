import { Fragment, type ReactNode } from "react";

import type { HomePlay } from "@/modules/mainline/features/home/data/home-play-model";
import type { HomeMomentsData } from "@/modules/mainline/features/home/types";
import {
  getPlayMomentRecord,
  toPlayMomentContext,
} from "@/modules/mainline/features/plays/shared/data/play-moment-record";
import {
  Medallion,
  type MedallionContent,
} from "@/modules/mainline/features/plays/shared/components/medallion";
import { PlayMomentTime } from "@/modules/mainline/features/plays/shared/components/play-moment-time";
import { formatPlayDate } from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import { getPlayMomentInstant } from "@/modules/mainline/features/plays/shared/utils/play-moment-date";
import { appIcons } from "@/shared/components/app-icon";
import { cardVariants } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

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

/*
 * Latest moments (v3 `.hb-moments`): the last five things recorded in the
 * current Play, oldest to newest, drawn as the Play draws them; a Play with
 * nothing recorded shows where it began and where it stands.
 */
export const HomeMomentsSection = ({
  moments,
  play,
}: HomeMomentsSectionProps) => {
  const context = toPlayMomentContext(moments.context);
  const recorded: Beat[] = moments.events.map((event, index) => {
    const record = getPlayMomentRecord(event, context);
    const happenedAt = getPlayMomentInstant(event);

    return {
      body: record.label,
      headline: record.headline.map((part, partIndex) =>
        part.emphasized ? (
          <b key={partIndex}>{part.text}</b>
        ) : (
          <Fragment key={partIndex}>{part.text}</Fragment>
        ),
      ),
      key: event.event_id ?? `moment-${index}`,
      kicker: happenedAt ? <PlayMomentTime value={happenedAt} /> : record.label,
      medallion: record.medallion,
    };
  });
  const beats = recorded.length ? recorded : getStartBeats(play);
  /*
   * The line runs in from the left when something came before the first
   * moment shown, starts at it when it is the Play's first, and always ends
   * at the last one.
   */
  const leadsIn = recorded.length > 0 && moments.hasEarlier;

  return (
    <section
      aria-labelledby="home-moments"
      data-slot="card"
      className={cn(
        cardVariants(),
        "mt-8 gap-6 px-5 py-6 sm:mt-11 sm:px-8 sm:py-7",
      )}
    >
      <div className="min-w-0">
        <h2 id="home-moments" className="title-section">
          Latest moments
        </h2>
        <p className="text-ink-2 text-15 mt-1 font-semibold">
          {recorded.length
            ? "The last things you recorded in this Play."
            : "Where this Play began, and where it stands."}
        </p>
      </div>

      <ol className="relative grid gap-4 sm:auto-cols-fr sm:grid-flow-col sm:gap-5">
        {beats.map((beat, index) => (
          <li
            key={beat.key}
            className={cn(
              "relative grid grid-cols-[auto_minmax(0,1fr)] items-center gap-x-3 sm:grid-cols-1 sm:justify-items-center sm:gap-y-1.5 sm:text-center",
              /*
               * The line from the moment before (or from the edge) to this
               * one's medallion. It runs under every medallion: the line sits
               * at the list's level, each medallion one above it.
               */
              (index > 0 || leadsIn) &&
                "sm:before:bg-line sm:before:absolute sm:before:top-7 sm:before:right-1/2 sm:before:z-0 sm:before:h-0.5 sm:before:rounded-full",
              index > 0
                ? "sm:before:left-[calc(-50%-1.25rem)]"
                : "sm:before:left-0",
            )}
          >
            <Medallion
              content={beat.medallion}
              className="relative z-1 row-span-3 sm:row-span-1"
            />
            <span className="text-ink-2 text-13 font-bold">{beat.kicker}</span>
            <span className="text-ink text-15 line-clamp-2 leading-snug font-semibold [&_b]:font-extrabold">
              {beat.headline}
            </span>
            <span className="text-ink-3 text-13 truncate font-semibold">
              {beat.body}
            </span>
          </li>
        ))}
      </ol>
    </section>
  );
};
