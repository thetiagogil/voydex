import { Logo } from "@/shared/components/brand/logo";
import Link from "next/link";

type AppNavbarProps = {
  center?: React.ReactNode;
  end?: React.ReactNode;
  showName?: boolean;
};

/*
 * v3's bar: the V tile on the left, the sections centred, your utilities on
 * the right. Navigation, so no card and no edge.
 */
export const AppNavbar = ({
  center,
  end,
  showName = false,
}: AppNavbarProps) => (
  <header className="text-ink relative z-40 w-full shrink-0">
    <div className="mx-auto grid h-15 w-full max-w-320 grid-cols-[minmax(0,1fr)_auto_minmax(0,1fr)] items-center gap-3 px-4 sm:px-6 lg:h-17 lg:px-8">
      <div className="flex min-w-0 items-center">
        <Link
          href="/"
          aria-label="Voydex home"
          className="inline-flex h-11 shrink-0 items-center rounded-sm"
        >
          <Logo showText={showName} markClassName="text-17 size-8.5" />
        </Link>
      </div>
      <div className="flex min-w-0 items-center justify-center">{center}</div>
      <div className="flex min-w-0 items-center justify-end gap-1.5">{end}</div>
    </div>
  </header>
);
