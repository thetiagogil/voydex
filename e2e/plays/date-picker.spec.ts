import { expect, test, type Page } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { forTheAnswer, waitForAction } from "../support/actions";
import { startPlay, uniquePlayName } from "../support/plays";

/* The Started on field is the app's one date field, on the shared picker. */
const openSettings = async (page: Page) => {
  const playId = await startPlay(page, {
    game: "Pokémon Blue, 1996",
    name: uniquePlayName("Date run"),
    partner: null,
  });

  await page.goto(`/mainline/plays/${playId}/settings`, {
    waitUntil: "networkidle",
  });

  return page.getByRole("region", { name: "General" });
};

/* The picker's popover wide, its bottom sheet on phones and tablets. */
const pickerOf = (page: Page) =>
  page.getByRole("dialog", { name: "Started on" });

const pickMonthAndYear = async (page: Page, month: string, year: string) => {
  const picker = pickerOf(page);

  await picker.getByRole("combobox", { name: "Choose the Year" }).click();
  await page.getByRole("option", { name: year, exact: true }).click();
  await picker.getByRole("combobox", { name: "Choose the Month" }).click();
  await page.getByRole("option", { name: month, exact: true }).click();
};

test.describe("Date picker", () => {
  test("picks the day Started on from the calendar and keeps it", async ({
    page,
  }) => {
    const general = await openSettings(page);

    /* It is the shared field, not the browser's own date input. */
    await expect(page.locator('input[type="date"]')).toHaveCount(0);
    await general.getByRole("button", { name: /^Started on:/ }).click();
    await pickMonthAndYear(page, "May", "2025");
    await expectAccessible(page);
    await pickerOf(page)
      .getByRole("button", { name: /May 7, 2025/ })
      .click();

    await expect(pickerOf(page)).toBeHidden();
    await expect(
      general.getByRole("button", { name: "Started on: May 7, 2025" }),
    ).toBeFocused();
    await expect(general.getByText("Unsaved changes")).toBeVisible();

    const saved = waitForAction(page);
    await general.getByRole("button", { name: "Save" }).click();
    await saved;
    await expect(general.getByText("Unsaved changes")).toBeHidden(forTheAnswer);

    await page.reload();
    await expect(
      page
        .getByRole("region", { name: "General" })
        .getByRole("button", { name: "Started on: May 7, 2025" }),
    ).toBeVisible();
  });

  test("works from the keyboard and gives focus back on Escape", async ({
    page,
  }) => {
    const general = await openSettings(page);
    const field = general.getByRole("button", { name: /^Started on:/ });

    await field.focus();
    await page.keyboard.press("Enter");
    await expect(pickerOf(page)).toBeVisible();

    /* Arrow keys walk the days; Enter picks the one focused. */
    const before = await field.getAttribute("aria-label");
    await page.keyboard.press("Escape");
    await expect(pickerOf(page)).toBeHidden();
    await expect(field).toBeFocused();
    await expect(field).toHaveAttribute("aria-label", before ?? "");

    await page.keyboard.press("Enter");
    await pickMonthAndYear(page, "Feb", "2024");
    await pickerOf(page)
      .getByRole("button", { name: /February 29, 2024/ })
      .focus();
    await page.keyboard.press("ArrowRight");
    await expect(
      pickerOf(page).getByRole("button", { name: /March 1, 2024/ }),
    ).toBeFocused();
    await page.keyboard.press("Enter");

    await expect(pickerOf(page)).toBeHidden();
    await expect(field).toHaveAccessibleName("Started on: Mar 1, 2024");
  });

  test("sets today and clears the day", async ({ page }) => {
    const general = await openSettings(page);
    const field = general.getByRole("button", { name: /^Started on:/ });

    await field.click();
    await pickerOf(page)
      .getByRole("button", { name: "Clear", exact: true })
      .click();
    await expect(field).toHaveAccessibleName("Started on: Not set");

    await field.click();
    await expect(
      pickerOf(page).getByRole("button", { name: "Clear", exact: true }),
    ).toBeDisabled();
    await pickerOf(page)
      .getByRole("button", { name: "Today", exact: true })
      .click();
    await expect(field).not.toHaveAccessibleName("Started on: Not set");

    await field.click();
    await pickerOf(page)
      .getByRole("button", { name: "Clear", exact: true })
      .click();
    const saved = waitForAction(page);
    await general.getByRole("button", { name: "Save" }).click();
    await saved;

    await page.reload();
    await expect(
      page
        .getByRole("region", { name: "General" })
        .getByRole("button", { name: "Started on: Not set" }),
    ).toBeVisible();
  });

  test("opens as a bottom sheet on a phone @phone", async ({
    isMobile,
    page,
  }) => {
    test.skip(!isMobile, "The phone project checks the sheet.");
    const general = await openSettings(page);

    await general.getByRole("button", { name: /^Started on:/ }).click();
    const sheet = pickerOf(page);

    await expect(sheet).toBeVisible();
    await pickMonthAndYear(page, "May", "2025");
    await expectAccessible(page);
    const box = await sheet.boundingBox();
    const viewport = page.viewportSize();

    expect(box && viewport && box.y + box.height).toBeCloseTo(
      viewport?.height ?? 0,
      0,
    );
    await sheet.getByRole("button", { name: /May 7, 2025/ }).click();
    await expect(sheet).toBeHidden();
    await expect(
      general.getByRole("button", { name: "Started on: May 7, 2025" }),
    ).toBeVisible();
  });
});
