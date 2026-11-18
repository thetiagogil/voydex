import type { ReactNode } from "react";

import { DexLens } from "@/shared/components/brand/dex-lens";
import { DexLights } from "@/shared/components/brand/dex-lights";
import { Link } from "@/shared/components/link";
import { cn } from "@/shared/utils/cn";

type DexDeviceProps = {
  /* The id of the heading that names this part of the page. */
  ariaLabelledBy?: string;
  /* What stands on the red under the top; left out, only the top shows. */
  children?: ReactNode;
  className?: string;
  /* Where the lens leads: always the start page. */
  homeHref: string;
  /* The top row's right side: the page's own links (Log in, Go back). */
  top: ReactNode;
};

/*
 * The Dex as the top of a page, in one of two shapes. With `children` it is
 * the head of a page that opens as the device: the action red across the
 * window, rounded at the bottom, holding the page's opening under a darker
 * stepped top (the front page). Without, the red holds nothing but the bar,
 * so the bar is the stepped shape itself: taller where the lens sits, a
 * step down, thinner for the links, and no panel under it (the log-in
 * pages). Either way the top carries the lens, which leads to the start
 * page, the three lights and the page's own links. It draws its own top, so
 * its page takes no site bar. Links set straight on it take a white focus
 * ring.
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
      "relative isolate mx-[calc(50%-50vw)] -mt-(--page-top) flex w-screen flex-col text-white [--focus:var(--surface)]",
      children
        ? "bg-action overflow-hidden rounded-b-[28px] sm:rounded-b-[44px]"
        : "pb-6 sm:pb-7",
      className,
    )}
  >
    {/*
     * The device's top, cut with the Dex's step: the darker part of a head
     * that holds more, or the whole bar when the top stands alone.
     */}
    <span
      aria-hidden
      className={cn(
        "absolute inset-x-0 top-0 -z-1 h-27 [clip-path:polygon(0_0,100%_0,100%_78%,46%_78%,40%_100%,0_100%)] sm:h-33",
        children ? "bg-action-deep" : "bg-action",
      )}
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
