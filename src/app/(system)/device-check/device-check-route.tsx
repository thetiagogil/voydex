"use client";

import { useSearchParams } from "next/navigation";

import { DeviceCheckPage } from "@/modules/mainline/features/device-check/device-check-page";

/* `?durability=relaxed` runs the check with relaxed writes. */
export const DeviceCheckRoute = () => (
  <DeviceCheckPage
    durability={
      useSearchParams().get("durability") === "relaxed" ? "relaxed" : "normal"
    }
  />
);
