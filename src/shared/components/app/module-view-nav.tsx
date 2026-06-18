"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";

import { getActiveModuleKey, modules, type ModuleKey } from "@/config/modules";
import { cn } from "@/lib/utils";

type ModuleViewNavProps = {
  activeModuleKey: ModuleKey;
};

export function ModuleViewNav({ activeModuleKey }: ModuleViewNavProps) {
  const pathname = usePathname();
  const currentModuleKey = getActiveModuleKey({
    cookieValue: activeModuleKey,
    pathname,
  });
  const currentModule = modules[currentModuleKey];

  return (
    <nav
      aria-label={`${currentModule.label} navigation`}
      className="flex items-center gap-1"
    >
      {currentModule.views.map((item) => {
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
