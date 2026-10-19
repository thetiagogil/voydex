import type { Locator, Page } from "@playwright/test";

/* Opens a band's folded search and filter bar, if it is still folded. */
export const openSearchBar = async (page: Page) => {
  const opener = page.getByRole("button", { name: "Show search and filters" });
  const closer = page.getByRole("button", { name: "Hide search and filters" });

  /* Wait for the head's button either way, so a slow page isn't read as open. */
  await opener.or(closer).first().waitFor();

  if (await opener.isVisible()) {
    await opener.click();
    await closer.waitFor();
  }
};

/*
 * Opens a list's filters: on the bar's line from 640px, or the sheet on
 * phones. Returns where the filters are, and how to close them again (the
 * sheet's result button; the line stays as it is).
 */
export const openFilters = async (
  page: Page,
): Promise<{ close: () => Promise<void>; filters: Locator | Page }> => {
  await openSearchBar(page);

  const sheetButton = page
    .getByRole("button", { name: /^Filters/ })
    .filter({ visible: true });

  if (!(await sheetButton.count())) {
    return { close: async () => {}, filters: page };
  }

  await sheetButton.first().click();

  const sheet = page.getByRole("dialog", { name: "Filters" });

  return {
    close: async () => {
      await sheet.getByRole("button", { name: /^Show / }).click();
      await sheet.waitFor({ state: "hidden" });
    },
    filters: sheet,
  };
};
