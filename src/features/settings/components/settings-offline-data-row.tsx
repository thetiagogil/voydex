"use client";

import { useState } from "react";

import { SETTINGS_ACTION_CLASS_NAME } from "@/features/settings/components/settings-action";
import { useOfflineData } from "@/platform/offline/use-offline-data";
import {
  OfflineDataDialog,
  offlineDataSummaries,
} from "@/shared/components/offline-data-dialog";
import { SettingsRow } from "@/shared/components/settings-row";
import { Button } from "@/shared/components/ui/button";
import { useOnline } from "@/shared/hooks/use-online";

/*
 * What Voydex keeps for offline, once the bar has nothing more to say:
 * where it stands, and the same dialog the bar opens.
 */
export const SettingsOfflineDataRow = () => {
  const online = useOnline();
  const [open, setOpen] = useState(false);
  const data = useOfflineData(online, open);

  return (
    <SettingsRow
      title="Offline data"
      description={offlineDataSummaries[data.state]}
    >
      <OfflineDataDialog
        counts={data.counts}
        onDownloadNow={data.downloadNow}
        onOpenChange={setOpen}
        open={open}
        state={data.state}
        usageBytes={data.usageBytes}
        waitingForWifi={data.waitingForWifi}
        trigger={
          <Button
            type="button"
            variant="secondary"
            className={SETTINGS_ACTION_CLASS_NAME}
          >
            Details
          </Button>
        }
      />
    </SettingsRow>
  );
};
