"use client";

import * as React from "react";

import type { ModuleKey } from "@/config/modules";

type ActiveModuleThemeScopeProps = {
  activeModuleKey: ModuleKey;
};

export function ActiveModuleThemeScope({
  activeModuleKey,
}: ActiveModuleThemeScopeProps) {
  React.useLayoutEffect(() => {
    document.documentElement.dataset.activeModule = activeModuleKey;
  }, [activeModuleKey]);

  return (
    <span
      hidden
      aria-hidden="true"
      data-active-module-theme-scope={activeModuleKey}
    />
  );
}
