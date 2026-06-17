import Image from "next/image";

import { cn } from "@/lib/utils";

type AppBackgroundProps = {
  variant?: "app" | "home";
};

export function AppBackground({ variant = "app" }: AppBackgroundProps) {
  const isHome = variant === "home";

  return (
    <div
      aria-hidden
      className={cn(
        "pointer-events-none fixed inset-0 z-0",
        isHome ? "bg-secondary" : null,
      )}
    >
      <Image
        src="/backgrounds/bg.png"
        alt=""
        fill
        priority={isHome}
        unoptimized={isHome}
        sizes="100vw"
        className={cn(
          "object-cover",
          isHome
            ? "object-center opacity-100"
            : "opacity-20 contrast-105 saturate-75 dark:opacity-20",
        )}
      />
    </div>
  );
}
