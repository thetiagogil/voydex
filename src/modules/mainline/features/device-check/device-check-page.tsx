"use client";

import { useState } from "react";

import {
  useDeviceCheck,
  type Durability,
  type GameDataLoad,
  type StartResult,
} from "@/modules/mainline/features/device-check/client/use-device-check";
import { appRoutes } from "@/config/routes";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { PageHeader } from "@/shared/components/page-header";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { StatTile } from "@/shared/components/stat-tile";
import { Alert, AlertDescription } from "@/shared/components/ui/alert";
import { Button } from "@/shared/components/ui/button";
import { Progress } from "@/shared/components/ui/progress";
import type { GameDataProgress } from "@/platform/local-db/game-data";
import type { LocalStorageStatus } from "@/platform/local-db/storage";

const formatMs = (ms: number) =>
  ms >= 1000 ? `${(ms / 1000).toFixed(1)} s` : `${ms} ms`;

const formatMb = (bytes: number | null) =>
  bytes === null ? "Unknown" : `${(bytes / 1024 / 1024).toFixed(1)} MB`;

const describeGameData = (load: GameDataLoad) =>
  load.status === "loaded"
    ? `${formatMb(load.downloadedBytes)} downloaded and checked in ${formatMs(load.downloadMs)}, installed in ${formatMs(load.importMs)} (${load.rows} rows)`
    : "already on this device";

const describeProgress = (progress: GameDataProgress | null) => {
  if (!progress) return "Starting the device database…";

  const percent = progress.total
    ? Math.round((progress.done / progress.total) * 100)
    : 0;

  return progress.step === "downloading"
    ? `Downloading game data… ${percent}%`
    : `Installing game data… ${percent}%`;
};

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
    `Game data (base and Sword / Shield): ${describeGameData(result.game)}`,
    `Learnsets: ${describeGameData(result.learnsets)}`,
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
      `Saved to storage: median ${formatMs(saves.writtenMedianMs)}, slowest ${formatMs(saves.writtenSlowestMs)}`,
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
          <AlertDescription>
            {describeProgress(state.progress)}
            {state.progress ? (
              <Progress
                aria-label="Game data"
                className="mt-2"
                max={state.progress.total || 1}
                value={state.progress.done}
              />
            ) : null}
          </AlertDescription>
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
                  Base and Sword / Shield, downloaded and checked in{" "}
                  {formatMs(result.game.downloadMs)}
                </StatTile>
                <StatTile
                  label="Install"
                  value={formatMs(result.game.importMs)}
                >
                  {result.game.rows.toLocaleString()} rows
                </StatTile>
                {result.learnsets.status === "loaded" ? (
                  <StatTile
                    label="Learnsets"
                    value={formatMs(
                      result.learnsets.downloadMs + result.learnsets.importMs,
                    )}
                  >
                    {result.learnsets.rows.toLocaleString()} rows, in the
                    background in the app
                  </StatTile>
                ) : null}
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
                  <>
                    <StatTile
                      label="Median save"
                      value={formatMs(check.saves.medianMs)}
                    >
                      Slowest {formatMs(check.saves.slowestMs)}
                    </StatTile>
                    <StatTile
                      label="Saved to storage"
                      value={formatMs(check.saves.writtenMedianMs)}
                    >
                      Slowest {formatMs(check.saves.writtenSlowestMs)}
                    </StatTile>
                  </>
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
