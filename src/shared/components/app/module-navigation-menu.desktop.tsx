"use client";

import { CheckIcon, ChevronDownIcon } from "lucide-react";
import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";
import {
  getActiveModuleKey,
  moduleKeys,
  modules,
  type ModuleKey,
} from "@/config/modules";
import { cn } from "@/lib/utils";
import { setActiveModuleCookie } from "@/lib/modules/active-module-cookie.client";
import { Button } from "@/shared/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuGroup,
  DropdownMenuItem,
  DropdownMenuSub,
  DropdownMenuSubContent,
  DropdownMenuSubTrigger,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";

type DesktopModuleNavigationMenuProps = {
  activeModuleKey: ModuleKey;
};

export const DesktopModuleNavigationMenu = ({
  activeModuleKey,
}: DesktopModuleNavigationMenuProps) => {
  const pathname = usePathname();
  const router = useRouter();
  const currentModuleKey = getActiveModuleKey({
    cookieValue: activeModuleKey,
    pathname,
  });
  const currentModule = modules[currentModuleKey];
  const isActiveHref = (href: string) => {
    return pathname === href || pathname.startsWith(`${href}/`);
  };
  const getModuleHref = (moduleKey: ModuleKey) => {
    const moduleConfig = modules[moduleKey];
    return moduleConfig.views[0]?.href ?? moduleConfig.defaultHref;
  };
  return (
    <DropdownMenu>
      <DropdownMenuTrigger
        render={
          <Button
            variant="ghost"
            size="lg"
            className="px-3 text-sm font-medium"
          />
        }
      >
        <span>{currentModule.label}</span>
        <ChevronDownIcon data-icon="inline-end" aria-hidden />
      </DropdownMenuTrigger>
      <DropdownMenuContent align="start" sideOffset={8} className="w-48 p-1.5">
        <DropdownMenuGroup className="flex flex-col gap-1">
          {moduleKeys.map((moduleKey) => {
            const moduleConfig = modules[moduleKey];
            const isActiveModule = moduleKey === currentModuleKey;
            const moduleHref = getModuleHref(moduleKey);
            return (
              <DropdownMenuSub key={moduleKey}>
                <DropdownMenuSubTrigger
                  className={cn(
                    "min-h-10 py-2",
                    isActiveModule && "bg-accent text-accent-foreground",
                  )}
                  onClick={() => {
                    setActiveModuleCookie(moduleKey);
                    router.push(moduleHref);
                  }}
                  aria-current={isActiveModule ? "page" : undefined}
                >
                  <span className="min-w-0 flex-1 truncate pr-2 font-medium">
                    {moduleConfig.label}
                  </span>
                  {isActiveModule ? <CheckIcon aria-hidden /> : null}
                </DropdownMenuSubTrigger>
                <DropdownMenuSubContent className="w-44">
                  <DropdownMenuGroup className="flex flex-col gap-1">
                    {moduleConfig.views.map((view) => {
                      const isActiveView = isActiveHref(view.href);
                      return (
                        <DropdownMenuItem
                          key={view.href}
                          className={cn(
                            "min-h-9 py-2",
                            isActiveView && "bg-accent text-accent-foreground",
                          )}
                          render={<Link href={view.href} />}
                          onClick={() => setActiveModuleCookie(moduleKey)}
                          aria-current={isActiveView ? "page" : undefined}
                        >
                          <span className="min-w-0 flex-1 truncate font-medium">
                            {view.label}
                          </span>
                          {isActiveView ? <CheckIcon aria-hidden /> : null}
                        </DropdownMenuItem>
                      );
                    })}
                  </DropdownMenuGroup>
                </DropdownMenuSubContent>
              </DropdownMenuSub>
            );
          })}
        </DropdownMenuGroup>
      </DropdownMenuContent>
    </DropdownMenu>
  );
};
