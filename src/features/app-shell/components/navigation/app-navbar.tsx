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
 * the right. From 768px the whole bar is one pill that stays at the top as
 * you scroll. At rest it is quiet: a lighter tint of the band with a hairline
 * edge and no shadow, so it reads as its own thing without pulling the eye.
 * Under the pointer or keyboard focus it comes forward, white on the card
 * shadow. Once you scroll it turns solid white, slimmer, on a soft shadow, so
 * the page never shows through the words (no blur: the design rules glass
 * out). The V and the words never fade. Where a page docks its own bar (a
 * Play, a Pokémon entry) the pill steps aside. Phones keep the bare tile at
 * the top (their sections live in the bottom bar). Its colours are the
 * `--bar-*` tokens; on the pill its controls take the inset fill and the row
 * hover.
 */ export const AppNavbar = ({
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
            // At rest: a quiet pill, a lighter tint of what is behind it with a hairline edge.
            "md:h-13 md:rounded-full md:bg-white/45 md:px-2 md:outline-1 md:-outline-offset-1 md:outline-[color-mix(in_oklab,var(--lip)_70%,transparent)] md:transition-[height,background-color,box-shadow,outline-color] md:duration-200 md:ease-out md:outline-solid md:[--bar-control:var(--surface-2)] md:[--bar-hover:var(--hover)]",
            // Scrolled: solid, slimmer, on a soft shadow, so the page never shows through.
            "md:data-scrolled:bg-surface md:data-scrolled:shadow-soft md:data-scrolled:h-11 md:data-scrolled:outline-transparent",
            // Pointer or keyboard: it comes forward, white on the card shadow.
            "md:focus-within:bg-surface md:focus-within:shadow-card md:hover:bg-surface md:hover:shadow-card md:focus-within:outline-transparent md:hover:outline-transparent",
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
