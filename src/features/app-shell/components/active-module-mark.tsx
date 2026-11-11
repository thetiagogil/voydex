"use client";

import { usePathname } from "next/navigation";
import { useEffect } from "react";

import { rememberActiveModule } from "@/config/active-module";

/* Remembers the module each page belongs to, so `/app` and Log in land there. */
export const ActiveModuleMark = () => {
  const pathname = usePathname();

  useEffect(() => {
    rememberActiveModule(pathname);
  }, [pathname]);

  return null;
};
