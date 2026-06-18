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
        src="/backgrounds/bg.webp"
        alt=""
        fill
        priority={tone === "hero"}
        sizes="100vw"
        className="object-cover object-center"
      />
      <div
        className={cn(
          "absolute inset-0 transition-colors duration-300",
          tone === "hero" && "bg-background-overlay-hero",
          (tone === "intro" || tone === "app") && "bg-background-overlay-page",
        )}
      />
    </div>
  );
}
