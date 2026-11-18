"use client";

import { useSearchParams } from "next/navigation";

import { parseLibraryTab } from "@/modules/mainline/features/library/data/library-model";
import { MainlineLibraryRoute } from "@/modules/mainline/features/library/mainline-library-route";

export default function Page() {
  return (
    <MainlineLibraryRoute
      tab={parseLibraryTab(useSearchParams().get("tab") ?? undefined)}
    />
  );
}
