"use client";

import Link from "next/link";

import { type ModuleKey, modules } from "@/config/modules";
import { setActiveModuleCookie } from "@/features/app-shell/client/active-module-cookie";
import {
  getModuleNavigationHref,
  moduleRequiresLogin,
} from "@/features/app-shell/utils/module-navigation";
import { cn } from "@/shared/utils/cn";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  AccordionContent,
  AccordionItem,
  AccordionTrigger,
} from "@/shared/components/ui/accordion";
import { Badge } from "@/shared/components/ui/badge";
import { buttonVariants } from "@/shared/components/ui/button";
import { SheetClose } from "@/shared/components/ui/sheet";

type MobileModuleNavigationItemProps = {
  isAuthenticated: boolean;
  moduleKey: ModuleKey;
  pathname: string;
};

const isActiveHref = (pathname: string, href: string) => {
  return pathname === href || pathname.startsWith(`${href}/`);
};

export const MobileModuleNavigationItem = ({
  isAuthenticated,
  moduleKey,
  pathname,
}: MobileModuleNavigationItemProps) => {
  const moduleConfig = modules[moduleKey];
  const isLocked = moduleRequiresLogin(moduleKey, isAuthenticated);

  return (
    <AccordionItem
      value={moduleKey}
      className={cn(
        "bg-card rounded-lg border px-0 last:border-b",
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
              <span className="min-w-0 flex-1 truncate">Log in to access</span>
            </SheetClose>
          ) : (
            moduleConfig.views.map((view) => {
              const isActiveView = isActiveHref(pathname, view.href);

              return (
                <SheetClose
                  key={view.href}
                  render={
                    <Link
                      href={view.href}
                      className={cn(
                        buttonVariants({
                          variant: isActiveView ? "secondary" : "ghost",
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
                  <span className="min-w-0 flex-1 truncate">{view.label}</span>
                  {isActiveView ? (
                    <AppIcon icon={appIcons.status.active} aria-hidden />
                  ) : null}
                </SheetClose>
              );
            })
          )}
        </div>
      </AccordionContent>
    </AccordionItem>
  );
};
