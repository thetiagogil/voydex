"use client";

import { usePathname } from "next/navigation";

import { cn } from "@/lib/utils";

function getBackgroundTone(pathname: string) {
  if (pathname === "/" || pathname === "/login") return "hero";
  if (pathname === "/intro") return "intro";

  return "app";
}

export function AppBackground() {
  const pathname = usePathname();
  const tone = getBackgroundTone(pathname);
  const isHero = tone === "hero";

  return (
    <div
      aria-hidden
      className="bg-secondary pointer-events-none fixed inset-0 z-0"
    >
      <div className="absolute inset-0 bg-[url('/backgrounds/bg.webp')] bg-cover bg-bottom dark:hidden" />
      <div className="absolute inset-0 hidden bg-[url('/backgrounds/bg-dark.webp')] bg-cover bg-bottom dark:block" />
      <div
        className={cn(
          "absolute inset-0 transition-colors duration-300",
          isHero
            ? "bg-background-overlay-hero"
            : "bg-background-overlay-page backdrop-blur-[2px]",
        )}
      />
    </div>
  );
}
