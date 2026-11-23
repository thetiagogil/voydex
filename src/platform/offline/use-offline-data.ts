"use client";

import { useEffect, useState } from "react";

import { downloadEverythingNow } from "@/platform/local-db/game-downloads";
import { readLocalStorageStatus } from "@/platform/local-db/storage";
import {
  getOfflinePercent,
  readOfflineState,
  useOfflineProgress,
} from "@/platform/offline/offline-progress";

/*
 * What the offline data dialog shows, for the bar's status and Settings:
 * where it stands, how far along, and (while `open`) the room Voydex takes.
 */
export const useOfflineData = (online: boolean, open: boolean) => {
  const progress = useOfflineProgress();
  const [usageBytes, setUsageBytes] = useState<number | null>(null);

  useEffect(() => {
    if (!open) return;

    let current = true;

    void readLocalStorageStatus()
      .then((status) => {
        if (current) setUsageBytes(status.usageBytes);
      })
      .catch(() => undefined);

    return () => {
      current = false;
    };
  }, [open, progress]);

  return {
    counts: {
      games: progress.games,
      images: progress.images,
      learnsets: progress.learnsets,
    },
    downloadNow: downloadEverythingNow,
    percent: getOfflinePercent(progress),
    state: readOfflineState(online, progress),
    usageBytes,
    waitingForWifi: progress.waitingForWifi && online,
  };
};
