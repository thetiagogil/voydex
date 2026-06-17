"use client";

import Image from "next/image";
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

  return (
    <div
      aria-hidden
      className="bg-secondary pointer-events-none fixed inset-0 z-0"
    >
      <Image
        src="/backgrounds/bg.png"
        alt=""
        fill
        priority
        unoptimized
        sizes="100vw"
        className="object-cover object-center"
      />
      <div
        className={cn(
          "absolute inset-0 transition-colors duration-300",
          tone === "hero" && "bg-secondary/5",
          tone === "intro" && "bg-background/55 dark:bg-background/75",
          tone === "app" && "bg-background/55 dark:bg-background/75",
        )}
      />
    </div>
  );
}
