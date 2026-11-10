"use client";

import { getMyPlansPageData } from "@/modules/mainline/features/plans/my-plans/client/my-plans-query";
import { MainlineMyPlansPage } from "@/modules/mainline/features/plans/my-plans/mainline-my-plans-page";
import { useLocalPageData } from "@/modules/mainline/shared/client/use-local-page-data";

/* My Plans, read on the device. */
export const MainlineMyPlansRoute = ({
  view,
}: {
  view: "active" | "archived";
}) => {
  const plans = useLocalPageData("plans", getMyPlansPageData);

  return plans ? <MainlineMyPlansPage plans={plans} view={view} /> : null;
};
