"use client";

import { useState } from "react";

import { useOfflineData } from "@/platform/offline/use-offline-data";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  OfflineDataDialog,
  type OfflineDataState,
} from "@/shared/components/offline-data-dialog";
import { ProgressDonut } from "@/shared/components/progress-donut";
import { Button } from "@/shared/components/ui/button";
import { useOnline } from "@/shared/hooks/use-online";

/*
 * What Voydex keeps for offline, on the bar on every page, only while there
 * is something to say: a pill with a ring and the figure while the games,
 * their moves and the Pokémon pictures download in the background, the
 * offline mark while there is no connection, and a warning when the device
 * is full. Once everything is on the device it goes; Settings keeps the
 * same dialog.
 */

const labels: Record<OfflineDataState, string> = {
  checking: "Offline data: checking",
  downloading: "Offline data: downloading",
  full: "Offline data: out of room",
  offline: "You're offline",
  ready: "Offline data: ready",
};

/*
 * As tall as your avatar beside it with its white band, so the two read
 * as one row.
 */
const barHeight =
  "h-[calc(--spacing(9)+var(--band)*2)] min-w-[calc(--spacing(9)+var(--band)*2)]";

const StatusMark = ({
  percent,
  state,
}: {
  percent: number;
  state: OfflineDataState;
}) => {
  if (state === "offline") {
    return <AppIcon icon={appIcons.status.offline} size="md" />;
  }

  if (state === "full") {
    return <AppIcon icon={appIcons.status.warning} size="md" />;
  }

  if (state === "ready") {
    return (
      <AppIcon icon={appIcons.status.ready} size="md" className="text-calm" />
    );
  }

  return <ProgressDonut size="xs" value={percent} className="size-5" />;
};

export const OfflineStatus = () => {
  const online = useOnline();
  const [open, setOpen] = useState(false);
  const data = useOfflineData(online, open);
  const { percent, state } = data;

  /* Settled: nothing to say on the bar. An open dialog stays until closed. */
  if ((state === "ready" || state === "checking") && !open) return null;

  const busy = state === "downloading";

  return (
    <OfflineDataDialog
      counts={data.counts}
      onDownloadNow={data.downloadNow}
      onOpenChange={setOpen}
      open={open}
      state={state}
      usageBytes={data.usageBytes}
      waitingForWifi={data.waitingForWifi}
      trigger={
        /*
         * While it downloads, a pill with the ring and the figure, so it
         * reads as busy; round with its mark otherwise.
         */
        <Button
          variant="secondary"
          size={busy ? "default" : "icon"}
          className={barHeight}
          aria-label={
            busy ? `${labels.downloading}, ${percent}%` : labels[state]
          }
          data-offline-status={state}
        >
          <StatusMark percent={percent} state={state} />
          {busy ? (
            <span aria-hidden className="tabular-nums">
              {percent}%
            </span>
          ) : null}
        </Button>
      }
    />
  );
};
