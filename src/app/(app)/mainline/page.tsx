"use client";

import { useSearchParams } from "next/navigation";

import { MainlineHomeRoute } from "@/modules/mainline/features/home/mainline-home-route";

/* Home, read on the device. */
export default function Page() {
  return <MainlineHomeRoute requestedPlayId={useSearchParams().get("play")} />;
}
