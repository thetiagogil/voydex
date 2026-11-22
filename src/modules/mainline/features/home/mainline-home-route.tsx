"use client";

import { homePageRead } from "@/modules/mainline/features/home/client/home-page-query";
import { MainlineHomePage } from "@/modules/mainline/features/home/mainline-home-page";
import type { HomeTrainerCardRender } from "@/modules/mainline/features/home/sections/home-dashboard";
import { useLocalPageData } from "@/modules/mainline/shared/client/use-local-page-data";

/* Home, read on the device. */
export const MainlineHomeRoute = ({
  renderTrainerCard,
  requestedPlayId,
}: {
  /* The app's trainer card, which Home fills with its own figures. */
  renderTrainerCard: HomeTrainerCardRender;
  requestedPlayId: string | null;
}) => {
  const { key, read } = homePageRead(requestedPlayId);
  const result = useLocalPageData(key, read);

  return (
    <MainlineHomePage
      data={result.data}
      renderTrainerCard={renderTrainerCard}
    />
  );
};
