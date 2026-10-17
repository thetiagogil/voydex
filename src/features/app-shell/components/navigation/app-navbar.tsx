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
 * the right. Navigation, so no card and no edge, and no ground of its own:
 * on a page that opens on a band it sits on the band's colour (its own
 * colours are the `--bar-*` tokens).
 */
export const AppNavbar = ({
  brandHref,
  center,
  end,
  showName = false,
}: AppNavbarProps) => (
  <header className="text-ink relative z-40 w-full shrink-0">
    <div className="page-column grid h-(--bar-h) grid-cols-[minmax(0,1fr)_auto_minmax(0,1fr)] items-center gap-3">
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
      <div className="flex min-w-0 items-center justify-end gap-1.5">{end}</div>
    </div>
  </header>
);
