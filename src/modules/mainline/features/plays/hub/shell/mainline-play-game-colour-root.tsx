"use client";

import { useEffect } from "react";

import type { GameColourStyle } from "@/modules/reference/features/games/utils/game-color-styles";

/*
 * Menus, sheets, dialogs and tooltips are portalled to the end of the body,
 * outside the Play's `game-scope` element. While a Play is open, the same
 * game colour is set on the document root so they wear it too.
 */
export const MainlinePlayGameColourRoot = ({
  style,
}: {
  style: GameColourStyle;
}) => {
  const game = style["--game"];
  const gameStrong = style["--game-strong"];
  const tintStrength = style["--gt"];

  useEffect(() => {
    const root = document.documentElement.style;

    root.setProperty("--game", game);
    root.setProperty("--game-strong", gameStrong);
    root.setProperty("--gt", tintStrength);

    return () => {
      root.removeProperty("--game");
      root.removeProperty("--game-strong");
      root.removeProperty("--gt");
    };
  }, [game, gameStrong, tintStrength]);

  return null;
};
