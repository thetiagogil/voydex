"use client";

import type { StartIntent } from "@/config/start-intent";
import { getHomePageData } from "@/modules/mainline/features/home/client/home-page-query";
import { MainlineHomePage } from "@/modules/mainline/features/home/mainline-home-page";
import { useLocalPageData } from "@/modules/mainline/shared/client/use-local-page-data";
import type { GameCatalogue } from "@/modules/reference/features/games/types";

/* Home, read on the device; the games and the sign-up pick come from the server. */
export const MainlineHomeRoute = ({
  catalogue,
  intent,
  requestedPlayId,
}: {
  catalogue: GameCatalogue | null;
  intent: StartIntent | null;
  requestedPlayId: string | null;
}) => {
  const data = useLocalPageData(`home:${requestedPlayId ?? ""}`, () =>
    getHomePageData(requestedPlayId, { catalogue, intent }),
  );

  return data ? <MainlineHomePage data={data} /> : null;
};
