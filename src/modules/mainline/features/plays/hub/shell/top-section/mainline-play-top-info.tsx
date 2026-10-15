import { formatPlayMinutes } from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import type { MainlinePlayShellData } from "@/modules/mainline/features/plays/hub/types";
import {
  getPlayStatusTone,
  playStatusDotClassNames,
} from "@/modules/mainline/shared/utils/play-status-tone";
import { cn } from "@/shared/utils/cn";

import { getPlayTitle } from "./play-title";

type MainlinePlayTopInfoProps = {
  data: MainlinePlayShellData;
  titleId: string;
};

const getEyebrow = (data: MainlinePlayShellData) => {
  return [data.play.game_name, data.region?.name, data.play.generation_name]
    .filter(Boolean)
    .join(" · ");
};

const MainlinePlayStatus = ({ data }: { data: MainlinePlayShellData }) => {
  if (!data.play.status_name) {
    return null;
  }

  return (
    <span className="text-ink inline-flex items-center gap-[7px] rounded-full bg-white/75 px-3 py-1 font-bold">
      <span
        aria-hidden
        className={cn(
          "size-2 rounded-full",
          playStatusDotClassNames[getPlayStatusTone(data.play.status_slug)],
        )}
      />
      {data.play.status_name}
    </span>
  );
};

export const MainlinePlayTopInfo = ({
  data,
  titleId,
}: MainlinePlayTopInfoProps) => {
  const playtime =
    data.play.playtime_minutes === null
      ? null
      : `${formatPlayMinutes(data.play.playtime_minutes)} played`;

  return (
    <div className="min-w-0 flex-1">
      <p className="text-game-deep text-13 font-bold sm:text-[13.5px]">
        {getEyebrow(data)}
      </p>
      <h1
        id={titleId}
        className="mt-1 mb-2.5 text-[27px] leading-[1.08] tracking-[-0.02em] sm:text-[40px]"
      >
        {getPlayTitle(data)}
      </h1>
      <dl className="text-ink-tint text-13 sm:text-14 flex flex-wrap items-center gap-x-3.5 gap-y-2 font-semibold">
        <div className="contents">
          <dt className="sr-only">Status</dt>
          <dd>
            <MainlinePlayStatus data={data} />
          </dd>
        </div>
        {data.play.trainer_name ? (
          <div className="contents">
            <dt className="sr-only">Trainer</dt>
            <dd>Trainer {data.play.trainer_name}</dd>
          </div>
        ) : null}
        {playtime ? (
          <div className="contents">
            <dt className="sr-only">Playtime</dt>
            <dd className="tabular-nums">{playtime}</dd>
          </div>
        ) : null}
      </dl>
    </div>
  );
};
