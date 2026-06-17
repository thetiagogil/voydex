import Image from "next/image";

import { cn } from "@/lib/utils";

type AppBackgroundProps = {
  variant?: "app" | "hero";
};

export function AppBackground({ variant = "app" }: AppBackgroundProps) {
  const isHero = variant === "hero";

  return (
    <div
      aria-hidden
      className={cn(
        "pointer-events-none fixed inset-0 z-0",
        isHero ? "bg-[#bdebf5]" : null,
      )}
    >
      <Image
        src="/backgrounds/bg.png"
        alt=""
        fill
        priority={isHero}
        unoptimized={isHero}
        sizes="100vw"
        className={cn(
          "object-cover",
          isHero
            ? "object-center opacity-100"
            : "opacity-8 contrast-105 saturate-[0.82] dark:opacity-10",
        )}
      />
      {isHero ? null : (
        <div className="absolute inset-0 bg-[linear-gradient(90deg,var(--background)_0%,color-mix(in_oklch,var(--background),transparent_10%)_18%,color-mix(in_oklch,var(--background),transparent_8%)_82%,var(--background)_100%)]" />
      )}
    </div>
  );
}
