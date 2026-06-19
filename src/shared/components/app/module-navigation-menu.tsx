"use client";

import type { ModuleKey } from "@/config/modules";
import { DesktopModuleNavigationMenu } from "@/shared/components/app/module-navigation-menu.desktop";
import { MobileModuleNavigationMenu } from "@/shared/components/app/module-navigation-menu.mobile";

type ModuleNavigationMenuProps = {
  activeModuleKey: ModuleKey;
};

export function ModuleNavigationMenu({
  activeModuleKey,
}: ModuleNavigationMenuProps) {
  return (
    <>
      <div className="lg:hidden">
        <MobileModuleNavigationMenu activeModuleKey={activeModuleKey} />
      </div>
      <div className="hidden lg:block">
        <DesktopModuleNavigationMenu activeModuleKey={activeModuleKey} />
      </div>
    </>
  );
}
