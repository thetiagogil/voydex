import type { Page } from "@playwright/test";

/*
 * Story's detail for a milestone or place: the panel beside the route from
 * 1024px, the bottom sheet below it.
 */
export const storyDetail = (page: Page, name: string) =>
  page
    .getByRole("dialog", { name })
    .or(page.getByRole("region", { exact: true, name }));
