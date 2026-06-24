"use client";

import {
  getActiveModuleKey,
  moduleKeys,
  modules,
  type ModuleKey,
} from "@/config/modules";
import { setActiveModuleCookie } from "@/lib/modules/active-module-cookie.client";
import {
  getModuleNavigationHref,
  moduleRequiresLogin,
} from "@/lib/modules/module-navigation";
import { cn } from "@/lib/utils";
import { Badge } from "@/shared/components/ui/badge";
import {
  NavigationMenu,
  NavigationMenuContent,
  NavigationMenuItem,
  NavigationMenuLink,
  NavigationMenuList,
  NavigationMenuTrigger,
} from "@/shared/components/ui/navigation-menu";
import Link from "next/link";
import { usePathname } from "next/navigation";
import { AppIcon, appIcons, getModuleIcon } from "@/shared/components/app-icon";

type DesktopModuleNavigationMenuProps = {
  activeModuleKey: ModuleKey;
  isAuthenticated: boolean;
};

const getModuleHref = (moduleKey: ModuleKey) => {
  const moduleConfig = modules[moduleKey];
  return moduleConfig.views[0]?.href ?? moduleConfig.defaultHref;
};

export const DesktopModuleNavigationMenu = ({
  activeModuleKey,
  isAuthenticated,
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
                const isActiveModule = moduleKey === currentModuleKey;
                const isLocked = moduleRequiresLogin(
                  moduleKey,
                  isAuthenticated,
                );

                return (
                  <NavigationMenuLink
                    key={moduleKey}
                    render={
                      <Link
                        href={getModuleNavigationHref({
                          isAuthenticated,
                          moduleKey,
                          targetHref: getModuleHref(moduleKey),
                        })}
                      />
                    }
                    className={cn(
                      "min-h-16 items-center gap-3 p-3",
                      isActiveModule && "bg-accent text-accent-foreground",
                      isLocked && "opacity-65 hover:opacity-100",
                    )}
                    onClick={() => {
                      if (!isLocked) {
                        setActiveModuleCookie(moduleKey);
                      }
                    }}
                    aria-label={
                      isLocked
                        ? `${moduleConfig.label}, log in required`
                        : undefined
                    }
                    active={isActiveModule}
                    aria-current={isActiveModule ? "page" : undefined}
                  >
                    <span
                      className={cn(
                        "bg-muted text-muted-foreground mt-0.5 flex size-10 shrink-0 items-center justify-center rounded-lg border",
                        isActiveModule &&
                          "bg-primary/10 text-primary border-primary",
                        isLocked && "border-dashed",
                      )}
                    >
                      <AppIcon
                        icon={getModuleIcon(moduleKey)}
                        aria-hidden
                        className="size-5"
                      />
                    </span>
                    <span className="min-w-0 flex-1">
                      <span className="flex min-w-0 items-center gap-2">
                        <span className="truncate font-medium">
                          {moduleConfig.label}
                        </span>
                        {isLocked ? (
                          <Badge
                            variant="outline"
                            className="border-primary/30 bg-primary/10 text-primary h-5 px-1.5 text-[0.68rem]"
                          >
                            Log in
                          </Badge>
                        ) : null}
                      </span>
                      <span className="text-muted-foreground mt-0.5 block truncate text-xs">
                        {moduleConfig.description}
                      </span>
                    </span>
                    {isActiveModule ? (
                      <AppIcon
                        icon={appIcons.status.active}
                        aria-hidden
                        className="text-primary mt-1"
                      />
                    ) : isLocked ? (
                      <AppIcon
                        icon={appIcons.status.locked}
                        aria-hidden
                        className="text-muted-foreground mt-1 size-4"
                      />
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
