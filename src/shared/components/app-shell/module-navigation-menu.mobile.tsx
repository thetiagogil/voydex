"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import {
  getActiveModuleKey,
  moduleKeys,
  modules,
  type ModuleKey,
} from "@/config/modules";
import { cn } from "@/lib/utils";
import { setActiveModuleCookie } from "@/lib/modules/active-module-cookie.client";
import {
  getModuleNavigationHref,
  moduleRequiresLogin,
} from "@/lib/modules/module-navigation";
import {
  Accordion,
  AccordionContent,
  AccordionItem,
  AccordionTrigger,
} from "@/shared/components/ui/accordion";
import { Badge } from "@/shared/components/ui/badge";
import { Button, buttonVariants } from "@/shared/components/ui/button";
import {
  Sheet,
  SheetClose,
  SheetContent,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from "@/shared/components/ui/sheet";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

type MobileModuleNavigationMenuProps = {
  activeModuleKey: ModuleKey;
  isAuthenticated: boolean;
};

export const MobileModuleNavigationMenu = ({
  activeModuleKey,
  isAuthenticated,
}: MobileModuleNavigationMenuProps) => {
  const pathname = usePathname();
  const currentModuleKey = getActiveModuleKey({
    cookieValue: activeModuleKey,
    pathname,
  });
  const currentModule = modules[currentModuleKey];
  const isActiveHref = (href: string) => {
    return pathname === href || pathname.startsWith(`${href}/`);
  };
  return (
    <Sheet>
      <SheetTrigger
        render={
          <Button
            variant="ghost"
            size="lg"
            className="max-w-[calc(100vw-9rem)] px-3 text-sm font-medium"
          />
        }
      >
        <span className="truncate">{currentModule.label}</span>
        <AppIcon icon={appIcons.actions.expand} inline="end" aria-hidden />
      </SheetTrigger>
      <SheetContent
        side="top"
        className="h-dvh min-h-dvh gap-0 overflow-hidden border-0 p-0 data-[side=top]:bottom-0 data-[side=top]:h-dvh"
        showCloseButton
      >
        <SheetHeader className="border-b p-4 pr-14">
          <SheetTitle>Navigation</SheetTitle>
        </SheetHeader>
        <nav className="flex-1 overflow-y-auto p-4" aria-label="App modules">
          <Accordion
            defaultValue={[currentModuleKey]}
            className="flex flex-col gap-2"
          >
            {moduleKeys.map((moduleKey) => {
              const moduleConfig = modules[moduleKey];
              const isLocked = moduleRequiresLogin(moduleKey, isAuthenticated);

              return (
                <AccordionItem
                  key={moduleKey}
                  value={moduleKey}
                  className={cn(
                    "bg-card/80 rounded-lg border px-0 last:border-b",
                    isLocked && "opacity-70",
                  )}
                >
                  <AccordionTrigger className="px-3 py-3 text-sm font-medium">
                    <span className="flex min-w-0 items-center gap-2">
                      <span className="truncate">{moduleConfig.label}</span>
                      {isLocked ? (
                        <Badge
                          variant="outline"
                          className="border-primary/30 bg-primary/10 text-primary h-5 px-1.5 text-[0.68rem]"
                        >
                          Log in
                        </Badge>
                      ) : null}
                    </span>
                    {isLocked ? (
                      <AppIcon
                        icon={appIcons.status.locked}
                        aria-hidden
                        className="text-muted-foreground mr-2 size-3.5 shrink-0"
                      />
                    ) : null}
                  </AccordionTrigger>
                  <AccordionContent className="px-2 pb-2 [&_a]:no-underline [&_a]:hover:no-underline">
                    <div className="flex flex-col gap-1">
                      {isLocked ? (
                        <SheetClose
                          render={
                            <Link
                              href={getModuleNavigationHref({
                                isAuthenticated,
                                moduleKey,
                              })}
                              className={cn(
                                buttonVariants({
                                  variant: "outline",
                                  size: "lg",
                                }),
                                "justify-start",
                              )}
                            />
                          }
                          nativeButton={false}
                        >
                          <AppIcon
                            icon={appIcons.status.locked}
                            inline="start"
                            aria-hidden
                          />
                          <span className="min-w-0 flex-1 truncate">
                            Log in to access
                          </span>
                        </SheetClose>
                      ) : (
                        moduleConfig.views.map((view) => {
                          const isActiveView = isActiveHref(view.href);
                          return (
                            <SheetClose
                              key={view.href}
                              render={
                                <Link
                                  href={view.href}
                                  className={cn(
                                    buttonVariants({
                                      variant: isActiveView
                                        ? "secondary"
                                        : "ghost",
                                      size: "lg",
                                    }),
                                    "justify-start",
                                    isActiveView && "text-primary",
                                  )}
                                />
                              }
                              nativeButton={false}
                              onClick={() => setActiveModuleCookie(moduleKey)}
                              aria-current={isActiveView ? "page" : undefined}
                            >
                              <span className="min-w-0 flex-1 truncate">
                                {view.label}
                              </span>
                              {isActiveView ? (
                                <AppIcon
                                  icon={appIcons.status.active}
                                  aria-hidden
                                />
                              ) : null}
                            </SheetClose>
                          );
                        })
                      )}
                    </div>
                  </AccordionContent>
                </AccordionItem>
              );
            })}
          </Accordion>
        </nav>
      </SheetContent>
    </Sheet>
  );
};
