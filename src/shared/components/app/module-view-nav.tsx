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
      className="flex h-9 items-stretch gap-1"
    >
      {currentModule.views.map((item) => {
        const isActive =
          pathname === item.href || pathname.startsWith(`${item.href}/`);

        return (
          <Link
            key={item.href}
            href={item.href}
            aria-current={isActive ? "page" : undefined}
            className={cn(
              "text-muted-foreground hover:bg-muted hover:text-foreground inline-flex h-9 items-center rounded-lg px-3 text-sm font-medium transition-colors",
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
