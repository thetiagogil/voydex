"use client";

import { homePageRead } from "@/modules/mainline/features/home/client/home-page-query";
import { MainlineHomePage } from "@/modules/mainline/features/home/mainline-home-page";
import { useLocalPageData } from "@/modules/mainline/shared/client/use-local-page-data";

/* Home, read on the device, with the games from the pre-built catalogue. */
export const MainlineHomeRoute = ({
  requestedPlayId,
}: {
  requestedPlayId: string | null;
}) => {
  const { keep, key, read } = homePageRead(requestedPlayId);
  const result = useLocalPageData(key, read, keep);

  return <MainlineHomePage data={result.data} />;
};
