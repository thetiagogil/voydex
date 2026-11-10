"use client";

import { useState } from "react";

import {
  describeClash,
  describeClashOptions,
} from "@/features/settings/utils/clash-copy";
import {
  resolveAccountClashes,
  useAccountSync,
} from "@/platform/local-db/account-sync";
import type { Clash, MergeChoices, Side } from "@/platform/local-db/sync-merge";
import { OverlaySheet } from "@/shared/components/overlay-sheet";
import { Button } from "@/shared/components/ui/button";
import { Field, FieldContent, FieldLabel } from "@/shared/components/ui/field";
import { RadioGroup, RadioGroupItem } from "@/shared/components/ui/radio-group";

const sideNames: Record<Side, string> = {
  local: "This device",
  remote: "Your other device",
};

/* One clash: what it is, and the two versions to keep one of. */
const ClashChoice = ({
  choice,
  clash,
  onChoose,
}: {
  choice: Side | undefined;
  clash: Clash;
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
        {(["local", "remote"] as const).map((side) => (
          <FieldLabel key={side} htmlFor={`${titleId}-${side}`}>
            <Field orientation="horizontal" className="min-h-16 gap-3">
              <RadioGroupItem
                id={`${titleId}-${side}`}
                value={side}
                className="mt-0.5"
              />
              <FieldContent>
                <span className="text-ink-2 text-13 font-bold">
                  {sideNames[side]}
                </span>
                <span className="text-15 font-extrabold wrap-anywhere">
                  {options[side]}
                </span>
              </FieldContent>
            </Field>
          </FieldLabel>
        ))}
      </RadioGroup>
    </fieldset>
  );
};

/*
 * Asks about the changes two devices made to the same thing since they
 * last synced: one answer per clash, then the sync goes on with them.
 * "Later" closes it; nothing syncs until you answer (Settings says so).
 */
export const AccountClashSheet = () => {
  const sync = useAccountSync();
  const [choices, setChoices] = useState<MergeChoices>({});
  const [dismissed, setDismissed] = useState<Clash[] | null>(null);

  if (sync.status !== "clashes") return null;

  const { clashes } = sync;
  const answered = clashes.every((clash) => choices[clash.id]);

  return (
    <OverlaySheet
      open={dismissed !== clashes}
      onOpenChange={(open) => {
        if (!open) setDismissed(clashes);
      }}
      title="Changed on two devices"
      description="Since they last synced, this device and another changed the same things. Choose which to keep."
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
            onChoose={(side) =>
              setChoices((current) => ({ ...current, [clash.id]: side }))
            }
          />
        ))}
      </div>
    </OverlaySheet>
  );
};
