import { formatPlayMinutes } from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import { StatusBadge } from "@/shared/components/status-badge";
import type {
  MainlinePlayShellData,
  PlayHeaderEditing,
} from "@/modules/mainline/features/plays/hub/types";
import { getPlayStatusTone } from "@/modules/mainline/shared/utils/play-status-tone";

import {
  PlayHeaderPlaytimeEdit,
  PlayHeaderStatusEdit,
  PlayHeaderTrainerEdit,
} from "./play-header-edit";
import { MainlinePlayRuleBreaks } from "./mainline-play-rule-breaks";
import { getPlayTitle } from "./play-title";

type MainlinePlayTopInfoProps = {
  data: MainlinePlayShellData;
  /* Makes status, trainer and playtime badges that open their edit dialogs. */
  editing?: PlayHeaderEditing;
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
    <StatusBadge
      ground="band"
      size="md"
      tone={getPlayStatusTone(data.play.status_slug)}
    >
      {data.play.status_name}
    </StatusBadge>
  );
};

export const MainlinePlayTopInfo = ({
  data,
  editing,
  titleId,
}: MainlinePlayTopInfoProps) => {
  const playtime =
    data.play.playtime_minutes === null
      ? null
      : `${formatPlayMinutes(data.play.playtime_minutes)} played`;

  const playId = editing ? data.play.play_id : null;

  return (
    <div className="min-w-0 flex-1">
      <p className="text-action-ink text-13 sm:text-14 font-bold">
        {getEyebrow(data)}
      </p>
      <h1 id={titleId} className="title-hero mt-1 mb-2.5">
        {getPlayTitle(data)}
      </h1>
      <dl className="text-ink-tint text-13 sm:text-14 flex flex-wrap items-center gap-x-3.5 gap-y-2 font-semibold">
        <div className="contents">
          <dt className="sr-only">Status</dt>
          <dd>
            {editing && playId ? (
              <PlayHeaderStatusEdit
                data={data}
                editing={editing}
                playId={playId}
              />
            ) : (
              <MainlinePlayStatus data={data} />
            )}
          </dd>
        </div>
        {data.play.play_id && data.ruleBreaks.ruleNames.length ? (
          <div className="contents">
            <dt className="sr-only">Rules</dt>
            <dd>
              <MainlinePlayRuleBreaks
                playId={data.play.play_id}
                ruleBreaks={data.ruleBreaks}
              />
            </dd>
          </div>
        ) : null}
        {editing && playId ? (
          <div className="contents">
            <dt className="sr-only">Trainer</dt>
            <dd>
              <PlayHeaderTrainerEdit
                data={data}
                editing={editing}
                playId={playId}
              />
            </dd>
          </div>
        ) : data.play.trainer_name ? (
          <div className="contents">
            <dt className="sr-only">Trainer</dt>
            <dd>Trainer {data.play.trainer_name}</dd>
          </div>
        ) : null}
        {editing && playId ? (
          <div className="contents">
            <dt className="sr-only">Playtime</dt>
            <dd>
              <PlayHeaderPlaytimeEdit
                data={data}
                playId={playId}
                playtimeLabel={playtime}
              />
            </dd>
          </div>
        ) : playtime ? (
          <div className="contents">
            <dt className="sr-only">Playtime</dt>
            <dd className="tabular-nums">{playtime}</dd>
          </div>
        ) : null}
      </dl>
    </div>
  );
};
