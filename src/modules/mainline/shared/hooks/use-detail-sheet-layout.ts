"use client";

import { useSyncExternalStore } from "react";

const DETAIL_SHEET_MEDIA_QUERY = "(max-width: 1023px)";

const subscribeToDetailLayout = (onStoreChange: () => void) => {
  const mediaQueryList = window.matchMedia(DETAIL_SHEET_MEDIA_QUERY);
  mediaQueryList.addEventListener("change", onStoreChange);

  return () => {
    mediaQueryList.removeEventListener("change", onStoreChange);
  };
};

const getDetailSheetSnapshot = () => {
  return window.matchMedia(DETAIL_SHEET_MEDIA_QUERY).matches;
};

const getDetailSheetServerSnapshot = () => false;

export const useDetailSheetLayout = () => {
  return useSyncExternalStore(
    subscribeToDetailLayout,
    getDetailSheetSnapshot,
    getDetailSheetServerSnapshot,
  );
};
