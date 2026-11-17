"use client";

import { useRouter } from "next/navigation";
import { useLayoutEffect } from "react";

import { readFrontDoorHref } from "@/config/front-door";

/*
 * Reaching the front page from inside the site (a link, the back button)
 * on a device that has opened the app: on to the app, as the page's inline
 * script does on a full load.
 */
export const FrontDoorRedirect = () => {
  const router = useRouter();

  useLayoutEffect(() => {
    const href = readFrontDoorHref();

    if (href) router.replace(href);
  }, [router]);

  return null;
};
