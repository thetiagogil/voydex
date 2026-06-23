"use client";
import * as React from "react";
export const THEME_STORAGE_KEY = "voydex-theme";
const THEME_CHANGE_EVENT = "voydex-theme-change";
export const themePreferences = ["light", "dark", "system"] as const;
export type ThemePreference = (typeof themePreferences)[number];
export type ResolvedTheme = "light" | "dark";
type ThemeContextValue = {
  resolvedTheme: ResolvedTheme;
  setTheme: (theme: ThemePreference) => void;
  theme: ThemePreference;
};
const ThemeContext = React.createContext<ThemeContextValue | null>(null);
const isThemePreference = (value: unknown): value is ThemePreference => {
  return (
    typeof value === "string" &&
    themePreferences.includes(value as ThemePreference)
  );
};
const getSystemTheme = (): ResolvedTheme => {
  return window.matchMedia("(prefers-color-scheme: dark)").matches
    ? "dark"
    : "light";
};
const getResolvedTheme = (theme: ThemePreference): ResolvedTheme => {
  return theme === "system" ? getSystemTheme() : theme;
};
const applyTheme = (theme: ThemePreference) => {
  const resolvedTheme = getResolvedTheme(theme);
  const root = document.documentElement;
  root.classList.toggle("dark", resolvedTheme === "dark");
  root.style.colorScheme = resolvedTheme;
  return resolvedTheme;
};
const getStoredTheme = (): ThemePreference => {
  const storedTheme = window.localStorage.getItem(THEME_STORAGE_KEY);
  return isThemePreference(storedTheme) ? storedTheme : "system";
};
const getThemeSnapshot = (): ThemePreference => {
  return getStoredTheme();
};
const getResolvedThemeSnapshot = (): ResolvedTheme => {
  return getResolvedTheme(getThemeSnapshot());
};
const getServerThemeSnapshot = (): ThemePreference => {
  return "system";
};
const getServerResolvedThemeSnapshot = (): ResolvedTheme => {
  return "light";
};
const emitThemeChange = () => {
  window.dispatchEvent(new Event(THEME_CHANGE_EVENT));
};
const subscribeToTheme = (onStoreChange: () => void) => {
  const handleChange = () => {
    applyTheme(getThemeSnapshot());
    onStoreChange();
  };
  const handleStorage = (event: StorageEvent) => {
    if (event.key !== THEME_STORAGE_KEY && event.key !== null) {
      return;
    }
    handleChange();
  };
  const mediaQuery = window.matchMedia("(prefers-color-scheme: dark)");
  window.addEventListener(THEME_CHANGE_EVENT, handleChange);
  window.addEventListener("storage", handleStorage);
  mediaQuery.addEventListener("change", handleChange);
  return () => {
    window.removeEventListener(THEME_CHANGE_EVENT, handleChange);
    window.removeEventListener("storage", handleStorage);
    mediaQuery.removeEventListener("change", handleChange);
  };
};
export const ThemeProvider = ({ children }: { children: React.ReactNode }) => {
  const theme = React.useSyncExternalStore(
    subscribeToTheme,
    getThemeSnapshot,
    getServerThemeSnapshot,
  );
  const resolvedTheme = React.useSyncExternalStore(
    subscribeToTheme,
    getResolvedThemeSnapshot,
    getServerResolvedThemeSnapshot,
  );
  const setTheme = React.useCallback((nextTheme: ThemePreference) => {
    window.localStorage.setItem(THEME_STORAGE_KEY, nextTheme);
    applyTheme(nextTheme);
    emitThemeChange();
  }, []);
  const value = React.useMemo<ThemeContextValue>(
    () => ({
      resolvedTheme,
      setTheme,
      theme,
    }),
    [resolvedTheme, setTheme, theme],
  );
  return <ThemeContext value={value}>{children}</ThemeContext>;
};
export const useTheme = () => {
  const context = React.useContext(ThemeContext);
  if (!context) {
    throw new Error("useTheme must be used within ThemeProvider.");
  }
  return context;
};
