"use client";

import { notFound } from "next/navigation";

import { useLocalRead } from "@/platform/local-db/local-db-context";

/*
 * A page's data from the device, the way a route read it on the server:
 * nothing while the read runs (milliseconds on the device, a small download
 * when it also reads a pre-built file), the
 * not-found page for null, and the error page for a failed read. `key`
 * names everything the read depends on.
 */
export const useLocalPageData = <Data>(
  key: string,
  read: () => Promise<Data | null>,
): Data | undefined => {
  const result = useLocalRead(key, () => read());

  if (result.status === "failed") throw result.error;

  if (result.status === "loading") return undefined;

  if (result.data === null) notFound();

  return result.data;
};
