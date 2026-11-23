"use client";

import type { ReactElement } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { OverlayDialog } from "@/shared/components/overlay-dialog";
import { Button } from "@/shared/components/ui/button";
import { Progress } from "@/shared/components/ui/progress";

/*
 * What Voydex keeps for offline: the games, their moves and the Pokémon
 * pictures, each counted with a bar, the room Voydex takes, and what still
 * needs the internet. On mobile data it offers Download now. The bar's
 * status opens it while there is something to say, and Settings always.
 */

export type OfflineDataState =
  "checking" | "downloading" | "full" | "offline" | "ready";

type Count = { done: number; total: number } | null;

export const offlineDataSummaries: Record<OfflineDataState, string> = {
  checking: "Checking what's on this device.",
  downloading:
    "Voydex is getting games and pictures ready, so it works without the internet. Keep it open while it finishes.",
  full: "This device is out of room, so Voydex stopped downloading.",
  offline:
    "You're offline. Everything on this device still works, and the rest carries on when you're back online.",
  ready: "Everything is on this device. Voydex works without the internet.",
};

const megabytes = (bytes: number) => `${Math.round(bytes / 1024 / 1024)} MB`;

const PartRow = ({
  count,
  label,
  pending = "Checking",
}: {
  count: Count;
  label: string;
  /* What it says before it is counted. */
  pending?: string;
}) => (
  <div className="tile flex flex-col gap-2">
    <div className="flex items-baseline justify-between gap-3">
      <p className="copy-strong">{label}</p>
      <p className="copy-meta text-ink-2 tabular-nums">
        {count === null
          ? pending
          : count.total
            ? `${count.done.toLocaleString()} of ${count.total.toLocaleString()}`
            : "None to keep"}
      </p>
    </div>
    <Progress
      aria-label={label}
      max={count?.total || 1}
      value={count?.done ?? 0}
    />
  </div>
);

export const OfflineDataDialog = ({
  counts,
  onDownloadNow,
  onOpenChange,
  open,
  state,
  trigger,
  usageBytes,
  waitingForWifi,
}: {
  counts: { games: Count; images: Count; learnsets: Count };
  onDownloadNow: () => void;
  onOpenChange: (open: boolean) => void;
  open: boolean;
  state: OfflineDataState;
  trigger: ReactElement;
  usageBytes: number | null;
  /* Something is left, held back on mobile data. */
  waitingForWifi: boolean;
}) => (
  <OverlayDialog
    open={open}
    onOpenChange={onOpenChange}
    size="sm"
    title="Offline data"
    description={offlineDataSummaries[state]}
    trigger={trigger}
    footer={
      waitingForWifi ? (
        <Button onClick={onDownloadNow} className="w-full">
          <AppIcon icon={appIcons.actions.download} size="md" />
          Download now
        </Button>
      ) : null
    }
  >
    <div className="flex flex-col gap-2">
      <PartRow count={counts.games} label="Games" />
      <PartRow count={counts.learnsets} label="Moves" />
      <PartRow
        count={counts.images}
        label="Pokémon pictures"
        pending="After the games"
      />
      {waitingForWifi ? (
        <p className="copy-note text-ink-2">
          On mobile data, the rest waits for Wi-Fi.
        </p>
      ) : null}
      {usageBytes === null ? null : (
        <p className="copy-note text-ink-2">
          Voydex uses {megabytes(usageBytes)} on this device.
        </p>
      )}
      <p className="copy-note text-ink-2">
        Needs the internet: logging in, backups, and shiny or official art you
        haven&apos;t opened.
      </p>
    </div>
  </OverlayDialog>
);
