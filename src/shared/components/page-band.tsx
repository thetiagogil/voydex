import type { ReactNode } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

type PageBandProps = {
  children: ReactNode;
  className?: string;
  /*
   * The band takes all the room its page has left (Home, whose band is the
   * whole page), instead of only what it holds.
   */
  fill?: boolean;
  /*
   * The large, faint mark at the band's right edge, filling its box: the
   * Poké Ball unless the page has its own (a Specialist's type).
   */
  mark?: ReactNode;
  /*
   * `action` is the site's band, on the action red with white words and a
   * darker stepped top for the bar: the door into the app (the front page,
   * the log-in pages). The app's own pages keep the neutral band.
   */
  tone?: "action" | "neutral";
};

/*
 * The band that opens every page but Home: the page's head and, on a list,
 * its toolbar, or a subject's hero, on the neutral band colour, edge to edge
 * under the top bar, which sits on it. Outside the app the same band is the
 * action red (`tone="action"`): the door is red, the app is quiet. The band stays neutral so what the
 * page shows (type-coloured stickers, covers) brings the colour. What follows
 * the band sits on the plain page ground.
 */
export const PageBand = ({
  children,
  className,
  fill = false,
  mark,
  tone = "neutral",
}: PageBandProps) => (
  <div
    className={cn(
      "page-band relative isolate",
      fill && "flex flex-1 flex-col",
      tone === "action" ? "bg-action text-white" : "bg-band",
    )}
  >
    {/*
     * A large, faint Poké Ball at the band's right edge (or the page's own
     * mark): the band's one touch of identity, quiet enough to sit under
     * anything.
     * It is clipped on its own layer, so a handle can sit on the band's edge,
     * and anchored to the top, so it stays put when the band grows.
     */}
    <span
      aria-hidden
      className="pointer-events-none absolute inset-0 -z-1 overflow-hidden"
    >
      <span
        className={cn(
          "absolute -top-24 -right-16 flex size-96 -rotate-12 max-sm:-top-16 max-sm:size-64",
          tone === "action" ? "text-white opacity-10" : "text-calm opacity-6",
        )}
      >
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
        fill && "flex-1",
        /* Links set straight on the red take a white focus ring. */
        tone === "action" && "[--focus:var(--surface)]",
        className,
      )}
    >
      {children}
    </div>
  </div>
);
