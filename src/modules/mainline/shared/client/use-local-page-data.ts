"use client";

import { notFound } from "next/navigation";

import { useLocalPageRead } from "@/platform/local-db/local-db-context";

/*
 * A Mainline page's read, named once for its page and for getting the page
 * ready before it opens (`public-page-reads`): a `PageReadPlan` whose
 * readers ask the device for their own client. Null is a page not found.
 */
export type MainlinePageRead<Data> = {
  key: string;
  read(): Promise<Data | null>;
  keep?(data: Data | null): boolean;
};

/*
 * A page's data from the device, the way a route read it on the server:
 * the page's loading state shows while the read runs (milliseconds on the
 * device, a small download when it also reads a pre-built file), the
 * not-found page for null, and the error page for a failed read. `key`
 * names everything the read depends on.
 */
export const useLocalPageData = <Data>(
  key: string,
  read: () => Promise<Data | null>,
  keep?: (data: Data | null) => boolean,
): Data => {
  const data = useLocalPageRead(key, () => read(), keep);

  if (data === null) notFound();

  return data;
};
