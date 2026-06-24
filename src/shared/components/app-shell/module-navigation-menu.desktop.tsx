"use client";

import {
  getActiveModuleKey,
  moduleKeys,
  modules,
  type ModuleIconKey,
  type ModuleKey,
} from "@/config/modules";
import { setActiveModuleCookie } from "@/lib/modules/active-module-cookie.client";
import { cn } from "@/lib/utils";
import {
  NavigationMenu,
  NavigationMenuContent,
  NavigationMenuItem,
  NavigationMenuLink,
  NavigationMenuList,
  NavigationMenuTrigger,
} from "@/shared/components/ui/navigation-menu";
import { BookOpen, CheckIcon, Map, type LucideIcon } from "lucide-react";
import Link from "next/link";
import { usePathname } from "next/navigation";

type DesktopModuleNavigationMenuProps = {
  activeModuleKey: ModuleKey;
};

const moduleIcons: Record<ModuleIconKey, LucideIcon> = {
  "book-open": BookOpen,
  map: Map,
};

const getModuleHref = (moduleKey: ModuleKey) => {
  const moduleConfig = modules[moduleKey];
  return moduleConfig.views[0]?.href ?? moduleConfig.defaultHref;
};

export const DesktopModuleNavigationMenu = ({
  activeModuleKey,
}: DesktopModuleNavigationMenuProps) => {
  const pathname = usePathname();
  const currentModuleKey = getActiveModuleKey({
    cookieValue: activeModuleKey,
    pathname,
  });
  const currentModule = modules[currentModuleKey];

  return (
    <NavigationMenu align="start">
      <NavigationMenuList>
        <NavigationMenuItem>
          <NavigationMenuTrigger className="px-3 text-sm font-medium">
            {currentModule.label}
          </NavigationMenuTrigger>
          <NavigationMenuContent className="w-[min(calc(100vw-2rem),34rem)] p-2">
            <div className="grid gap-1">
              {moduleKeys.map((moduleKey) => {
                const moduleConfig = modules[moduleKey];
                const Icon = moduleIcons[moduleConfig.iconKey];
                const isActiveModule = moduleKey === currentModuleKey;

                return (
                  <NavigationMenuLink
                    key={moduleKey}
                    render={<Link href={getModuleHref(moduleKey)} />}
                    className={cn(
                      "min-h-16 items-center gap-3 p-3",
                      isActiveModule && "bg-accent text-accent-foreground",
                    )}
                    onClick={() => {
                      setActiveModuleCookie(moduleKey);
                    }}
                    active={isActiveModule}
                    aria-current={isActiveModule ? "page" : undefined}
                  >
                    <span
                      className={cn(
                        "bg-muted text-muted-foreground mt-0.5 flex size-10 shrink-0 items-center justify-center rounded-lg border",
                        isActiveModule &&
                          "bg-primary/10 text-primary border-primary",
                      )}
                    >
                      <Icon aria-hidden className="size-5" />
                    </span>
                    <span className="min-w-0 flex-1">
                      <span className="block truncate font-medium">
                        {moduleConfig.label}
                      </span>
                      <span className="text-muted-foreground mt-0.5 block truncate text-xs">
                        {moduleConfig.description}
                      </span>
                    </span>
                    {isActiveModule ? (
                      <CheckIcon aria-hidden className="text-primary mt-1" />
                    ) : null}
                  </NavigationMenuLink>
                );
              })}
            </div>
          </NavigationMenuContent>
        </NavigationMenuItem>
      </NavigationMenuList>
    </NavigationMenu>
  );
};
