"use client";

import type { ReactNode } from "react";

import { DeviceGate } from "@/features/system/components/device-gate";
import { prepareMainlineTabs } from "@/modules/mainline/public-page-reads";

/* The app's device gate, getting Mainline's tabs ready before they open. */
export const AppDeviceGate = ({ children }: { children: ReactNode }) => (
  <DeviceGate prepare={prepareMainlineTabs}>{children}</DeviceGate>
);
