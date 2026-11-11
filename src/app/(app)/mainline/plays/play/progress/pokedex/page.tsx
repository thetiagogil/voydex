"use client";

import { useSearchParams } from "next/navigation";

import { usePlayId } from "@/modules/mainline/features/plays/hub/client/use-play-id";
import { PlayProgressPokedexRoute } from "@/modules/mainline/features/plays/hub/components/play-hub-routes";

export default function Page() {
  const playId = usePlayId();

  return (
    <PlayProgressPokedexRoute
      initialScopeSlug={useSearchParams().get("pokedex") ?? undefined}
      playId={playId}
    />
  );
}
