"use client";

import { useSyncExternalStore } from "react";

/*
 * Below 1024px every sheet is a bottom sheet (phones and tablets); from
 * 1024px up a detail opens beside its list or as a side sheet.
 */
const BOTTOM_SHEET_MEDIA_QUERY = "(max-width: 1023px)";

const subscribe = (onStoreChange: () => void) => {
  const mediaQueryList = window.matchMedia(BOTTOM_SHEET_MEDIA_QUERY);
  mediaQueryList.addEventListener("change", onStoreChange);

  return () => {
    mediaQueryList.removeEventListener("change", onStoreChange);
  };
};

const getSnapshot = () => window.matchMedia(BOTTOM_SHEET_MEDIA_QUERY).matches;

const getServerSnapshot = () => false;

/* True where sheets open from the bottom (below 1024px). */
export const useBottomSheetLayout = () =>
  useSyncExternalStore(subscribe, getSnapshot, getServerSnapshot);
