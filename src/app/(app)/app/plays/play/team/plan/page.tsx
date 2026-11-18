"use client";

import { usePlayId } from "@/modules/mainline/features/plays/hub/client/use-play-id";
import { PlayTeamPlanRoute } from "@/modules/mainline/features/plays/hub/components/play-hub-routes";

export default function Page() {
  return <PlayTeamPlanRoute playId={usePlayId()} />;
}
