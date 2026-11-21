import { BrandLink } from "@/features/app-shell/components/navigation/brand-link";

type AppNavbarProps = {
  center?: React.ReactNode;
  end?: React.ReactNode;
  /* The app's bar: the V tile leaves the app for the front page. */
  leavesApp?: boolean;
};

/*
 * The bar: the V tile on the left (to the front page, from anywhere), the
 * sections centred, your utilities on
 * the right, at the top of the page (it scrolls away with it). It sits on
 * the red strip (`page-band-strip`, the Center's roof), which steps down
 * round the logo: white words, a white V tile with a red V, and the page
 * you are on is a white tab. Phones keep the tile and the name (their
 * sections live in the bottom bar). Its colours are the `--bar-*` tokens, set here for the
 * red. The site wears the same bar.
 */
export const AppNavbar = ({
  center,
  end,
  leavesApp = false,
}: AppNavbarProps) => (
  <header className="text-ink relative isolate z-40 w-full shrink-0">
    {/*
     * The strip the bar sits on: it covers the top of the band's mark and
     * steps down round the logo. The bar draws it, so a page without a band
     * has the same bar.
     */}
    <span aria-hidden className="page-band-strip bg-band-deep -z-1" />
    <div className="page-column flex h-(--bar-h) items-center">
      <div className="grid w-full grid-cols-[minmax(0,1fr)_auto_minmax(0,1fr)] items-center gap-3 [--bar-brand:var(--surface)] [--bar-current-ink:var(--action-ink)] [--bar-hover:rgb(255_255_255/0.18)] [--bar-ink-2:#fff] [--bar-ink:#fff] [--focus:var(--surface)]">
        <div className="flex min-w-0 items-center">
          <BrandLink leavesApp={leavesApp} />
        </div>
        <div className="flex min-w-0 items-center justify-center">{center}</div>
        <div className="flex min-w-0 items-center justify-end gap-1.5">
          {end}
        </div>
      </div>
    </div>
  </header>
);
