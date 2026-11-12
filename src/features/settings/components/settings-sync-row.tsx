"use client";

import { SETTINGS_ACTION_CLASS_NAME } from "@/features/settings/components/settings-action";
import {
  askAgain,
  readLastSync,
  syncNow,
  useAccountSync,
} from "@/platform/local-db/account-sync";
import { describeDaysAgo } from "@/platform/local-db/backups";
import { useLocalDb, useLocalRead } from "@/platform/local-db/local-db-context";
import { SettingsRow } from "@/shared/components/settings-row";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

const syncLine = "Your Plays back up to your account by themselves.";

/*
 * Account sync on this device: when it last synced, a question waiting
 * for your answer (a clash, or Plays from another account), or why it
 * didn't sync; with Sync now, or Choose to answer.
 */
export const SettingsSyncRow = () => {
  const { db } = useLocalDb();
  const sync = useAccountSync();
  const lastSync = useLocalRead("account-last-sync", () => readLastSync(db));
  const syncing = sync.status === "syncing";
  const syncedAt = lastSync.status === "ready" ? lastSync.data : null;
  const description =
    sync.status === "clashes"
      ? "Waiting for you: two devices changed the same things."
      : sync.status === "other-account"
        ? "Waiting for you: this device has Plays from another account."
        : sync.status === "failed"
          ? sync.message
          : syncedAt
            ? `Synced ${describeDaysAgo(syncedAt)}. ${syncLine}`
            : syncLine;

  return (
    <SettingsRow title="Sync" description={description}>
      {sync.status === "clashes" || sync.status === "other-account" ? (
        <Button
          type="button"
          className={SETTINGS_ACTION_CLASS_NAME}
          onClick={askAgain}
        >
          Choose
        </Button>
      ) : (
        <Button
          type="button"
          variant="secondary"
          className={SETTINGS_ACTION_CLASS_NAME}
          disabled={syncing || sync.status === "off"}
          aria-busy={syncing}
          onClick={() => void syncNow()}
        >
          {syncing ? <Spinner data-icon="inline-start" /> : null}
          {syncing ? "Syncing..." : "Sync now"}
        </Button>
      )}
    </SettingsRow>
  );
};
