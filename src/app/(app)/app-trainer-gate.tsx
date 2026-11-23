"use client";

import type { ReactNode } from "react";

import { TrainerGate } from "@/features/settings/components/trainer-gate";

import { prepareMainlineTabs } from "./prepare-mainline-tabs";

/*
 * The app's trainer step, with Mainline's pages to read again once it is
 * saved, so it gives way to a finished Home.
 */
export const AppTrainerGate = ({ children }: { children: ReactNode }) => (
  <TrainerGate prepare={prepareMainlineTabs}>{children}</TrainerGate>
);
