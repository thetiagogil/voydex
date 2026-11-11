"use client";

import { useEffect, useState } from "react";

import { readMaybeGzippedText } from "@/platform/local-db/gzip";
import {
  decodePrebuiltData,
  prebuiltDataUrl,
} from "@/platform/prebuilt-data/prebuilt-data";

export type PrebuiltRead<Data> =
  | { status: "loading" }
  | { data: Data; status: "ready" }
  /* No such file: the address names nothing (a 404). */
  | { status: "missing" }
  | { error: Error; status: "failed" };

/*
 * The last files asked for this visit, and those already read, so going
 * back opens at once. Only the last few: a species' entry is large once
 * read, and a visit may open hundreds.
 */
const keptFiles = 16;
const requests = new Map<string, Promise<unknown>>();
const readFiles = new Map<string, unknown>();

/* Marks a file as just used, and lets go of the oldest beyond the last few. */
const keep = (path: string, request: Promise<unknown>) => {
  requests.delete(path);
  requests.set(path, request);

  for (const oldest of requests.keys()) {
    if (requests.size <= keptFiles) break;
    requests.delete(oldest);
    readFiles.delete(oldest);
  }
};

/*
 * One pre-built file, or null when there is none (a null path names none).
 * A failed download is forgotten, so the next visit tries again.
 */
export const fetchPrebuiltData = <Data>(
  path: string | null,
): Promise<Data | null> => {
  if (path === null) return Promise.resolve(null);

  const cached = requests.get(path);

  if (cached) {
    keep(path, cached);

    return cached as Promise<Data | null>;
  }

  const request = fetch(`${prebuiltDataUrl}/${path}`).then(async (response) => {
    if (response.status === 404) return null;

    if (!response.ok) {
      throw new Error(
        "This page's data didn't download. Check the connection and try again.",
      );
    }

    return decodePrebuiltData<Data>(
      await readMaybeGzippedText(new Uint8Array(await response.arrayBuffer())),
    );
  });

  keep(path, request);
  request.then(
    (data) => {
      if (requests.get(path) === request) readFiles.set(path, data);
    },
    () => {
      if (requests.get(path) === request) requests.delete(path);
    },
  );

  return request;
};

/*
 * A pre-built file for a page, read in the browser. A null path (an address
 * that can't name a file) is missing straight away; an undefined one isn't
 * known yet (it waits on another file) and stays loading.
 */
export const usePrebuiltData = <Data>(
  path: string | null | undefined,
): PrebuiltRead<Data> => {
  const [state, setState] = useState<PrebuiltRead<Data> & { path?: string }>({
    status: "loading",
  });

  useEffect(() => {
    if (path === null || path === undefined) return;

    let current = true;

    fetchPrebuiltData<Data>(path).then(
      (data) => {
        if (!current) return;
        setState(
          data === null
            ? { path, status: "missing" }
            : { data, path, status: "ready" },
        );
      },
      (error: unknown) => {
        if (!current) return;
        setState({
          error: error instanceof Error ? error : new Error(String(error)),
          path,
          status: "failed",
        });
      },
    );

    return () => {
      current = false;
    };
  }, [path]);

  if (path === null) return { status: "missing" };
  if (path === undefined) return { status: "loading" };

  if (state.path !== path) {
    /* A file read before (a page you go back to) shows at once. */
    if (readFiles.has(path)) {
      const data = readFiles.get(path) as Data | null;

      return data === null ? { status: "missing" } : { data, status: "ready" };
    }

    /* A file read for another path is never shown as this one's. */
    return { status: "loading" };
  }

  return state;
};
