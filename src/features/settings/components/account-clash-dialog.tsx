"use client";

import { useState } from "react";

import {
  describeChangedAt,
  describeClash,
  describeClashOptions,
  describeDevices,
  deviceKind,
} from "@/features/settings/utils/clash-copy";
import { describeDevice } from "@/platform/local-db/account-backups";
import {
  resolveAccountClashes,
  useAccountSync,
} from "@/platform/local-db/account-sync";
import type { Clash, MergeChoices, Side } from "@/platform/local-db/sync-merge";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { OverlayDialog } from "@/shared/components/overlay-dialog";
import { Button } from "@/shared/components/ui/button";
import { Field, FieldContent, FieldLabel } from "@/shared/components/ui/field";
import { RadioGroup, RadioGroupItem } from "@/shared/components/ui/radio-group";

type Device = { label: string; name: string | null };

const changedAtOf = (clash: Clash, side: Side) =>
  clash.kind === "item"
    ? null
    : side === "local"
      ? clash.localChangedAt
      : clash.remoteChangedAt;

/*
 * One clash: what it is, then each device's version as a card to pick,
 * with the device it came from and when it changed there.
 */
const ClashChoice = ({
  choice,
  clash,
  devices,
  onChoose,
}: {
  choice: Side | undefined;
  clash: Clash;
  devices: Record<Side, Device>;
  onChoose: (side: Side) => void;
}) => {
  const options = describeClashOptions(clash);
  const titleId = `clash-${clash.id}`;

  return (
    <fieldset className="flex flex-col gap-2">
      <legend id={titleId} className="text-15 mb-2 font-extrabold">
        {describeClash(clash)}
      </legend>
      <RadioGroup
        aria-labelledby={titleId}
        value={choice ?? null}
        onValueChange={(value) => onChoose(value as Side)}
        className="grid gap-2 sm:grid-cols-2"
      >
        {(["local", "remote"] as const).map((side) => {
          const changedAt = changedAtOf(clash, side);

          return (
            <FieldLabel key={side} htmlFor={`${titleId}-${side}`}>
              <Field orientation="horizontal" className="min-h-20 gap-3">
                <RadioGroupItem
                  id={`${titleId}-${side}`}
                  value={side}
                  className="mt-0.5"
                />
                <FieldContent className="gap-1">
                  <span className="text-ink-2 text-13 flex items-center gap-1.5 font-bold">
                    <AppIcon
                      icon={appIcons.devices[deviceKind(devices[side].name)]}
                    />
                    {devices[side].label}
                  </span>
                  <span className="text-15 font-extrabold wrap-anywhere">
                    {options[side]}
                  </span>
                  {changedAt ? (
                    <span className="text-ink-3 text-13 font-semibold">
                      {describeChangedAt(changedAt)}
                    </span>
                  ) : null}
                </FieldContent>
              </Field>
            </FieldLabel>
          );
        })}
      </RadioGroup>
    </fieldset>
  );
};

/*
 * Asks about the changes two devices made to the same thing since they
 * last synced, naming both devices: one answer per clash, then the sync
 * goes on with them. "Later" closes it; nothing syncs until you answer
 * (Settings' Sync row opens it again).
 */
export const AccountClashDialog = () => {
  const sync = useAccountSync();
  const [choices, setChoices] = useState<MergeChoices>({});
  const [dismissed, setDismissed] = useState<Clash[] | null>(null);

  if (sync.status !== "clashes") return null;

  const { clashes, otherDevice } = sync;
  const thisName = describeDevice(navigator.userAgent);
  const labels = describeDevices(thisName, otherDevice.name);
  const devices: Record<Side, Device> = {
    local: { label: labels.local, name: thisName },
    remote: { label: labels.remote, name: otherDevice.name },
  };
  const answered = clashes.every((clash) => choices[clash.id]);

  return (
    <OverlayDialog
      open={dismissed !== clashes}
      onOpenChange={(open) => {
        if (!open) setDismissed(clashes);
      }}
      size="xl"
      title="Which version to keep?"
      description={`${labels.local} and ${labels.remote.replace(/^Your/, "your")} both changed ${
        clashes.length === 1 ? "this" : "these"
      } since they last synced. Pick the one to keep on both.`}
      footer={
        <div className="flex justify-end gap-2 max-sm:*:flex-1">
          <Button
            type="button"
            variant="secondary"
            onClick={() => setDismissed(clashes)}
          >
            Later
          </Button>
          <Button
            type="button"
            disabled={!answered}
            onClick={() => {
              const answer = Object.fromEntries(
                clashes.map((clash) => [clash.id, choices[clash.id]]),
              ) as MergeChoices;

              setChoices({});
              void resolveAccountClashes(answer);
            }}
          >
            Keep these
          </Button>
        </div>
      }
    >
      <div className="flex flex-col gap-6">
        {clashes.map((clash) => (
          <ClashChoice
            key={clash.id}
            clash={clash}
            choice={choices[clash.id]}
            devices={devices}
            onChoose={(side) =>
              setChoices((current) => ({ ...current, [clash.id]: side }))
            }
          />
        ))}
      </div>
    </OverlayDialog>
  );
};
