import Image from "next/image";

import { cn } from "@/lib/utils";

type AppBackgroundProps = {
  variant?: "app" | "hero";
};

export function AppBackground({ variant = "app" }: AppBackgroundProps) {
  const isHero = variant === "hero";

  return (
    <div aria-hidden className="pointer-events-none fixed inset-0 z-0">
      <Image
        src="/backgrounds/bg-1.png"
        alt=""
        fill
        priority={isHero}
        sizes="100vw"
        className={cn(
          "object-cover contrast-105",
          isHero
            ? "object-[34%_center] opacity-100 brightness-[0.9] saturate-110 sm:object-center"
            : "opacity-8 saturate-[0.82] dark:opacity-10",
        )}
      />
      <div
        className={cn(
          "absolute inset-0",
          isHero
            ? "bg-[linear-gradient(90deg,rgba(8,18,29,0.44)_0%,rgba(8,18,29,0.16)_42%,rgba(8,18,29,0.02)_76%)]"
            : "bg-[linear-gradient(90deg,var(--background)_0%,color-mix(in_oklch,var(--background),transparent_10%)_18%,color-mix(in_oklch,var(--background),transparent_8%)_82%,var(--background)_100%)]",
        )}
      />
      {isHero ? (
        <div className="absolute inset-0 bg-[linear-gradient(180deg,rgba(8,18,29,0.04)_0%,rgba(8,18,29,0.08)_48%,rgba(8,18,29,0.42)_100%)]" />
      ) : null}
    </div>
  );
}
