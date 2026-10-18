import type { Locator, Page } from "@playwright/test";

/*
 * Opens a list's filters: the row under the toolbar from 640px, or the sheet
 * on phones. Returns where the filters are, and how to close them again (the
 * sheet's result button; the row stays open).
 */
export const openFilters = async (
  page: Page,
): Promise<{ close: () => Promise<void>; filters: Locator | Page }> => {
  await page
    .getByRole("button", { name: /^Filters/ })
    .filter({ visible: true })
    .first()
    .click();

  const sheet = page.getByRole("dialog", { name: "Filters" });

  if (await sheet.isVisible()) {
    return {
      close: async () => {
        await sheet.getByRole("button", { name: /^Show / }).click();
        await sheet.waitFor({ state: "hidden" });
      },
      filters: sheet,
    };
  }

  return { close: async () => {}, filters: page };
};
