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
      "relative z-40 w-full shrink-0 text-ink",
      className,
    )}
  >
    <div
      className={cn(
        "mx-auto grid h-16 w-full max-w-320 grid-cols-[minmax(0,1fr)_auto] items-center gap-2 px-4 sm:gap-3 sm:px-6 lg:h-17 lg:grid-cols-[minmax(0,1fr)_minmax(24rem,2fr)_minmax(0,1fr)] lg:gap-5 lg:px-8",
        contentClassName,
      )}
    >
      <div className="flex h-10 min-w-0 items-center justify-start gap-2">
        <Link
          href="/"
          aria-label="Voydex home"
          className="inline-flex h-10 shrink-0 items-center rounded-sm"
        >
          <Logo showText={showLogoText} markClassName="size-9" />
        </Link>
        {afterLogo}
      </div>
      <div className="hidden h-10 min-w-0 items-center justify-center lg:flex">
        {center}
      </div>
      <div className="flex h-10 items-center justify-end gap-1">{end}</div>
    </div>
  </header>
);
