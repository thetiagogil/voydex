"use client";

import { useRef, useState } from "react";
import { toast } from "sonner";

import {
  addBackupFile,
  openBackupFile,
  restoreBackupFile,
  saveBackupFile,
} from "@/features/settings/client/backup-actions";
import { SETTINGS_ACTION_CLASS_NAME } from "@/features/settings/components/settings-action";
import { SettingsAccountRestoreDialog } from "@/features/settings/components/settings-account-restore-dialog";
import {
  describeContents,
  SettingsImportDialog,
  type ImportMode,
} from "@/features/settings/components/settings-import-dialog";
import { SettingsKeepDataRow } from "@/features/settings/components/settings-keep-data-row";
import { SettingsOfflineDataRow } from "@/features/settings/components/settings-offline-data-row";
import {
  describeBackupDevice,
  describeBackupTime,
} from "@/features/settings/utils/backup-copy";
import {
  askAgain,
  backUpNow,
  useAccountBackupStatus,
} from "@/platform/local-db/account-runner";
import type { BackupFile } from "@/platform/local-db/backup-file";
import {
  describeLastBackup,
  readBackupStatus,
  readLastAccountBackup,
} from "@/platform/local-db/backups";
import { useLocalDb, useLocalRead } from "@/platform/local-db/local-db-context";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { NeedsInternet } from "@/shared/components/needs-internet";
import { PendingData } from "@/shared/components/pending-data";
import { SettingsRow } from "@/shared/components/settings-row";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

const keptLine =
  "It backs up by itself after each change, and your account keeps the last 3.";

/*
 * Signed in: when this device last backed up to your account, a newer
 * backup from another device waiting for your choice, or why it didn't go
 * up; with Back up now, or Choose to answer.
 */
const AccountBackupRow = () => {
  const { db } = useLocalDb();
  const status = useAccountBackupStatus();
  const last = useLocalRead("account-last-backup", () =>
    readLastAccountBackup(db),
  );
  const saving = status.status === "saving";
  const lastAt = last.status === "ready" ? last.data : null;
  const description =
    status.status === "newer"
      ? `Waiting for you: ${describeBackupDevice(status.device)} saved newer Plays.`
      : status.status === "failed"
        ? status.message
        : lastAt
          ? `Backed up ${describeBackupTime(lastAt)}. ${keptLine}`
          : keptLine;

  return (
    <SettingsRow title="Account backup" description={description}>
      {status.status === "newer" ? (
        <Button
          type="button"
          className={SETTINGS_ACTION_CLASS_NAME}
          onClick={askAgain}
        >
          Choose
        </Button>
      ) : (
        <NeedsInternet>
          {(offline) => (
            <Button
              type="button"
              variant="secondary"
              className={SETTINGS_ACTION_CLASS_NAME}
              disabled={saving || offline || status.status === "off"}
              aria-busy={saving}
              onClick={() => void backUpNow()}
            >
              {saving ? (
                <Spinner data-icon="inline-start" />
              ) : (
                <AppIcon icon={appIcons.devices.account} inline="start" />
              )}
              {saving ? "Backing up..." : "Back up now"}
            </Button>
          )}
        </NeedsInternet>
      )}
    </SettingsRow>
  );
};

/* Signed in: puts one of the account's last 3 backups in place of this device's data. */
const AccountRestoreRow = () => {
  const [open, setOpen] = useState(false);

  return (
    <SettingsRow
      title="Restore from account"
      description="Puts one of your account's last 3 backups in place of what's on this device"
    >
      {/* Reading the account's backups needs the internet too. */}
      <NeedsInternet>
        {(offline) => (
          <Button
            type="button"
            variant="secondary"
            className={SETTINGS_ACTION_CLASS_NAME}
            disabled={offline}
            onClick={() => setOpen(true)}
          >
            <AppIcon icon={appIcons.actions.restore} inline="start" />
            Restore
          </Button>
        )}
      </NeedsInternet>
      <SettingsAccountRestoreDialog
        open={open}
        onClose={() => setOpen(false)}
      />
    </SettingsRow>
  );
};

