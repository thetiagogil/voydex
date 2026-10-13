"use client";

import type { BadgeCaseStamp } from "@/modules/mainline/features/plays/hub/views/overview/data/badge-case-mapper";
import { BadgeStamp } from "@/modules/mainline/features/plays/shared/components/badge-stamp";
import { formatPlayMoment } from "@/modules/mainline/features/plays/shared/utils/play-moment-date";
import { useViewerClock } from "@/modules/mainline/features/plays/shared/utils/use-viewer-clock";
import { appIcons } from "@/shared/components/app-icon";

/* Stamps tilt at rest, each by its own small angle. */
const stampTilts = [-6, 4, -3, 7, -5, 3, -7, 5, -2, 4, -4, 6];

/*
 * The case's stamps. A client part so the day each was earned reads in the
 * viewer's time zone, as the rest of Overview's moments do.
 */
export const BadgeCaseStamps = ({ stamps }: { stamps: BadgeCaseStamp[] }) => {
  const clock = useViewerClock();

  return (
    <ul className="grid grid-cols-5 gap-x-2.5 gap-y-4 p-1 sm:grid-cols-9">
      {stamps.map((stamp, index) => {
        const earnedOn = formatPlayMoment(stamp.completedAt, clock)?.date;

        return (
          <li key={stamp.milestoneId}>
            <BadgeStamp
              label={
                stamp.state === "earned"
                  ? `${stamp.name}, earned${earnedOn ? ` ${earnedOn}` : ""}`
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
        );
      })}
    </ul>
  );
};
