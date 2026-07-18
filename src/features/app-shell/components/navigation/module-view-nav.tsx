"use client";

import { getActiveModuleKey, modules, type ModuleKey } from "@/config/modules";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { buttonVariants } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";
import Link from "next/link";
import { usePathname } from "next/navigation";

type ModuleViewNavProps = {
  activeModuleKey: ModuleKey;
};

const getViewIcon = (moduleKey: ModuleKey, viewSlug: string) => {
  if (moduleKey === "mainline") {
    return appIcons.views.mainline.plays;
  }

  return viewSlug === "games"
    ? appIcons.views.codex.games
    : appIcons.views.codex.pokemon;
};

export const ModuleViewNav = ({ activeModuleKey }: ModuleViewNavProps) => {
  const pathname = usePathname();
  const currentModuleKey = getActiveModuleKey({
    cookieValue: activeModuleKey,
    pathname,
  });
  const currentModule = modules[currentModuleKey];
  return (
    <nav
      aria-label={`${currentModule.label} navigation`}
      className="flex h-9 items-stretch justify-center gap-1"
    >
      {currentModule.views.map((item) => {
        const isActive =
          pathname === item.href || pathname.startsWith(`${item.href}/`);
        const ViewIcon = getViewIcon(currentModuleKey, item.slug);
        return (
          <Link
            key={item.href}
            href={item.href}
            aria-current={isActive ? "page" : undefined}
            className={cn(
              buttonVariants({
                size: "default",
                variant: isActive ? "default" : "outline",
              }),
              "min-w-32",
              currentModule.views.length === 1 ? "min-w-36" : null,
            )}
          >
            <AppIcon icon={ViewIcon} inline="start" aria-hidden />
            {item.label}
          </Link>
        );
      })}
    </nav>
  );
};
