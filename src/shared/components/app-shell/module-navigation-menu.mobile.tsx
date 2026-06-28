"use client";

import { usePathname } from "next/navigation";

import {
  getActiveModuleKey,
  moduleKeys,
  modules,
  type ModuleKey,
} from "@/config/modules";
import { MobileModuleNavigationItem } from "@/shared/components/app-shell/module-navigation-menu.mobile-item";
import { Accordion } from "@/shared/components/ui/accordion";
import { Button } from "@/shared/components/ui/button";
import {
  Sheet,
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
              return (
                <MobileModuleNavigationItem
                  key={moduleKey}
                  isAuthenticated={isAuthenticated}
                  moduleKey={moduleKey}
                  pathname={pathname}
                />
              );
            })}
          </Accordion>
        </nav>
      </SheetContent>
    </Sheet>
  );
};
