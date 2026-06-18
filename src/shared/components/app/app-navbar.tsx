import Link from "next/link";

import { Logo } from "@/shared/components/app/logo";
import { surfaceClassNames } from "@/shared/components/ui/surface";
import { cn } from "@/lib/utils";

type AppNavbarProps = {
  center?: React.ReactNode;
  className?: string;
  contentClassName?: string;
  end?: React.ReactNode;
};

export function AppNavbar({
  center,
  className,
  contentClassName,
  end,
}: AppNavbarProps) {
  return (
    <header
      className={cn(
        "z-40",
        "sticky top-0",
        "border-b",
        surfaceClassNames.glass,
        className,
      )}
    >
      <div
        className={cn(
          "mx-auto flex h-16 w-full max-w-7xl items-center justify-between gap-4 px-4 sm:px-6 lg:px-8",
          contentClassName,
        )}
      >
        <Link href="/" aria-label="Voydex home">
          <Logo />
        </Link>
        {center ? (
          <div className="flex min-w-0 flex-1 justify-center">{center}</div>
        ) : null}
        {end ? <div className="flex items-center gap-1">{end}</div> : null}
      </div>
    </header>
  );
}
