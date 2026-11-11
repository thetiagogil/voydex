"use client";

import { useSearchParams } from "next/navigation";

import { usePlayId } from "@/modules/mainline/features/plays/hub/client/use-play-id";
import { PlayProgressStoryRoute } from "@/modules/mainline/features/plays/hub/components/play-hub-routes";

export default function Page() {
  const playId = usePlayId();
  const record = Number.parseInt(useSearchParams().get("record") ?? "", 10);

  return (
    <PlayProgressStoryRoute
      playId={playId}
      recordMilestoneId={Number.isFinite(record) && record ? record : null}
    />
  );
}
