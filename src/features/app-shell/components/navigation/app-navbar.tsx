import { Link } from "@/shared/components/link";

import { Logo } from "@/shared/components/brand/logo";
import { cn } from "@/shared/utils/cn";

type AppNavbarProps = {
  /* Where the V tile leads: Mainline Home in the app, the front page on the site. */
  brandHref: string;
  center?: React.ReactNode;
  end?: React.ReactNode;
  showName?: boolean;
  /*
   * On the site's red band: no pill, the words in white straight on the
   * band's darker top, and the V tile turned round (a red V on white).
   */
  onAction?: boolean;
};

/*
 * The bar: the V tile on the left, the sections centred, your utilities on
 * the right, at the top of the page (it scrolls away with it). It has no
 * surface of its own: it sits on a strip a shade deeper than the band
 * (`page-band-strip`), which steps down round the logo, and the page you are on is a white tab. Phones
 * keep the bare tile (their sections live in the bottom bar). Its colours
 * are the `--bar-*` tokens. `onAction` is the same bar on the site's red
 * band: white words, a white V tile.
 */
export const AppNavbar = ({
  brandHref,
  center,
  end,
  onAction = false,
  showName = false,
}: AppNavbarProps) => (
  <header className="text-ink relative isolate z-40 w-full shrink-0">
    {/*
     * The strip the bar sits on, a shade deeper than the band under it: it
     * covers the top of the band's mark and steps down round the logo. The
     * bar draws it, so a page without a band has the same bar.
     */}
    <span
      aria-hidden
      className={cn(
        "page-band-strip -z-1",
        onAction ? "bg-action-deep" : "bg-band-deep",
      )}
    />
    <div className="page-column flex h-(--bar-h) items-center">
      <div
        className={cn(
          "grid w-full grid-cols-[minmax(0,1fr)_auto_minmax(0,1fr)] items-center gap-3",
          onAction
            ? "[--bar-brand:var(--surface)] [--bar-hover:rgb(255_255_255/0.16)] [--bar-ink-2:#fff] [--bar-ink:#fff] [--focus:var(--surface)]"
            : /* Its controls are white on the strip; a link's hover is a paler white. */
              "md:[--bar-control:var(--surface)] md:[--bar-hover:rgb(255_255_255/0.6)]",
        )}
      >
        <div className="flex min-w-0 items-center">
          <Link
            href={brandHref}
            aria-label="Voydex home"
            className="inline-flex h-11 min-w-11 shrink-0 items-center rounded-sm"
          >
            {/* The word drops on narrow phones; the tile alone is the brand. */}
            <Logo
              showText={showName}
              markClassName={cn(
                "size-9 bg-(--bar-brand)",
                onAction && "text-action",
              )}
              textClassName={cn("max-sm:hidden", onAction && "text-white")}
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
