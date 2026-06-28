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
import { AppIcon, appIcons, getModuleIcon } from "@/shared/components/app-icon";
import { NavigationMenuOption } from "@/shared/components/navigation-menu-option";
import { Badge } from "@/shared/components/ui/badge";
import {
  NavigationMenu,
  NavigationMenuContent,
  NavigationMenuItem,
  NavigationMenuList,
  NavigationMenuTrigger,
} from "@/shared/components/ui/navigation-menu";
import Link from "next/link";
import { usePathname } from "next/navigation";

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
                  <NavigationMenuOption
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
                    active={isActiveModule}
                    onClick={() => {
                      if (!isLocked) {
                        setActiveModuleCookie(moduleKey);
                      }
                    }}
                    accessibilityLabel={
                      isLocked
                        ? `${moduleConfig.label}, log in required`
                        : undefined
                    }
                    leading={
                      <AppIcon
                        icon={getModuleIcon(moduleKey)}
                        size="lg"
                        aria-hidden
                      />
                    }
                    muted={isLocked}
                    title={moduleConfig.label}
                    titleAccessory={
                      isLocked ? (
                        <Badge
                          variant="outline"
                          className="border-primary/30 bg-primary/10 text-primary h-5 px-1.5 text-xs"
                        >
                          Log in
                        </Badge>
                      ) : null
                    }
                    description={moduleConfig.description}
                    trailing={
                      !isActiveModule && isLocked ? (
                        <AppIcon
                          icon={appIcons.status.locked}
                          aria-hidden
                          className="text-muted-foreground"
                        />
                      ) : undefined
                    }
                  />
                );
              })}
            </div>
          </NavigationMenuContent>
        </NavigationMenuItem>
      </NavigationMenuList>
    </NavigationMenu>
  );
};
