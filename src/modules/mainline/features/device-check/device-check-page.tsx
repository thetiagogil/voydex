"use client";

import { useState } from "react";

import {
  useDeviceCheck,
  type Durability,
  type StartResult,
} from "@/modules/mainline/features/device-check/client/use-device-check";
import { appRoutes } from "@/config/routes";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { PageHeader } from "@/shared/components/page-header";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { StatTile } from "@/shared/components/stat-tile";
import { Alert, AlertDescription } from "@/shared/components/ui/alert";
import { Button } from "@/shared/components/ui/button";
import type { LocalStorageStatus } from "@/platform/local-db/storage";

const formatMs = (ms: number) =>
  ms >= 1000 ? `${(ms / 1000).toFixed(1)} s` : `${ms} ms`;

const formatMb = (bytes: number | null) =>
  bytes === null ? "Unknown" : `${(bytes / 1024 / 1024).toFixed(1)} MB`;

const formatYesNo = (value: boolean | null) =>
  value === null ? "Unknown" : value ? "Yes" : "No";

const schemaLabels: Record<StartResult["schema"], string> = {
  installed: "Installed now",
  outdated: "Older schema",
  ready: "Already there",
};

/* Plain text of every number on the page, to paste into the issue. */
const buildReport = ({
  durability,
  flow,
  result,
  saves,
  storage,
}: {
  durability: Durability;
  flow: ReturnType<typeof useDeviceCheck>["flow"];
  result: StartResult;
  saves: ReturnType<typeof useDeviceCheck>["saves"];
  storage: LocalStorageStatus | null;
}) => {
  const lines = [
    `Device: ${navigator.userAgent}`,
    `Durability: ${durability}`,
    `Installed to Home Screen: ${formatYesNo(storage?.installed ?? null)}`,
    `Storage kept: ${formatYesNo(storage?.persisted ?? null)}`,
    `Storage used: ${formatMb(storage?.usageBytes ?? null)} of ${formatMb(storage?.quotaBytes ?? null)}`,
    `Ready: ${formatMs(result.startMs + result.schemaMs)} (database ${formatMs(result.startMs)})`,
    `Schema: ${schemaLabels[result.schema]} in ${formatMs(result.schemaMs)}`,
    result.game.status === "loaded"
      ? `Game data: ${formatMb(result.game.downloadedBytes)} downloaded in ${formatMs(result.game.downloadMs)}, read in ${formatMs(result.game.readMs)}, imported in ${formatMs(result.game.importMs)} (${result.game.rows} rows)`
      : "Game data: already on this device",
    `Database size: ${formatMb(result.databaseBytes)}`,
    `Plays on this device: ${result.plays.count}${result.plays.lastStartedAt ? `, last started ${result.plays.lastStartedAt}` : ""}`,
  ];

  if (flow) {
    lines.push(
      `Start a Play: ${formatMs(flow.createMs)}, add to team: ${formatMs(flow.addMs)}`,
    );
  }

  if (saves) {
    lines.push(
      `Saves: median ${formatMs(saves.medianMs)}, slowest ${formatMs(saves.slowestMs)}`,
    );
  }

  return lines.join("\n");
};

