import { Logo } from "@/shared/components/brand/logo";
import Link from "next/link";

type AppNavbarProps = {
  /* Where the V tile leads: Mainline Home signed in, the front door signed out. */
  brandHref: string;
  center?: React.ReactNode;
  end?: React.ReactNode;
  showName?: boolean;
};

/*
 * v3's bar: the V tile on the left, the sections centred, your utilities on
 * the right. From 768px the whole bar is one white pill that rests faded into
 * the band, so it never pulls focus from the page, and comes forward under
 * the pointer or keyboard focus. Phones keep the bare tile (their sections
 * live in the bottom bar). Its colours are the `--bar-*` tokens; on the
 * white pill its controls take the inset fill and the row hover.
 */
export const AppNavbar = ({
  brandHref,
  center,
  end,
  showName = false,
}: AppNavbarProps) => (
  <header className="text-ink relative z-40 w-full shrink-0">
    <div className="page-column flex h-(--bar-h) items-center">
      <div className="md:bg-surface md:shadow-card grid w-full grid-cols-[minmax(0,1fr)_auto_minmax(0,1fr)] items-center gap-3 transition-opacity duration-200 ease-out md:h-13 md:rounded-full md:px-2 md:opacity-(--bar-rest) md:[--bar-control:var(--surface-2)] md:[--bar-hover:var(--hover)] md:focus-within:opacity-100 md:hover:opacity-100">
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
