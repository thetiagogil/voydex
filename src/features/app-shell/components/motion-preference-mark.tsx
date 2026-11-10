"use client";

import { useLayoutEffect } from "react";

import { useAppAccount } from "@/features/app-shell/components/app-account-provider";

/*
 * Puts your Motion setting on the page's root element as `data-motion`, where
 * `app-base.css` and `isMotionReduced` read it. Full leaves the attribute
 * off, so a device that asks for reduced motion still gets it.
 */
export const MotionPreferenceMark = () => {
  const { motion } = useAppAccount();

  useLayoutEffect(() => {
    const root = document.documentElement;

    if (motion === "full") {
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
