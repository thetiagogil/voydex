"use client";

import type { ModuleKey } from "@/config/modules";
import { DesktopModuleNavigationMenu } from "@/features/app-shell/components/navigation/module-navigation-menu-desktop";
import { MobileModuleNavigationMenu } from "@/features/app-shell/components/navigation/module-navigation-menu-mobile";

type ModuleNavigationMenuProps = {
  activeModuleKey: ModuleKey;
  isAuthenticated: boolean;
};

export const ModuleNavigationMenu = ({
  activeModuleKey,
  isAuthenticated,
}: ModuleNavigationMenuProps) => {
  return (
    <>
      <div className="lg:hidden">
        <MobileModuleNavigationMenu
          activeModuleKey={activeModuleKey}
          isAuthenticated={isAuthenticated}
        />
      </div>
      <div className="hidden lg:block">
        <DesktopModuleNavigationMenu
          activeModuleKey={activeModuleKey}
          isAuthenticated={isAuthenticated}
        />
      </div>
    </>
  );
};
