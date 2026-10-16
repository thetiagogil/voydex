"use client";

import { useLayoutEffect, useRef } from "react";

const tintVariables = ["--game", "--game-strong", "--gt"] as const;

/*
 * A tinted band opens the page under the transparent top bar, so the bar
 * follows it: this copies the band's game colour (read from the `game-scope`
 * around it) to the document root and marks it `data-band-tint`. The bar's
 * own tokens (`--bar-*` in app-tokens.css) then put its quiet controls on a
 * soft white surface and its current link and V tile on the game's strong
 * shade. It renders a hidden marker only, and undoes it all on unmount.
 */
export const BandTintRoot = () => {
  const markerRef = useRef<HTMLSpanElement>(null);

  // Runs after every render: the band's game can change in place (Start a Play).
  useLayoutEffect(() => {
    const marker = markerRef.current;

    if (!marker) {
      return;
    }

    const computed = getComputedStyle(marker);
    const root = document.documentElement;

    for (const name of tintVariables) {
      const value = computed.getPropertyValue(name).trim();

      if (value) {
        root.style.setProperty(name, value);
      }
    }

    root.dataset.bandTint = "";

    return () => {
      for (const name of tintVariables) {
        root.style.removeProperty(name);
      }

      delete root.dataset.bandTint;
    };
  });

  return <span ref={markerRef} hidden />;
};
