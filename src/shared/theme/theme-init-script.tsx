const themeInitScript = `
(() => {
  try {
    var storageKey = "voydex-theme";
    var storedTheme = window.localStorage.getItem(storageKey);
    var theme =
      storedTheme === "light" || storedTheme === "dark" || storedTheme === "system"
        ? storedTheme
        : "system";
    var resolvedTheme =
      theme === "system"
        ? window.matchMedia("(prefers-color-scheme: dark)").matches
          ? "dark"
          : "light"
        : theme;

    document.documentElement.classList.toggle("dark", resolvedTheme === "dark");
    document.documentElement.style.colorScheme = resolvedTheme;
  } catch {}
})();
`;
export const ThemeInitScript = () => {
  return <script dangerouslySetInnerHTML={{ __html: themeInitScript }} />;
};
