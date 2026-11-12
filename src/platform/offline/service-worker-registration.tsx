"use client";

import { useEffect } from "react";

/*
 * Ask the browser for a new release at most this often while the app stays
 * open (an installed app on a phone resumes instead of reloading).
 */
const updateCheckGap = 30 * 60 * 1000;

/*
 * Starts the service worker that keeps the app working offline (#274). Only
 * the built app has one (`out/sw.js`); `next dev` never caches anything.
 */
export const ServiceWorkerRegistration = () => {
  useEffect(() => {
    if (process.env.NODE_ENV !== "production") return;
    if (!("serviceWorker" in navigator)) return;

    let lastCheck = Date.now();
    const registering = navigator.serviceWorker
      .register("/sw.js", { scope: "/", updateViaCache: "none" })
      .catch(() => null);

    const checkForUpdate = () => {
      if (document.visibilityState !== "visible") return;
      if (Date.now() - lastCheck < updateCheckGap) return;

      lastCheck = Date.now();
      void registering.then((registration) =>
        registration?.update().catch(() => undefined),
      );
    };

    document.addEventListener("visibilitychange", checkForUpdate);

    return () =>
      document.removeEventListener("visibilitychange", checkForUpdate);
  }, []);

  return null;
};
