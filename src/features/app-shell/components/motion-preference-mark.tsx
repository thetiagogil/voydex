"use client";

import { useLayoutEffect } from "react";

import type { MotionPreference } from "@/config/motion-preference";

/*
 * Puts your Motion setting on the page's root element as `data-motion`, where
 * `app-base.css` and `isMotionReduced` read it. Follow device (`system`)
 * leaves the attribute off, so the device's own setting decides.
 */
export const MotionPreferenceMark = ({
  motion,
}: {
  motion: MotionPreference;
}) => {
  useLayoutEffect(() => {
    const root = document.documentElement;

    if (motion === "system") {
      delete root.dataset.motion;
    } else {
      root.dataset.motion = motion;
    }

    return () => {
      delete root.dataset.motion;
    };
  }, [motion]);

  return null;
};
