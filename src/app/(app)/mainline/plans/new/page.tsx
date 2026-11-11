"use client";

import { useSearchParams } from "next/navigation";

import { MainlinePlannerRoute } from "@/modules/mainline/features/plans/planner/mainline-planner-route";

export default function Page() {
  return (
    <MainlinePlannerRoute
      planId={null}
      versionGroupSlug={useSearchParams().get("vg")}
    />
  );
}