/*
 * Your data: the one place data moves. Signed in, the account's backups
 * (Back up now, Restore from account). Always, Export (every Play, Plan
 * and setting as one file) and Import (a file in place of everything here,
 * or its Plays and Plans added as copies), keeping the browser from
 * clearing it, and (later) deleting the account.
 */
export const SettingsDataSection = ({ signedIn }: { signedIn: boolean }) => {
  const { db } = useLocalDb();
  const status = useLocalRead("backup-status", () => readBackupStatus(db));
  const fileInputRef = useRef<HTMLInputElement>(null);
  const [saving, setSaving] = useState(false);
  const [opened, setOpened] = useState<BackupFile | null>(null);

  const save = async () => {
    setSaving(true);

    const result = await saveBackupFile(db);

    setSaving(false);

    if (result.status === "error") toast.error(result.message);
  };

  const open = async (file: File | undefined) => {
    if (!file) return;

    const result = await openBackupFile(file);

    if (result.status === "error") {
      toast.error(result.message);

      return;
    }

    setOpened(result.backup);
  };

  const importFile = async (backup: BackupFile, mode: ImportMode) => {
    if (mode === "add") {
      const result = await addBackupFile(db, backup);

      if (result.status === "error") {
        toast.error(result.message);

        return false;
      }

      toast.success(`Added ${describeContents(result.counts)}`);

      return true;
    }

    const result = await restoreBackupFile(db, backup);

    if (result.status === "error") {
      toast.error(result.message);

      return false;
    }

    toast.success("File imported");

    return true;
  };

  return (
    <DetailSectionCard title="Your data" id="your-data">
      {signedIn ? (
        <>
          <AccountBackupRow />
          <AccountRestoreRow />
        </>
      ) : null}
      <SettingsRow
        title="Export"
        description={
          status.status === "ready" && !signedIn
            ? `${describeLastBackup(status.data.lastBackupAt)}. Saves everything as one file: Plays, Plans, tags, rules, favourites and settings.`
            : "Saves everything as one file: Plays, Plans, tags, rules, favourites and settings"
        }
      >
        <Button
          type="button"
          variant="secondary"
          className={SETTINGS_ACTION_CLASS_NAME}
          disabled={saving}
          aria-busy={saving}
          onClick={() => void save()}
        >
          {saving ? (
            <Spinner data-icon="inline-start" />
          ) : (
            <AppIcon icon={appIcons.actions.download} inline="start" />
          )}
          Export
        </Button>
      </SettingsRow>
      <SettingsRow
        title="Import"
        description="Brings in a file: in place of everything here, or its Plays and Plans added to yours"
      >
        <Button
          type="button"
          variant="secondary"
          className={SETTINGS_ACTION_CLASS_NAME}
          onClick={() => fileInputRef.current?.click()}
        >
          <AppIcon icon={appIcons.actions.upload} inline="start" />
          Import
        </Button>
        <input
          ref={fileInputRef}
          type="file"
          className="hidden"
          aria-label="File to import"
          onChange={(event) => {
            const [file] = event.target.files ?? [];

            /* Picking the same file again still opens it. */
            event.target.value = "";
            void open(file);
          }}
        />
      </SettingsRow>
      <SettingsKeepDataRow />
      <SettingsOfflineDataRow />
      <SettingsRow
        title="Delete your account"
        description="Removes your account and everything in it. This can't be undone."
      >
        {/* TODO(v3-data): a reviewed, server-owned account deletion operation (auth user and every owned row, backups included). */}
        <PendingData
          variant="inline"
          className={`${SETTINGS_ACTION_CLASS_NAME} h-11 justify-center rounded-lg`}
        />
      </SettingsRow>
      <SettingsImportDialog
        backup={opened}
        onClose={() => setOpened(null)}
        onImport={importFile}
      />
    </DetailSectionCard>
  );
};
