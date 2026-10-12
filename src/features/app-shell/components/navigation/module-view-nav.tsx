"use client";

import { getActiveModuleKey, modules, type ModuleKey } from "@/config/modules";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
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
      className="flex h-10 items-center justify-center gap-1"
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
              "text-14 text-ink-2 hover:bg-surface-2 hover:text-ink inline-flex h-10 items-center gap-2 rounded-full px-4 font-bold transition-colors [&_svg]:size-4",
              isActive && "bg-surface text-ink hover:bg-surface font-extrabold",
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
