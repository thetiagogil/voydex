"use client";

import {
  DEFAULT_MODULE_KEY,
  getModuleKeyForPathname,
  isModuleKey,
  modules,
} from "@/config/modules";

/*
 * The module you were last in (the Codex or Mainline), kept on this device
 * so `/app` and logging in land there. A small setting, so it lives in
 * localStorage; a browser that refuses storage just lands on the default.
 */
const storageKey = "voydex-active-module";

/* Remembers the module a page belongs to; pages outside one change nothing. */
export const rememberActiveModule = (pathname: string) => {
  const moduleKey = getModuleKeyForPathname(pathname);

  if (!moduleKey) return;

  try {
    window.localStorage.setItem(storageKey, moduleKey);
  } catch {
    /* Storage refused (a private window): the default stands in. */
  }
};

/* Where `/app` and logging in land: the last module's first page. */
export const readActiveModuleHref = () => {
  let stored: string | null = null;

  try {
    stored = window.localStorage.getItem(storageKey);
  } catch {
    stored = null;
  }

  return modules[isModuleKey(stored) ? stored : DEFAULT_MODULE_KEY].defaultHref;
};
