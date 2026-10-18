import Link from "next/link";

import { Logo } from "@/shared/components/brand/logo";
import { cn } from "@/shared/utils/cn";

type AppNavbarProps = {
  /* Where the V tile leads: Mainline Home signed in, the front door signed out. */
  brandHref: string;
  center?: React.ReactNode;
  end?: React.ReactNode;
  showName?: boolean;
};

/*
 * v3's bar: the V tile on the left, the sections centred, your utilities on
 * the right, at the top of the page (it scrolls away with it). From 768px the
 * whole bar is one pill. At rest it is quiet: a lighter tint of the band with
 * a hairline edge and no shadow, so it reads as its own thing without pulling
 * the eye. Under the pointer or keyboard focus it comes forward, white on the
 * card shadow. The V and the words never fade. Phones keep the bare tile
 * (their sections live in the bottom bar). Its colours are the `--bar-*`
 * tokens; on the pill its controls take the inset fill and the row hover.
 */
export const AppNavbar = ({
  brandHref,
  center,
  end,
  showName = false,
}: AppNavbarProps) => (
  <header className="text-ink relative z-40 w-full shrink-0">
    <div className="page-column flex h-(--bar-h) items-center">
      <div
        className={cn(
          "grid w-full grid-cols-[minmax(0,1fr)_auto_minmax(0,1fr)] items-center gap-3",
          // At rest: a quiet pill, a lighter tint of what is behind it with a hairline edge.
          "md:h-13 md:rounded-full md:bg-white/45 md:px-3 md:outline-1 md:-outline-offset-1 md:outline-[color-mix(in_oklab,var(--lip)_70%,transparent)] md:transition-[background-color,box-shadow,outline-color] md:duration-200 md:ease-out md:outline-solid md:[--bar-control:var(--surface-2)] md:[--bar-hover:var(--hover)]",
          /*
           * Pointer or keyboard: it comes forward, white on the card shadow.
           * Keyboard focus only (`focus-visible`), so a clicked link doesn't
           * keep the bar lit on the next page.
           */
          "md:has-focus-visible:bg-surface md:has-focus-visible:shadow-card md:hover:bg-surface md:hover:shadow-card md:hover:outline-transparent md:has-focus-visible:outline-transparent",
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
        <div className="flex min-w-0 items-center justify-center">{center}</div>
        <div className="flex min-w-0 items-center justify-end gap-1.5">
          {end}
        </div>
      </div>
    </div>
  </header>
);
