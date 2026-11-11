"use client";

import { useSearchParams } from "next/navigation";

import { MainlineMyPlansRoute } from "@/modules/mainline/features/plans/my-plans/mainline-my-plans-route";

export default function Page() {
  return (
    <MainlineMyPlansRoute
      view={
        useSearchParams().get("view") === "archived" ? "archived" : "active"
      }
    />
  );
}
