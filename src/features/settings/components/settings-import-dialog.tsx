"use client";

import { useState } from "react";

import type { BackupFile } from "@/platform/local-db/backup-file";
import { OverlayDialog } from "@/shared/components/overlay-dialog";
import { Button } from "@/shared/components/ui/button";
import {
  Field,
  FieldContent,
  FieldDescription,
  FieldLabel,
} from "@/shared/components/ui/field";
import { RadioGroup, RadioGroupItem } from "@/shared/components/ui/radio-group";
import { Spinner } from "@/shared/components/ui/spinner";

const savedOnFormat = new Intl.DateTimeFormat("en-GB", {
  day: "numeric",
  month: "long",
  year: "numeric",
});

const count = (value: number, one: string, many: string) =>
  `${value} ${value === 1 ? one : many}`;

/* "2 Plays and 1 Plan", or "no Plays or Plans". */
export const describeContents = ({
  plans,
  plays,
}: {
  plans: number;
  plays: number;
}) => {
  if (!plays && !plans) return "no Plays or Plans";

  return [
    plays ? count(plays, "Play", "Plays") : null,
    plans ? count(plans, "Plan", "Plans") : null,
  ]
    .filter(Boolean)
    .join(" and ");
};

const describeBackup = (backup: BackupFile) =>
  describeContents({
    plans: backup.tables["planning.mainline_team_plans"]?.length ?? 0,
    plays: backup.tables["gameplay.mainline_plays"]?.length ?? 0,
  });

/* Replace everything here, or add the file's Plays and Plans to it. */
export type ImportMode = "add" | "replace";

const modes: { description: string; label: string; value: ImportMode }[] = [
  {
    description:
      "Everything on this device now gives way to the file: Plays, Plans, tags, rules, favourites and settings.",
    label: "Replace everything",
    value: "replace",
  },
  {
    description:
      "Copies of the file's Plays and Plans join yours. Nothing here changes, and your name, icon and settings stay.",
    label: "Add its Plays and Plans",
    value: "add",
  },
];

/*
 * Import: says when the file was saved and what it holds, then asks how it
 * comes in: in place of everything here, or added to it as copies (never
 * merged: a Play imported twice is there twice). Stays open, busy, while
 * the games it needs download and the data goes in.
 */
export const SettingsImportDialog = ({
  backup,
  onClose,
  onImport,
}: {
  backup: BackupFile | null;
  onClose: () => void;
  /* Resolves to whether the import worked. */
  onImport: (backup: BackupFile, mode: ImportMode) => Promise<boolean>;
}) => {
  const [mode, setMode] = useState<ImportMode>("replace");
  const [importing, setImporting] = useState(false);

  const close = () => {
    setMode("replace");
    onClose();
  };

  const run = async () => {
    if (!backup) return;

    setImporting(true);

    const imported = await onImport(backup, mode);

    setImporting(false);

    if (imported) close();
  };

  return (
    <OverlayDialog
      open={backup !== null}
      onOpenChange={(open) => {
        if (!open && !importing) close();
      }}
      size="md"
      title="Import this file?"
      description={
        backup
          ? `Saved on ${savedOnFormat.format(new Date(backup.savedAt))}, with ${describeBackup(backup)}.`
          : undefined
      }
      footer={
        <div className="flex justify-end gap-2 max-sm:*:flex-1">
          <Button
            type="button"
            variant="secondary"
            disabled={importing}
            onClick={close}
          >
            Cancel
          </Button>
          <Button
            type="button"
            variant={mode === "replace" ? "destructive" : "default"}
            disabled={importing}
            aria-busy={importing}
            onClick={() => void run()}
          >
            {importing ? <Spinner data-icon="inline-start" /> : null}
            {importing
              ? "Importing..."
              : mode === "replace"
                ? "Replace everything"
                : "Add them"}
          </Button>
        </div>
      }
    >
      <RadioGroup
        aria-label="How the file comes in"
        value={mode}
        onValueChange={(value) => setMode(value as ImportMode)}
        disabled={importing}
      >
        {modes.map((option) => (
          <FieldLabel key={option.value} className="cursor-pointer">
            <Field orientation="horizontal" className="gap-3">
              <RadioGroupItem value={option.value} />
              <FieldContent>
                <span className="copy-strong">{option.label}</span>
                <FieldDescription>{option.description}</FieldDescription>
              </FieldContent>
            </Field>
          </FieldLabel>
        ))}
      </RadioGroup>
    </OverlayDialog>
  );
};
