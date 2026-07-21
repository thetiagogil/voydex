"use client";

import { useSyncExternalStore } from "react";

const TEAM_DETAIL_SHEET_MEDIA_QUERY = "(max-width: 1023px)";

const subscribeToTeamDetailLayout = (onStoreChange: () => void) => {
  const mediaQueryList = window.matchMedia(TEAM_DETAIL_SHEET_MEDIA_QUERY);
  mediaQueryList.addEventListener("change", onStoreChange);

  return () => {
    mediaQueryList.removeEventListener("change", onStoreChange);
  };
};

const getTeamDetailSheetSnapshot = () => {
  return window.matchMedia(TEAM_DETAIL_SHEET_MEDIA_QUERY).matches;
};

const getTeamDetailSheetServerSnapshot = () => false;

export const useTeamDetailSheetLayout = () => {
  return useSyncExternalStore(
    subscribeToTeamDetailLayout,
    getTeamDetailSheetSnapshot,
    getTeamDetailSheetServerSnapshot,
  );
};
