import {
  formatPlayDate,
  formatPlayMinutes,
} from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import type { MainlinePlayShellData } from "@/modules/mainline/features/plays/hub/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";
import { cn } from "@/shared/utils/cn";

import { getPlayTitle } from "./play-title";

type MainlinePlayTopInfoProps = {
  data: MainlinePlayShellData;
  titleId: string;
};

const statusDotClassNames: Record<string, string> = {
  abandoned: "bg-danger",
  completed: "bg-gold",
  paused: "bg-warn",
  playing: "bg-action",
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
          statusDotClassNames[data.play.status_slug ?? ""] ?? "bg-mute",
        )}
      />
      {data.play.status_name}
    </span>
  );
};

const MainlinePlayRules = ({ data }: { data: MainlinePlayShellData }) => {
  if (!data.rules.length) {
    return null;
  }

  const ruleSummary = data.rules.map((rule) => rule.name).join(" · ");

  return (
    <Tooltip>
      <TooltipTrigger
        render={
          <button
            type="button"
            className="hover:text-ink flex min-w-0 items-center gap-1.5 rounded-xs text-left"
            aria-label={`Challenge rules: ${ruleSummary}`}
          />
        }
      >
        <AppIcon icon={appIcons.product.details} size="sm" aria-hidden />
        <span className="max-w-72 truncate">{ruleSummary}</span>
      </TooltipTrigger>
      <TooltipContent
        side="bottom"
        align="start"
        className="grid max-w-sm gap-2 px-3.5 py-3"
      >
        <p className="font-extrabold">Challenge rules</p>
        <ul className="grid gap-2">
          {data.rules.map((rule) => (
            <li key={rule.id} className="grid gap-0.5">
              <span className="font-bold">{rule.name}</span>
              {rule.description ? (
                <span className="text-on-ink/80 font-medium">
                  {rule.description}
                </span>
              ) : null}
            </li>
          ))}
        </ul>
      </TooltipContent>
    </Tooltip>
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
        {data.play.started_on ? (
          <div className="contents">
            <dt className="sr-only">Started</dt>
            <dd>Started {formatPlayDate(data.play.started_on)}</dd>
          </div>
        ) : null}
        {data.rules.length ? (
          <div className="contents">
            <dt className="sr-only">Challenge rules</dt>
            <dd className="min-w-0">
              <MainlinePlayRules data={data} />
            </dd>
          </div>
        ) : null}
      </dl>
    </div>
  );
};
