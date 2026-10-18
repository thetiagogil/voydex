import type { ReactNode } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

type PageBandProps = {
  children: ReactNode;
  className?: string;
};

/*
 * The band that opens every page but Home: the page's head and, on a list,
 * its toolbar, or a subject's hero, on the neutral band colour, edge to edge
 * under the top bar, which sits on it. The band stays neutral so what the
 * page shows (type-coloured stickers, covers) brings the colour. What follows
 * the band sits on the plain page ground.
 */
export const PageBand = ({ children, className }: PageBandProps) => (
  <div className="page-band bg-band-sand relative isolate rounded-b-[28px] sm:rounded-b-[44px]">
    {/*
     * A large, faint Poké Ball at the band's right edge: the band's one
     * touch of the app's own identity, quiet enough to sit under anything.
     * It is clipped on its own layer, so a handle can sit on the band's edge,
     * and anchored to the top, so it stays put when the band grows.
     */}
    <span
      aria-hidden
      className="pointer-events-none absolute inset-0 -z-1 overflow-hidden rounded-b-[28px] sm:rounded-b-[44px]"
    >
      <AppIcon
        icon={appIcons.product.caught}
        strokeWidth={1.25}
        className="text-action absolute -top-24 -right-16 size-96 -rotate-12 opacity-5 max-sm:-top-16 max-sm:size-64"
      />
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
