"use client";

import { notFound, useSearchParams } from "next/navigation";

import { MainlinePlannerRoute } from "@/modules/mainline/features/plans/planner/mainline-planner-route";

/* A Plan in the Team Planner. Plans live on the device: its id is in the query. */
export default function Page() {
  const query = useSearchParams();
  const planId = query.get("id");

  if (!planId) {
    notFound();
  }

  return (
    <MainlinePlannerRoute
      key={planId}
      planId={planId}
      versionGroupSlug={query.get("vg")}
    />
  );
}
