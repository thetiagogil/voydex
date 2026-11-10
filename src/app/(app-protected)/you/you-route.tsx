"use client";

import type { ComponentProps } from "react";

import { YouPage } from "@/features/settings/components/you-page";
import { useYouSummary } from "@/modules/mainline/public-you";

type YouRouteProps = Omit<
  ComponentProps<typeof YouPage>,
  "collection" | "statistics"
>;

/* The You page, with its Plays and collection figures read on the device. */
export const YouRoute = (props: YouRouteProps) => {
  const summary = useYouSummary();

  return (
    <YouPage
      {...props}
      collection={summary?.collection}
      statistics={summary?.statistics}
    />
  );
};
