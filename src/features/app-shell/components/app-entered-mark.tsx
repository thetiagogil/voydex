"use client";

import { useEffect } from "react";

import { rememberAppEntered } from "@/config/front-door";

/* Once the app has opened on this device, the front page stops showing. */
export const AppEnteredMark = () => {
  useEffect(rememberAppEntered, []);

  return null;
};
