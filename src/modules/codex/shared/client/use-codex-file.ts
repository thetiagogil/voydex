"use client";

import { notFound } from "next/navigation";

import { usePrebuiltData } from "@/platform/prebuilt-data/use-prebuilt-data";

/*
 * A Codex page's pre-built file: null while it downloads, or while its path
 * waits on another file (undefined); show the loading state. A 404 when
 * there is no such file, and the Codex error page when it doesn't download.
 */
export const useCodexFile = <Data>(
  path: string | null | undefined,
): Data | null => {
  const read = usePrebuiltData<Data>(path);

  if (read.status === "missing") notFound();
  if (read.status === "failed") throw read.error;

  return read.status === "ready" ? read.data : null;
};
