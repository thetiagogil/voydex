import { Logo } from "@/shared/components/brand/logo";
import { cn } from "@/shared/utils/cn";
import Link from "next/link";

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
}: AppNavbarProps) => (
  <header
    className={cn(
      "app-nav-surface app-nav-surface-initial border-line relative z-40 w-full shrink-0 border-b",
      className,
    )}
  >
    <div
      className={cn(
        "mx-auto grid h-14 w-[calc(100%-1rem)] max-w-344 grid-cols-[minmax(0,1fr)_auto] items-center gap-2 sm:w-[calc(100%-2rem)] sm:gap-3 lg:h-16 lg:w-[calc(100%-4rem)] lg:grid-cols-[minmax(0,1fr)_minmax(24rem,2fr)_minmax(0,1fr)] lg:gap-5",
        contentClassName,
      )}
    >
      <div className="flex h-9 min-w-0 items-stretch justify-start gap-1">
        <Link
          href="/"
          aria-label="Voydex home"
          className="inline-flex h-9 shrink-0 items-center rounded-lg outline-none focus-visible:ring-3 focus-visible:ring-(--app-nav-foreground)/35"
        >
          <Logo showText={showLogoText} markClassName="size-9" />
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
