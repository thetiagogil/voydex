import type { ReactNode } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

type PageBandProps = {
  children: ReactNode;
  className?: string;
  /*
   * The large, faint mark at the band's right edge, filling its box: the
   * Poké Ball unless the page has its own (a Specialist's type).
   */
  mark?: ReactNode;
};

/*
 * The band that opens every page but Home: the page's head and, on a list,
 * its toolbar, or a subject's hero, on the neutral band colour, edge to edge
 * under the top bar, which sits on it. The band stays neutral so what the
 * page shows (type-coloured stickers, covers) brings the colour. What follows
 * the band sits on the plain page ground.
 */
export const PageBand = ({ children, className, mark }: PageBandProps) => (
  <div className="page-band bg-band relative isolate rounded-b-[28px] sm:rounded-b-[44px]">
    {/*
     * A large, faint Poké Ball at the band's right edge (or the page's own
     * mark): the band's one touch of identity, quiet enough to sit under
     * anything.
     * It is clipped on its own layer, so a handle can sit on the band's edge,
     * and anchored to the top, so it stays put when the band grows.
     */}
    <span
      aria-hidden
      className="pointer-events-none absolute inset-0 -z-1 overflow-hidden rounded-b-[28px] sm:rounded-b-[44px]"
    >
      <span className="text-calm absolute -top-24 -right-16 flex size-96 -rotate-12 opacity-6 max-sm:-top-16 max-sm:size-64">
        {mark ?? (
          <AppIcon
            icon={appIcons.product.caught}
            strokeWidth={1.25}
            className="size-full"
          />
        )}
      </span>
    </span>
    <div
      className={cn(
        "mx-auto w-full max-w-(--page-width) px-(--page-gutter) pb-6 sm:pb-8",
        className,
      )}
    >
      {children}
    </div>
  </div>
);
