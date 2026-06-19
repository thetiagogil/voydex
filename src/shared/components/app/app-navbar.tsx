import Link from "next/link";

import { cn } from "@/lib/utils";
import { Logo } from "@/shared/components/app/logo";

type AppNavbarProps = {
  afterLogo?: React.ReactNode;
  center?: React.ReactNode;
  className?: string;
  contentClassName?: string;
  end?: React.ReactNode;
};

export function AppNavbar({
  afterLogo,
  center,
  className,
  contentClassName,
  end,
}: AppNavbarProps) {
  return (
    <header
      className={cn("bg-background sticky top-0 z-40 border-b", className)}
    >
      <div
        className={cn(
          "mx-auto flex h-16 w-full max-w-7xl items-center justify-between gap-4 px-4 sm:px-6 lg:px-8",
          contentClassName,
        )}
      >
        <div className="flex min-w-0 items-center gap-3">
          <Link href="/" aria-label="Voydex home" className="flex items-center">
            <Logo showText={false} />
          </Link>
          {afterLogo}
        </div>
        {center ? (
          <div className="flex min-w-0 flex-1 justify-center">{center}</div>
        ) : null}
        {end ? <div className="flex items-center gap-1">{end}</div> : null}
      </div>
    </header>
  );
}
