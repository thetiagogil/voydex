import type { ComponentProps, ReactNode } from "react";

import { DexLens } from "@/shared/components/brand/dex-lens";
import { DexLights } from "@/shared/components/brand/dex-lights";
import { cn } from "@/shared/utils/cn";

type DexDeviceProps = {
  /* The id of the heading that names this part of the page. */
  ariaLabelledBy?: string;
  children: ReactNode;
  className?: string;
  /* The top row's right side: the page's own links (Log in, Go back). */
  top: ReactNode;
};

/*
 * A page that opens as the Dex itself: the action red across the window,
 * with the device's top (the lens, the three lights and the page's own
 * links over the stepped darker edge a Pokédex has). The front page's head
 * and the log-in pages stand in it. It draws its own top, so its page takes
 * no site bar. Links set straight on it take a white focus ring.
 */
export const DexDevice = ({
  ariaLabelledBy,
  children,
  className,
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
        <DexLens className="text-12 sm:text-16 size-13 sm:size-18" />
        <DexLights className="mt-4 -ml-1 self-start sm:mt-5" />
        <nav aria-label="Main" className="ml-auto flex items-center gap-1.5">
          {top}
        </nav>
      </header>
      {children}
    </div>
  </section>
);

type DexScreenFrameProps = Omit<ComponentProps<"div">, "children"> & {
  children: ReactNode;
  screenClassName?: string;
};

/*
 * The Dex's screen: a white screen in the device's dark bezel, with the
 * three slits under it. What it shows is the page's own (an example Play on
 * the front page, the form on the log-in pages). The screen counts as a
 * card (`data-slot`), so fields on it are drawn as on any card, and controls
 * on it take the usual focus ring again.
 */
export const DexScreenFrame = ({
  children,
  className,
  screenClassName,
  ...props
}: DexScreenFrameProps) => (
  <div
    className={cn(
      "bg-action-lip w-full rounded-2xl p-3 pb-3.5 sm:p-4 sm:pb-4.5",
      className,
    )}
    {...props}
  >
    <div
      data-slot="card"
      className={cn(
        "bg-surface text-ink rounded-xl p-4 text-left [--focus:var(--focus-ink)] sm:p-5.5",
        screenClassName,
      )}
    >
      {children}
    </div>
    <span aria-hidden className="mt-3 flex flex-col gap-1 px-1.5">
      <span className="bg-action block h-1 w-11 rounded-full" />
      <span className="bg-action block h-1 w-11 rounded-full" />
      <span className="bg-action block h-1 w-11 rounded-full" />
    </span>
  </div>
);
