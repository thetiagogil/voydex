"use client";

import Link from "next/link";
import { useEffect, useState } from "react";

import { Logo } from "@/shared/components/brand/logo";
import { cn } from "@/shared/utils/cn";

type AppNavbarProps = {
  /* Where the V tile leads: Mainline Home signed in, the front door signed out. */
  brandHref: string;
  center?: React.ReactNode;
  end?: React.ReactNode;
  showName?: boolean;
};

/* How far the page scrolls before the bar fades into a quiet pill. */
const SCROLLED_AFTER = 8;

const useScrolled = () => {
  const [isScrolled, setIsScrolled] = useState(false);

  useEffect(() => {
    const update = () => setIsScrolled(window.scrollY > SCROLLED_AFTER);

    update();
    window.addEventListener("scroll", update, { passive: true });

    return () => window.removeEventListener("scroll", update);
  }, []);

  return isScrolled;
};

/*
 * v3's bar: the V tile on the left, the sections centred, your utilities on
 * the right. From 768px the whole bar is one white pill that stays at the top
 * as you scroll. Once you scroll it settles: a little slimmer, on a softer
 * shadow, so it stays out of the way, and it lifts again under the pointer or
 * keyboard focus. It stays solid white: see-through without a blur (which the
 * design rules out) lets the page's covers ghost through the words. Where a page docks its own bar (a Play, a Pokémon entry), the
 * pill steps aside for it. Phones keep the bare tile at the top of the page
 * (their sections live in the bottom bar). Its colours are the `--bar-*`
 * tokens; on the pill its controls take the inset fill and the row hover.
 */
export const AppNavbar = ({
  brandHref,
  center,
  end,
  showName = false,
}: AppNavbarProps) => {
  const isScrolled = useScrolled();

  return (
    <header
      className={cn(
        "text-ink relative z-40 w-full shrink-0 transition-[translate,opacity] duration-200 ease-out md:sticky md:top-0",
        "md:[:root[data-bar-docked]_&]:pointer-events-none md:[:root[data-bar-docked]_&]:-translate-y-full md:[:root[data-bar-docked]_&]:opacity-0",
      )}
    >
      <div className="page-column flex h-(--bar-h) items-center">
        <div
          data-scrolled={isScrolled ? "" : undefined}
          className={cn(
            "grid w-full grid-cols-[minmax(0,1fr)_auto_minmax(0,1fr)] items-center gap-3",
            "md:bg-surface md:shadow-card md:h-13 md:rounded-full md:px-2 md:transition-[height,box-shadow] md:duration-200 md:ease-out md:[--bar-control:var(--surface-2)] md:[--bar-hover:var(--hover)]",
            "md:data-scrolled:not-hover:not-focus-within:shadow-soft md:data-scrolled:h-11",
          )}
        >
          <div className="flex min-w-0 items-center">
            <Link
              href={brandHref}
              aria-label="Voydex home"
              className="inline-flex h-11 min-w-11 shrink-0 items-center rounded-sm"
            >
              {/* v3 drops the word on narrow phones; the tile alone is the brand. */}
              <Logo
                showText={showName}
                markClassName="size-9 bg-(--bar-brand)"
                textClassName="max-sm:hidden"
              />
            </Link>
          </div>
          <div className="flex min-w-0 items-center justify-center">
            {center}
          </div>
          <div className="flex min-w-0 items-center justify-end gap-1.5">
            {end}
          </div>
        </div>
      </div>
    </header>
  );
};
