"use client";

import { useSearchParams } from "next/navigation";

import { MainlineCollectionRoute } from "@/modules/mainline/features/collection/mainline-collection-route";

export default function Page() {
  const query = useSearchParams();
  const view = query.get("view");

  return (
    <MainlineCollectionRoute
      initialSpeciesSlug={query.get("species")}
      view={view === "games" || view === "favourites" ? view : "pokemon"}
    />
  );
}
