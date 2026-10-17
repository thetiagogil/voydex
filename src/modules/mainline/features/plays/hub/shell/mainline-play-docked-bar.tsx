"use client";

import type { ReactNode } from "react";

import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { DockedBar } from "@/shared/components/docked-bar";

type MainlinePlayDockedBarProps = {
  children: ReactNode;
  coverImageUrl: string | null;
  gameName: string;
  navigation: ReactNode;
  title: string;
};

/*
 * Once the Play's head scrolls away, it comes back condensed and docks to the
 * top edge (`DockedBar`): the cover, the name and the same tabs. Sticky
 * panels read `--play-dock-offset` to stay clear of it.
 */
export const MainlinePlayDockedBar = ({
  children,
  coverImageUrl,
  gameName,
  navigation,
  title,
}: MainlinePlayDockedBarProps) => (
  <DockedBar
    offsetProperty="--play-dock-offset"
    picture={
      <GameCover
        alt=""
        coverImageUrl={coverImageUrl}
        gameName={gameName}
        size="dock"
      />
    }
    scrollPadding="92px"
    title={title}
    trailing={
      <div className="no-scrollbar -m-1.5 max-w-full min-w-0 overflow-x-auto p-1.5">
        {navigation}
      </div>
    }
  >
    {children}
  </DockedBar>
);
