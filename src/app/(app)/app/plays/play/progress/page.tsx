"use client";

import { usePlayId } from "@/modules/mainline/features/plays/hub/client/use-play-id";
import { PlayProgressRoute } from "@/modules/mainline/features/plays/hub/components/play-hub-routes";

/* Progress opens on Story, or on the Pokédex for a Play that doesn't track it. */
export default function Page() {
  return <PlayProgressRoute playId={usePlayId()} />;
}
