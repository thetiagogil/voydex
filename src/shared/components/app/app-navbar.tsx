import Link from "next/link";
import { cn } from "@/lib/utils";
import { Logo } from "@/shared/components/app/logo";
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
          "mx-auto flex h-16 w-full max-w-7xl items-center justify-between gap-4 px-4 sm:px-6 lg:px-8",
          contentClassName,
        )}
      >
        <div className="flex h-9 min-w-0 items-stretch gap-2">
          <Link
            href="/"
            aria-label="Voydex home"
            className="inline-flex h-9 shrink-0 items-center rounded-lg"
          >
            <Logo showText={showLogoText} />
          </Link>
          {afterLogo}
        </div>
        {center ? (
          <div className="flex h-9 min-w-0 flex-1 items-stretch justify-center">
            {center}
          </div>
        ) : null}
        {end ? <div className="flex h-9 items-stretch gap-1">{end}</div> : null}
      </div>
    </header>
  );
};
