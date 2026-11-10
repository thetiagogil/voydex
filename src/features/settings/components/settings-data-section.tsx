"use client";

import { useRef, useState } from "react";
import { toast } from "sonner";

import {
  openBackupFile,
  restoreBackupFile,
  saveBackupFile,
} from "@/features/settings/client/backup-actions";
import { SETTINGS_ACTION_CLASS_NAME } from "@/features/settings/components/settings-action";
import { SettingsKeepDataRow } from "@/features/settings/components/settings-keep-data-row";
import { SettingsRestoreDialog } from "@/features/settings/components/settings-restore-dialog";
import type { BackupFile } from "@/platform/local-db/backup-file";
import {
  describeLastBackup,
  readBackupStatus,
} from "@/platform/local-db/backups";
import { useLocalDb, useLocalRead } from "@/platform/local-db/local-db-context";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { PendingData } from "@/shared/components/pending-data";
import { SettingsRow } from "@/shared/components/settings-row";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

/*
 * v3's Your data: save every Play, Plan and setting as a backup file,
 * restore one in place of this device's data, keep the browser from
 * clearing it, and (later) delete the account.
 */
export const SettingsDataSection = () => {
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

  const restore = async (backup: BackupFile) => {
    const result = await restoreBackupFile(db, backup);

    if (result.status === "error") {
      toast.error(result.message);

      return false;
    }

    toast.success("Backup restored");

    return true;
  };

  return (
    <DetailSectionCard title="Your data" id="your-data">
      <SettingsRow
        title="Backup"
        description={
          status.status === "ready"
            ? `${describeLastBackup(status.data.lastBackupAt)}. Your Plays live on this device; a backup file keeps them safe.`
            : "Your Plays live on this device; a backup file keeps them safe."
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
          Save backup
        </Button>
      </SettingsRow>
      <SettingsRow
        title="Restore"
        description="Puts a backup file's data in place of what's on this device"
      >
        <Button
          type="button"
          variant="secondary"
          className={SETTINGS_ACTION_CLASS_NAME}
          onClick={() => fileInputRef.current?.click()}
        >
          <AppIcon icon={appIcons.actions.upload} inline="start" />
          Restore
        </Button>
        <input
          ref={fileInputRef}
          type="file"
          className="hidden"
          aria-label="Backup file to restore"
          onChange={(event) => {
            const [file] = event.target.files ?? [];

            /* Picking the same file again still opens it. */
            event.target.value = "";
            void open(file);
          }}
        />
      </SettingsRow>
      <SettingsKeepDataRow />
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
      <SettingsRestoreDialog
        backup={opened}
        onClose={() => setOpened(null)}
        onRestore={restore}
      />
    </DetailSectionCard>
  );
};
