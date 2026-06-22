import * as React from "react";

const MOBILE_BREAKPOINT = 768;
const MOBILE_MEDIA_QUERY = `(max-width: ${MOBILE_BREAKPOINT - 1}px)`;

function getIsMobileSnapshot() {
  return window.matchMedia(MOBILE_MEDIA_QUERY).matches;
}

function getIsMobileServerSnapshot() {
  return false;
}

function subscribeToMobileChanges(onStoreChange: () => void) {
  const mediaQueryList = window.matchMedia(MOBILE_MEDIA_QUERY);

  mediaQueryList.addEventListener("change", onStoreChange);

  return () => {
    mediaQueryList.removeEventListener("change", onStoreChange);
  };
}

export function useIsMobile() {
  return React.useSyncExternalStore(
    subscribeToMobileChanges,
    getIsMobileSnapshot,
    getIsMobileServerSnapshot,
  );
}
