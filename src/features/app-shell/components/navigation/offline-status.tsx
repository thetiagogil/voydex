"use client";

import { useEffect, useState } from "react";

import { downloadEverythingNow } from "@/platform/local-db/game-downloads";
import { readLocalStorageStatus } from "@/platform/local-db/storage";
import {
  getOfflinePercent,
  isEverythingKept,
  useOfflineProgress,
  type Count,
  type OfflineProgress,
} from "@/platform/offline/offline-progress";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { OverlayDialog } from "@/shared/components/overlay-dialog";
import { ProgressDonut } from "@/shared/components/progress-donut";
import { Button } from "@/shared/components/ui/button";
import { Progress } from "@/shared/components/ui/progress";
import { useOnline } from "@/shared/hooks/use-online";

/*
 * What Voydex keeps for offline, on the bar on every page: a ring that
 * fills while the games, their moves and the Pokémon pictures download in
 * the background, a tick once everything is on the device, and the offline
 * mark while there is no connection. A tap opens what is on the device and
 * what still needs the internet.
 */

type OfflineState = "checking" | "downloading" | "offline" | "ready" | "full";

const readState = (online: boolean, progress: OfflineProgress) => {
  if (!online) return "offline";
  if (progress.storageFull) return "full";
  if (progress.games === null) return "checking";

  return isEverythingKept(progress) ? "ready" : "downloading";
};

const megabytes = (bytes: number) => `${Math.round(bytes / 1024 / 1024)} MB`;

const summaries: Record<OfflineState, string> = {
  checking: "Checking what's on this device.",
  downloading:
    "Voydex is getting games and pictures ready, so it works without the internet. Keep it open while it finishes.",
  full: "This device is out of room, so Voydex stopped downloading.",
  offline:
    "You're offline. Everything on this device still works, and the rest carries on when you're back online.",
  ready: "Everything is on this device. Voydex works without the internet.",
};

const labels: Record<OfflineState, string> = {
  checking: "Offline data: checking",
  downloading: "Offline data: downloading",
  full: "Offline data: out of room",
  offline: "You're offline",
  ready: "Offline data: ready",
};

const PartRow = ({
  count,
  label,
  note,
}: {
  count: Count | null;
  label: string;
  note?: string;
}) => (
  <div className="tile flex flex-col gap-2">
    <div className="flex items-baseline justify-between gap-3">
      <p className="copy-strong">{label}</p>
      <p className="copy-meta text-ink-2 tabular-nums">
        {count?.total
          ? `${count.done.toLocaleString()} of ${count.total.toLocaleString()}`
          : "—"}
        {note ? ` · ${note}` : null}
      </p>
    </div>
    <Progress
      aria-label={label}
      max={count?.total || 1}
      value={count?.done ?? 0}
    />
  </div>
);

const StatusMark = ({
  percent,
  state,
}: {
  percent: number;
  state: OfflineState;
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
  const progress = useOfflineProgress();
  const state = readState(online, progress);
  const percent = getOfflinePercent(progress);
  const [open, setOpen] = useState(false);
  const [usage, setUsage] = useState<number | null>(null);

  useEffect(() => {
    if (!open) return;

    let current = true;

    void readLocalStorageStatus()
      .then((status) => {
        if (current) setUsage(status.usageBytes);
      })
      .catch(() => undefined);

    return () => {
      current = false;
    };
  }, [open, progress]);

  const label =
    state === "downloading"
      ? `${labels.downloading}, ${percent}%`
      : labels[state];

  return (
    <OverlayDialog
      open={open}
      onOpenChange={setOpen}
      size="sm"
      title="Offline data"
      description={summaries[state]}
      trigger={
        <Button
          variant="secondary"
          size="icon-sm"
          aria-label={label}
          data-offline-status={state}
        >
          <StatusMark percent={percent} state={state} />
        </Button>
      }
      footer={
        progress.waitingForWifi && online ? (
          <Button onClick={downloadEverythingNow} className="w-full">
            <AppIcon icon={appIcons.actions.download} size="md" />
            Download now
          </Button>
        ) : null
      }
    >
      <div className="flex flex-col gap-2">
        <PartRow count={progress.games} label="Games" />
        <PartRow count={progress.learnsets} label="Moves" />
        <PartRow
          count={progress.images}
          label="Pokémon pictures"
          note={
            progress.images?.total
              ? megabytes(progress.images.bytes)
              : undefined
          }
        />
        {progress.waitingForWifi && online ? (
          <p className="copy-note text-ink-2">
            On mobile data, the rest waits for Wi-Fi.
          </p>
        ) : null}
        <p className="copy-note text-ink-2">
          {usage === null
            ? null
            : `Voydex uses ${megabytes(usage)} on this device. `}
          Logging in, backups, and shiny or official art you haven&apos;t opened
          yet need the internet.
        </p>
      </div>
    </OverlayDialog>
  );
};
