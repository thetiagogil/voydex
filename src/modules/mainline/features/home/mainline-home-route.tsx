"use client";

import { getHomePageData } from "@/modules/mainline/features/home/client/home-page-query";
import { MainlineHomePage } from "@/modules/mainline/features/home/mainline-home-page";
import { useLocalPageData } from "@/modules/mainline/shared/client/use-local-page-data";
import { fetchGameCatalogue } from "@/modules/reference/features/games/client/game-catalogue";

/* Home, read on the device, with the games from the pre-built catalogue. */
export const MainlineHomeRoute = ({
  requestedPlayId,
}: {
  requestedPlayId: string | null;
}) => {
  const data = useLocalPageData(`home:${requestedPlayId ?? ""}`, async () =>
    getHomePageData(requestedPlayId, {
      /* Without the games, Home still shows your Plays. */
      catalogue: await fetchGameCatalogue().catch(() => null),
    }),
  );

  return <MainlineHomePage data={data} />;
};
