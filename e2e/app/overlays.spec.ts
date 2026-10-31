import { expect, test, type Locator, type Page } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { forTheAnswer } from "../support/actions";

/* Wide enough for the side sheet, and short enough that its body scrolls. */
const desktop = { height: 420, width: 1280 };
const tablet = { height: 900, width: 820 };
const phone = { height: 720, width: 390 };

const openNuzlockeSheet = async (page: Page) => {
  await page.goto("/mainline/library?tab=presets", {
    waitUntil: "networkidle",
  });
  await page
    .getByRole("region", { name: "Presets" })
    .getByRole("button", { name: "Nuzlocke, 4 rules" })
    .click();

  return page.getByRole("dialog", { name: "Nuzlocke" });
};

const openRuleDialog = async (page: Page) => {
  await page.goto("/mainline/library?tab=rules", { waitUntil: "networkidle" });
  const rule = page
    .getByRole("region", { name: "Rules" })
    .getByRole("button")
    .first();

  await rule.click();

  return page.getByRole("dialog").filter({ has: page.getByRole("heading") });
};

const box = async (locator: Locator) => {
  const found = await locator.boundingBox();

  expect(found, "the overlay is on screen").not.toBeNull();

  return found!;
};

test.describe("Sheets and dialogs", () => {
  test("a sheet is a side sheet from 1024px, with its title pinned", async ({
    page,
  }) => {
    await page.setViewportSize(desktop);
    const sheet = await openNuzlockeSheet(page);
    const title = sheet.getByRole("heading", { name: "Nuzlocke" });
    const body = sheet.locator('[data-slot="overlay-body"]');

    await expect(sheet.locator('[data-slot="overlay-grab"]')).toHaveCount(0);
    const frame = await box(sheet);

    /* Against the right edge, full height, at most 640px wide. */
    expect(frame.x + frame.width).toBeCloseTo(desktop.width, 0);
    expect(frame.width).toBeLessThanOrEqual(640);
    expect(frame.height).toBeCloseTo(desktop.height, 0);

    /* The body scrolls while the title stays where it is. */
    const before = await box(title);

    await expect
      .poll(() => body.evaluate((el) => el.scrollHeight > el.clientHeight))
      .toBe(true);
    await body.evaluate((el) => el.scrollTo(0, el.scrollHeight));
    expect(await box(title)).toEqual(before);
    await expect(sheet.locator('[data-slot="overlay-header"]')).toHaveCSS(
      "border-bottom-color",
      /^(?!rgba\(0, 0, 0, 0\))/,
    );

    await expectAccessible(page);
  });

  test("a sheet is a bottom sheet on a tablet and on a phone @phone", async ({
    page,
  }) => {
    for (const viewport of [tablet, phone]) {
      await page.setViewportSize(viewport);
      const sheet = await openNuzlockeSheet(page);

      await expect(sheet.locator('[data-slot="overlay-grab"]')).toBeVisible();
      const frame = await box(sheet);

      /* On the bottom edge, the full width, at most 88% tall. */
      expect(frame.y + frame.height).toBeCloseTo(viewport.height, 0);
      expect(frame.x).toBeCloseTo(0, 0);
      expect(frame.width).toBeCloseTo(viewport.width, 0);
      expect(frame.height).toBeLessThanOrEqual(viewport.height * 0.88 + 1);
      await expect(
        sheet.getByRole("heading", { name: "Nuzlocke" }),
      ).toBeVisible();

      /* The corner X is there, and so is the scrim above the sheet. */
      await expect(sheet.getByRole("button", { name: "Close" })).toBeVisible();
      await expectAccessible(page);
      await page.mouse.click(viewport.width / 2, 10);
      await expect(sheet).toBeHidden(forTheAnswer);

      const again = await openNuzlockeSheet(page);

      await page.keyboard.press("Escape");
      await expect(again).toBeHidden(forTheAnswer);
    }
  });

  test("a sheet closes from its corner button and on Escape", async ({
    page,
  }) => {
    await page.setViewportSize({ height: 800, width: 1280 });
    const sheet = await openNuzlockeSheet(page);
    const close = sheet.getByRole("button", { name: "Close" });

    /* In the top right corner, 16px in. */
    const frame = await box(sheet);
    const corner = await box(close);

    expect(frame.x + frame.width - (corner.x + corner.width)).toBeCloseTo(
      16,
      0,
    );
    expect(corner.y - frame.y).toBeCloseTo(16, 0);
    await close.click();
    await expect(sheet).toBeHidden(forTheAnswer);

    const reopened = await openNuzlockeSheet(page);

    await page.keyboard.press("Escape");
    await expect(reopened).toBeHidden(forTheAnswer);
  });

  test("a dialog is centred at every width, with the same header @phone", async ({
    page,
  }) => {
    for (const viewport of [{ height: 800, width: 1280 }, tablet, phone]) {
      await page.setViewportSize(viewport);
      const dialog = await openRuleDialog(page);
      const frame = await box(dialog);

      expect(frame.x * 2 + frame.width).toBeCloseTo(viewport.width, 0);
      expect(frame.y * 2 + frame.height).toBeCloseTo(viewport.height, 0);
      expect(frame.width).toBeLessThanOrEqual(448 + 1);
      await expect(
        dialog.locator('[data-slot="overlay-header"]'),
      ).toBeVisible();
      await expect(dialog.getByRole("button", { name: "Close" })).toBeVisible();
      await expectAccessible(page);
      await page.keyboard.press("Escape");
      await expect(dialog).toBeHidden(forTheAnswer);
    }
  });

  test("New Play scrolls inside a short window @phone", async ({ page }) => {
    for (const viewport of [{ height: 560, width: 1280 }, phone]) {
      await page.setViewportSize(viewport);
      await page.goto("/mainline?new=1", { waitUntil: "networkidle" });
      const dialog = page.getByRole("dialog", { name: "New Play" });
      const frame = await box(dialog);

      /* Never taller than the window, and the dialog itself scrolls. */
      expect(frame.height).toBeLessThanOrEqual(viewport.height);
      expect(
        await dialog.evaluate((el) => getComputedStyle(el).overflowY),
      ).toBe("auto");
      await page.keyboard.press("Escape");
      await expect(dialog).toBeHidden(forTheAnswer);
    }
  });
});
