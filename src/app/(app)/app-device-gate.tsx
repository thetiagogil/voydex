"use client";

import type { ReactNode } from "react";

import { DeviceGate } from "@/features/system/components/device-gate";
import type { LocalDb } from "@/platform/local-db/local-db";

/*
 * Mainline's tabs, loaded with the code that reads them only when the gate
 * gets them ready, so a page outside Mainline doesn't download it first.
 */
const prepareMainlineTabs = async (db: LocalDb) => {
  const { prepareMainlineTabs: prepare } =
    await import("@/modules/mainline/public-page-reads");

  await prepare(db);
};

/* The app's device gate, getting Mainline's tabs ready before they open. */
export const AppDeviceGate = ({ children }: { children: ReactNode }) => (
  <DeviceGate prepare={prepareMainlineTabs}>{children}</DeviceGate>
);
