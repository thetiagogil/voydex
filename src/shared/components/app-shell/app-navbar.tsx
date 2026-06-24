import Link from "next/link";
import { cn } from "@/lib/utils";
import { Logo } from "@/shared/components/brand/logo";

type AppNavbarProps = {
  afterLogo?: React.ReactNode;
  center?: React.ReactNode;
  className?: string;
  contentClassName?: string;
  end?: React.ReactNode;
  showLogoText?: boolean;
};

export const AppNavbar = ({
  afterLogo,
  center,
  className,
  contentClassName,
  end,
  showLogoText = false,
}: AppNavbarProps) => {
  return (
    <header className={cn("app-nav-surface sticky top-0 z-40", className)}>
      <div
        className={cn(
          "mx-auto grid h-16 w-full max-w-7xl grid-cols-[minmax(0,1fr)_auto] items-center gap-3 px-4 sm:px-6 lg:grid-cols-[minmax(0,1fr)_minmax(24rem,2fr)_minmax(0,1fr)] lg:gap-4 lg:px-8",
          contentClassName,
        )}
      >
        <div className="flex h-9 min-w-0 items-stretch justify-start gap-2">
          <Link
            href="/"
            aria-label="Voydex home"
            className="inline-flex h-9 shrink-0 items-center rounded-lg"
          >
            <Logo showText={showLogoText} />
          </Link>
          {afterLogo}
        </div>
        <div className="hidden h-9 min-w-0 items-stretch justify-center lg:flex">
          {center}
        </div>
        <div className="flex h-9 items-stretch justify-end gap-1">{end}</div>
      </div>
    </header>
  );
};
