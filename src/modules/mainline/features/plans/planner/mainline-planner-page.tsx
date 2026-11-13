"use client";

import { useEffect } from "react";

import { PlannerWorkspace } from "@/modules/mainline/features/plans/planner/sections/planner-workspace";
import type {
  PlannerEmbedding,
  PlannerPageData,
} from "@/modules/mainline/features/plans/types";
import { ensureVersionGroupData } from "@/platform/local-db/game-downloads";

type MainlinePlannerPageProps = {
  data: PlannerPageData;
  embedding?: PlannerEmbedding;
};

/* The games this visit already has on the device, so going back asks nothing. */
const readyGames = new Set<number>();
const ensureAfterMs = 1000;

/*
 * The Team Planner's page: one workspace, keyed so a new Plan starts clean
 * and a saved one restarts on its freshly saved Pokémon. An archived Plan
 * never opens here: its route sends it back to the archived list.
 *
 * Its Pokémon come from the game's pre-built file; the game itself
 * downloads in the background while the Planner is open, for what it reads
 * later on the device (a Pokémon's moves, the checks a save runs), which
 * wait for it if it hasn't finished. Offline, those say so, and the next
 * visit to the Planner tries again.
 */
export const MainlinePlannerPage = ({
  data,
  embedding,
}: MainlinePlannerPageProps) => {
  const versionGroupId = data.context.versionGroup.id;

  useEffect(() => {
    if (readyGames.has(versionGroupId)) return;

    /* After the Planner has shown, so it never holds up the tab. */
    const timer = setTimeout(() => {
      ensureVersionGroupData(versionGroupId).then(
        () => readyGames.add(versionGroupId),
        () => undefined,
      );
    }, ensureAfterMs);

    return () => clearTimeout(timer);
  }, [versionGroupId]);

  return (
    <PlannerWorkspace
      key={`${data.plan?.id ?? "new"}:${data.plan?.updatedAt ?? ""}:${data.context.versionGroup.slug}`}
      data={data}
      embedding={embedding}
    />
  );
};
