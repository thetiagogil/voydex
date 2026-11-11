import type { Page } from "@playwright/test";

/*
 * Story's detail for a milestone or place: the panel beside the route from
 * 1024px, the bottom sheet below it.
 */
export const storyDetail = (page: Page, name: string) =>
  page
    .getByRole("dialog", { name })
    .or(page.getByRole("region", { exact: true, name }));

/* Opens every folded chapter on the Story route, so any stop can be reached. */
export const openAllChapters = async (page: Page) => {
  const folded = page.getByRole("button", {
    expanded: false,
    name: /^Expand /,
  });

  while ((await folded.count()) > 0) {
    await folded.first().click();
  }
};
