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
      <DropdownMenuTrigger asChild>
        <Button
          variant="ghost"
          className={cn("px-2.5 py-2 text-sm font-medium")}
        >
          <span>{currentModule.label}</span>
          <ChevronDownIcon aria-hidden />
        </Button>
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
                      isActiveModule && "bg-accent text-accent-foreground",
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
                            ? "opacity-80"
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
                              isActiveView &&
                                "bg-accent text-accent-foreground",
                            )}
                            asChild
                          >
                            <Link
                              href={view.href}
                              onClick={() => setActiveModuleCookie(moduleKey)}
                              aria-current={isActiveView ? "page" : undefined}
                            >
                              <span className="min-w-0 flex-1 truncate">
                                {view.label}
                              </span>
                              {isActiveView ? <CheckIcon aria-hidden /> : null}
                            </Link>
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
                  isActiveModule && "bg-accent text-accent-foreground",
                )}
                asChild
              >
                <Link
                  href={moduleConfig.defaultHref}
                  onClick={() => setActiveModuleCookie(moduleKey)}
                  aria-current={isActiveModule ? "page" : undefined}
                >
                  <span className="flex min-w-0 flex-1 flex-col gap-0.5">
                    <span className="text-sm font-semibold">
                      {moduleConfig.label}
                    </span>
                    <span
                      className={cn(
                        "line-clamp-2 text-xs leading-5",
                        isActiveModule ? "opacity-80" : "text-muted-foreground",
                      )}
                    >
                      {moduleConfig.description}
                    </span>
                  </span>
                  {isActiveModule ? (
                    <CheckIcon className="mt-0.5" aria-hidden />
                  ) : null}
                </Link>
              </DropdownMenuItem>
            );
          })}
        </DropdownMenuGroup>
      </DropdownMenuContent>
    </DropdownMenu>
  );
}