export const DeviceCheckPage = ({ durability }: { durability: Durability }) => {
  const check = useDeviceCheck(durability);
  const [confirmingDelete, setConfirmingDelete] = useState(false);
  const [copied, setCopied] = useState(false);
  const { state, storage } = check;
  const result = state.status === "ready" ? state.result : null;

  const copyReport = async () => {
    if (!result) return;

    await navigator.clipboard.writeText(
      buildReport({
        durability,
        flow: check.flow,
        result,
        saves: check.saves,
        storage,
      }),
    );
    setCopied(true);
  };

  return (
    <main className="mx-auto flex w-full max-w-3xl flex-col gap-5 px-4 pb-10 sm:px-6">
      <PageHeader
        title="Device data check"
        description="Runs Voydex's database on this device with Sword / Shield, and times it."
        action={
          <Button
            variant="secondary"
            disabled={!result}
            onClick={() => void copyReport()}
          >
            {copied ? "Copied" : "Copy results"}
          </Button>
        }
      />

      <SegmentedControl
        ariaLabel="Save durability"
        variant="segment"
        value={durability}
        options={[
          {
            href: appRoutes.deviceCheck,
            label: "Normal saves",
            value: "normal",
          },
          {
            href: `${appRoutes.deviceCheck}?durability=relaxed`,
            label: "Relaxed saves",
            value: "relaxed",
          },
        ]}
      />

      {state.status === "starting" ? (
        <Alert>
          <AlertDescription>Starting the device database…</AlertDescription>
        </Alert>
      ) : null}

      {state.status === "failed" ? (
        <Alert variant="destructive">
          <AlertDescription>{state.message}</AlertDescription>
        </Alert>
      ) : null}

      {check.actionError ? (
        <Alert variant="destructive">
          <AlertDescription>{check.actionError}</AlertDescription>
        </Alert>
      ) : null}

      <DetailSectionCard
        title="This device"
        action={
          storage?.persisted ? null : (
            <Button
              size="sm"
              variant="secondary"
              disabled={check.busy}
              onClick={() => void check.keepData()}
            >
              Keep my data
            </Button>
          )
        }
      >
        <div className="grid gap-3 sm:grid-cols-3">
          <StatTile
            label="Installed"
            value={formatYesNo(storage?.installed ?? null)}
          />
          <StatTile
            label="Storage kept"
            value={formatYesNo(storage?.persisted ?? null)}
          />
          <StatTile
            label="Storage used"
            value={formatMb(storage?.usageBytes ?? null)}
          />
        </div>
      </DetailSectionCard>

      {result ? (
        <>
          <DetailSectionCard title="Start">
            <div className="grid gap-3 sm:grid-cols-3">
              <StatTile
                label="Ready"
                value={formatMs(result.startMs + result.schemaMs)}
              >
                Until the data can be read
              </StatTile>
              <StatTile label="Schema" value={formatMs(result.schemaMs)}>
                {schemaLabels[result.schema]}; database{" "}
                {formatMs(result.startMs)}
              </StatTile>
              <StatTile
                label="Database size"
                value={formatMb(result.databaseBytes)}
              >
                Kept in memory while open
              </StatTile>
            </div>
            {result.game.status === "loaded" ? (
              <div className="mt-3 grid gap-3 sm:grid-cols-3">
                <StatTile
                  label="Game data"
                  value={formatMb(result.game.downloadedBytes)}
                >
                  Downloaded in {formatMs(result.game.downloadMs)}
                </StatTile>
                <StatTile label="Read" value={formatMs(result.game.readMs)}>
                  Unzipped and checked
                </StatTile>
                <StatTile label="Import" value={formatMs(result.game.importMs)}>
                  {result.game.rows.toLocaleString()} rows
                </StatTile>
              </div>
            ) : (
              <p className="text-ink-2 text-15 mt-3 font-semibold">
                Sword / Shield was already on this device.
              </p>
            )}
          </DetailSectionCard>

          <DetailSectionCard
            title="Saves"
            description={`Plays on this device: ${result.plays.count}${result.plays.lastStartedAt ? `, last started ${new Date(result.plays.lastStartedAt).toLocaleString()}` : ""}`}
          >
            <div className="flex flex-col gap-3 sm:flex-row">
              <Button
                disabled={check.busy}
                onClick={() => void check.startTestPlay()}
              >
                Start a Play and add Grookey
              </Button>
              <Button
                variant="secondary"
                disabled={check.busy}
                onClick={() => void check.timeSaves()}
              >
                Time 20 saves
              </Button>
            </div>
            {check.flow || check.saves ? (
              <div className="mt-3 grid gap-3 sm:grid-cols-3">
                {check.flow ? (
                  <>
                    <StatTile
                      label="Start a Play"
                      value={formatMs(check.flow.createMs)}
                    />
                    <StatTile
                      label="Add to team"
                      value={formatMs(check.flow.addMs)}
                    />
                  </>
                ) : null}
                {check.saves ? (
                  <StatTile
                    label="Median save"
                    value={formatMs(check.saves.medianMs)}
                  >
                    Slowest {formatMs(check.saves.slowestMs)}
                  </StatTile>
                ) : null}
              </div>
            ) : null}
          </DetailSectionCard>
        </>
      ) : null}

      <DetailSectionCard
        title="Start over"
        description="Deletes every Play and the game data on this device, then starts fresh."
      >
        <Button
          variant="destructive"
          disabled={check.busy}
          onClick={() =>
            confirmingDelete
              ? void check.deleteDeviceData()
              : setConfirmingDelete(true)
          }
        >
          {confirmingDelete ? "Tap again to delete" : "Delete device data"}
        </Button>
      </DetailSectionCard>
    </main>
  );
};
