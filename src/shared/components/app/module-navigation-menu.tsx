"use client";

import { CheckIcon, ChevronDownIcon } from "lucide-react";
import Link from "next/link";
import { usePathname } from "next/navigation";

import {
  getActiveModuleKey,
  moduleKeys,
  modules,
  type ModuleKey,
} from "@/config/modules";
import { cn } from "@/lib/utils";
import { setActiveModuleCookie } from "@/shared/components/app/module-cookie";
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
import { Button } from "@/shared/components/ui/button";

type ModuleNavigationMenuProps = {
  activeModuleKey: ModuleKey;
};

export function ModuleNavigationMenu({
  activeModuleKey,
}: ModuleNavigationMenuProps) {
  const pathname = usePathname();
  const currentModuleKey = getActiveModuleKey({
    cookieValue: activeModuleKey,
    pathname,
  });
  const currentModule = modules[currentModuleKey];

  function isActiveHref(href: string) {
    return pathname === href || pathname.startsWith(`${href}/`);
  }

  return (
    <DropdownMenu>
      <DropdownMenuTrigger
        render={
          <Button
            variant="ghost"
            className="text-primary hover:bg-primary/10 hover:text-primary aria-expanded:bg-primary/10 aria-expanded:text-primary h-9 rounded-lg px-2 text-sm font-semibold"
          />
        }
      >
        <span>{currentModule.label}</span>
        <ChevronDownIcon className="opacity-75" aria-hidden />
      </DropdownMenuTrigger>
      <DropdownMenuContent align="start" sideOffset={8} className="w-72 p-1.5">
        <DropdownMenuGroup>
          {moduleKeys.map((moduleKey) => {
            const moduleConfig = modules[moduleKey];
            const isActiveModule = moduleKey === currentModuleKey;

            if (moduleConfig.views.length) {
              return (
                <DropdownMenuSub key={moduleKey}>
                  <DropdownMenuSubTrigger
                    className={cn(
                      "items-start py-2.5",
                      isActiveModule && "bg-primary/10 text-primary",
                    )}
                  >
                    <span className="flex min-w-0 flex-1 flex-col gap-0.5 pr-2">
                      <span className="text-sm font-semibold">
                        {moduleConfig.label}
                      </span>
                      <span
                        className={cn(
                          "line-clamp-2 text-xs leading-5",
                          isActiveModule
                            ? "text-primary/75"
                            : "text-muted-foreground",
                        )}
                      >
                        {moduleConfig.description}
                      </span>
                    </span>
                  </DropdownMenuSubTrigger>
                  <DropdownMenuSubContent className="w-48">
                    <DropdownMenuGroup>
                      {moduleConfig.views.map((view) => {
                        const isActiveView = isActiveHref(view.href);

                        return (
                          <DropdownMenuItem
                            key={view.href}
                            className={cn(
                              isActiveView && "bg-primary/10 text-primary",
                            )}
                            render={
                              <Link
                                href={view.href}
                                onClick={() => setActiveModuleCookie(moduleKey)}
                                aria-current={isActiveView ? "page" : undefined}
                              />
                            }
                          >
                            <span className="min-w-0 flex-1 truncate">
                              {view.label}
                            </span>
                            {isActiveView ? <CheckIcon /> : null}
                          </DropdownMenuItem>
                        );
                      })}
                    </DropdownMenuGroup>
                  </DropdownMenuSubContent>
                </DropdownMenuSub>
              );
            }

            return (
              <DropdownMenuItem
                key={moduleKey}
                className={cn(
                  "items-start py-2.5",
                  isActiveModule && "bg-primary/10 text-primary",
                )}
                render={
                  <Link
                    href={moduleConfig.defaultHref}
                    onClick={() => setActiveModuleCookie(moduleKey)}
                    aria-current={isActiveModule ? "page" : undefined}
                  />
                }
              >
                <span className="flex min-w-0 flex-1 flex-col gap-0.5">
                  <span className="text-sm font-semibold">
                    {moduleConfig.label}
                  </span>
                  <span
                    className={cn(
                      "line-clamp-2 text-xs leading-5",
                      isActiveModule
                        ? "text-primary/75"
                        : "text-muted-foreground",
                    )}
                  >
                    {moduleConfig.description}
                  </span>
                </span>
                {isActiveModule ? <CheckIcon className="mt-0.5" /> : null}
              </DropdownMenuItem>
            );
          })}
        </DropdownMenuGroup>
      </DropdownMenuContent>
    </DropdownMenu>
  );
}
