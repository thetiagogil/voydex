import type { ReactNode } from "react";

import { DexLens } from "@/shared/components/brand/dex-lens";
import { DexLights } from "@/shared/components/brand/dex-lights";
import { Link } from "@/shared/components/link";
import { cn } from "@/shared/utils/cn";

type DexDeviceProps = {
  /* The id of the heading that names this part of the page. */
  ariaLabelledBy?: string;
  /* The page's opening, on the red under the top: its title first. */
  children: ReactNode;
  className?: string;
  /* Where the lens leads: always the start page. */
  homeHref: string;
  /* The top row's right side: the page's own links (Log in, Go back). */
  top: ReactNode;
};

/*
 * The head of a page outside the app, which is the Dex itself: the action
 * red across the window, rounded at the bottom, under the device's darker
 * stepped top. The top carries the lens, which leads to the start page, the
 * three lights and the page's own links; the red under it holds the page's
 * opening, its title first (the front page's name and screen, a log-in
 * page's title). Every such page takes the same head, so moving between
 * them keeps the top where it is. It draws its own top, so its page takes
 * no site bar. Links set straight on it take a white focus ring.
 */
export const DexDevice = ({
  ariaLabelledBy,
  children,
  className,
  homeHref,
  top,
}: DexDeviceProps) => (
  <section
    aria-labelledby={ariaLabelledBy}
    className={cn(
      "bg-action relative isolate mx-[calc(50%-50vw)] -mt-(--page-top) flex w-screen flex-col overflow-hidden rounded-b-[28px] text-white [--focus:var(--surface)] sm:rounded-b-[44px]",
      className,
    )}
  >
    {/* The device's darker top, cut with the Dex's step. */}
    <span
      aria-hidden
      className="bg-action-deep absolute inset-x-0 top-0 -z-1 h-27 [clip-path:polygon(0_0,100%_0,100%_78%,46%_78%,40%_100%,0_100%)] sm:h-33"
    />
    <div className="mx-auto flex w-full max-w-(--page-width) flex-1 flex-col px-(--page-gutter)">
      <header className="flex h-21 shrink-0 items-center gap-3 sm:h-26 sm:gap-4">
        <Link
          href={homeHref}
          aria-label="Voydex home"
          className="focus-ring inline-grid rounded-full"
        >
          <DexLens className="text-12 sm:text-16 size-13 sm:size-18" />
        </Link>
        <DexLights className="mt-4 -ml-1 self-start sm:mt-5" />
        <nav aria-label="Main" className="ml-auto flex items-center gap-1.5">
          {top}
        </nav>
      </header>
      {children}
    </div>
  </section>
);
