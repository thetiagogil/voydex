"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";

import { cn } from "@/lib/utils";

export const navItems = [
  { href: "/dashboard", label: "Dashboard" },
  { href: "/plays", label: "Plays" },
  { href: "/plans", label: "Plans" },
  { href: "/pokedex", label: "Pokedex" },
  { href: "/collection", label: "Collection" },
  { href: "/stats", label: "Stats" },
  { href: "/generations", label: "Generations" },
  { href: "/games", label: "Games" },
];

export function MainNav() {
  const pathname = usePathname();

  return (
    <nav className="flex items-center gap-1">
      {navItems.map((item) => {
        const isActive =
          pathname === item.href || pathname.startsWith(`${item.href}/`);

        return (
          <Link
            key={item.href}
            href={item.href}
            className={cn(
              "text-muted-foreground hover:bg-muted hover:text-foreground rounded-lg px-2.5 py-2 text-sm font-medium transition-colors",
              isActive
                ? "bg-primary/10 text-primary hover:bg-primary/10 hover:text-primary"
                : null,
            )}
          >
            {item.label}
          </Link>
        );
      })}
    </nav>
  );
}
