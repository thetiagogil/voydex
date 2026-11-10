import type { Metadata } from "next";

import { DeviceCheckPage } from "@/modules/mainline/features/device-check/device-check-page";

export const metadata: Metadata = {
  appleWebApp: { capable: true, title: "Voydex check" },
  manifest: "/device-check.webmanifest",
  robots: { follow: false, index: false },
  title: "Device data check · Voydex",
};

/* The device check: add it to the Home Screen to test it as an app. */
export default async function DeviceCheckRoute({
  searchParams,
}: {
  searchParams: Promise<{ durability?: string | string[] }>;
}) {
  const { durability } = await searchParams;

  return (
    <DeviceCheckPage
      durability={durability === "relaxed" ? "relaxed" : "normal"}
    />
  );
}
