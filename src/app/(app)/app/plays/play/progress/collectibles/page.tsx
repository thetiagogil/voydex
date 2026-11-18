"use client";

import { useSearchParams } from "next/navigation";

import { usePlayId } from "@/modules/mainline/features/plays/hub/client/use-play-id";
import { PlayProgressCollectiblesRoute } from "@/modules/mainline/features/plays/hub/components/play-hub-routes";

export default function Page() {
  const playId = usePlayId();

  return (
    <PlayProgressCollectiblesRoute
      initialGroupSlug={useSearchParams().get("collectible") ?? undefined}
      playId={playId}
    />
  );
}
