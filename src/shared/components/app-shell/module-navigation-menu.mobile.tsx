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
import { setActiveModuleCookie } from "@/lib/modules/active-module-cookie.client";
import {
  Accordion,
  AccordionContent,
  AccordionItem,
  AccordionTrigger,
} from "@/shared/components/ui/accordion";
import { Button, buttonVariants } from "@/shared/components/ui/button";
import {
  Sheet,
  SheetClose,
  SheetContent,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from "@/shared/components/ui/sheet";

type MobileModuleNavigationMenuProps = {
  activeModuleKey: ModuleKey;
};

export const MobileModuleNavigationMenu = ({
  activeModuleKey,
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
        <ChevronDownIcon data-icon="inline-end" aria-hidden />
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
              return (
                <AccordionItem
                  key={moduleKey}
                  value={moduleKey}
                  className="bg-card/80 rounded-lg border px-0 last:border-b"
                >
                  <AccordionTrigger className="px-3 py-3 text-sm font-medium">
                    {moduleConfig.label}
                  </AccordionTrigger>
                  <AccordionContent className="px-2 pb-2 [&_a]:no-underline [&_a]:hover:no-underline">
                    <div className="flex flex-col gap-1">
                      {moduleConfig.views.map((view) => {
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
                            {isActiveView ? <CheckIcon aria-hidden /> : null}
                          </SheetClose>
                        );
                      })}
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
