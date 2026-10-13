"use client";

import { useEffect, useRef, useState, type ReactNode } from "react";

import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { cn } from "@/shared/utils/cn";

type MainlinePlayDockedBarProps = {
  children: ReactNode;
  coverImageUrl: string | null;
  gameName: string;
  navigation: ReactNode;
  title: string;
};

/*
 * Once the Play header scrolls away, it comes back condensed and docks to the
 * top edge, full width: the Play's colour, its lip and rounded bottom
 * corners, and the cover, the name and the same tabs in the page column.
 */
export const MainlinePlayDockedBar = ({
  children,
  coverImageUrl,
  gameName,
  navigation,
  title,
}: MainlinePlayDockedBarProps) => {
  const headerRef = useRef<HTMLDivElement>(null);
  const [isDocked, setIsDocked] = useState(false);

  useEffect(() => {
    const header = headerRef.current;

    if (!header || typeof IntersectionObserver === "undefined") {
      return;
    }

    const observer = new IntersectionObserver(
      ([entry]) => setIsDocked(!entry.isIntersecting),
      { rootMargin: "-24px 0px 0px 0px" },
    );

    observer.observe(header);

    return () => observer.disconnect();
  }, []);

  /*
   * While docked, the bar covers the top of the page: keep focused elements
   * and sticky panels clear of it.
   */
  useEffect(() => {
    const root = document.documentElement.style;

    if (!isDocked) {
      return;
    }

    root.setProperty("--play-dock-offset", "76px");
    root.setProperty("scroll-padding-top", "92px");

    return () => {
      root.removeProperty("--play-dock-offset");
      root.removeProperty("scroll-padding-top");
    };
  }, [isDocked]);

  return (
    <>
      <div
        aria-hidden={!isDocked}
        inert={!isDocked}
        className={cn(
          "fixed inset-x-0 top-0 z-30 transition-[translate,opacity,visibility] duration-200 ease-out",
          isDocked
            ? "visible translate-y-0 opacity-100"
            : "invisible -translate-y-[calc(100%+16px)] opacity-0",
        )}
      >
        <div className="bg-game-soft rounded-b-xl shadow-[0_4px_0_var(--game-lip),var(--shadow-float-value)]">
          <div className="page-column flex min-w-0 items-center gap-3 pt-2 pb-2.5">
            <GameCover
              alt=""
              className="max-sm:hidden"
              coverImageUrl={coverImageUrl}
              gameName={gameName}
              size="dock"
            />
            <p className="font-display text-17 hidden min-w-0 flex-1 truncate font-semibold sm:block">
              {title}
            </p>
            <div className="no-scrollbar -m-1.5 max-w-full min-w-0 overflow-x-auto p-1.5">
              {navigation}
            </div>
          </div>
        </div>
      </div>
      <div ref={headerRef}>{children}</div>
    </>
  );
};
