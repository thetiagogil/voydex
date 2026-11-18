"use client";

import { useSearchParams } from "next/navigation";

import { MainlinePlaysPage } from "@/modules/mainline/features/plays/browse/mainline-plays-page";

export default function Page() {
  const query = useSearchParams();
  const get = (key: string) => query.get(key) ?? undefined;

  return (
    <MainlinePlaysPage
      view={get("view") === "archived" ? "archived" : "active"}
      params={{
        display: get("display"),
        game: get("game"),
        generation: get("generation"),
        q: get("q"),
        sort: get("sort"),
        status: get("status"),
        tag: get("tag"),
      }}
    />
  );
}
