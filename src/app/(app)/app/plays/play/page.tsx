"use client";

import { usePlayId } from "@/modules/mainline/features/plays/hub/client/use-play-id";
import { PlayOverviewRoute } from "@/modules/mainline/features/plays/hub/components/play-hub-routes";

export default function Page() {
  return <PlayOverviewRoute playId={usePlayId()} />;
}
