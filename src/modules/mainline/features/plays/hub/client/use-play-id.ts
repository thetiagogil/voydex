"use client";

import { notFound, useSearchParams } from "next/navigation";

/*
 * The Play a hub page shows, from its address (`?id=`): Plays live on the
 * device, so one page serves them all. No id is a page that doesn't exist.
 */
export const usePlayId = () => {
  const playId = useSearchParams().get("id");

  if (!playId) {
    notFound();
  }

  return playId;
};
