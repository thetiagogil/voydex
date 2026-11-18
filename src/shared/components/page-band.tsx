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
  mark,
  tone = "neutral",
}: PageBandProps) => (
  <div
    className={cn(
      "page-band relative isolate rounded-b-[28px] sm:rounded-b-[44px]",
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
      className="pointer-events-none absolute inset-0 -z-1 overflow-hidden rounded-b-[28px] sm:rounded-b-[44px]"
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
    {tone === "action" ? (
      /*
       * The darker top the bar sits on: it parts the bar from the page, and
       * steps down a little on the left.
       */
      <span
        aria-hidden
        className="bg-action-deep absolute inset-x-0 top-0 -z-1 h-[calc(var(--bar-h)+0.875rem)] [clip-path:polygon(0_0,100%_0,100%_calc(100%-0.875rem),46%_calc(100%-0.875rem),42%_100%,0_100%)]"
      />
    ) : null}
    <div
      className={cn(
        "mx-auto w-full max-w-(--page-width) px-(--page-gutter) pb-6 sm:pb-8",
        /* Links set straight on the red take a white focus ring. */
        tone === "action" && "[--focus:var(--surface)]",
        className,
      )}
    >
      {children}
    </div>
  </div>
);
