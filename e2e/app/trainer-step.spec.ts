import { expect, test, type Page } from "../support/test";

import { expectAccessible } from "../support/accessibility";
import { waitForAction } from "../support/actions";
import { newTestEmail } from "../support/accounts";
import { createAccount, logIn } from "../support/auth";

/* These tests are about the step itself: nothing passes it for them. */
test.use({ trainerStep: "stop" });

const trainerStep = (page: Page) =>
  page.getByRole("form", { name: "Your trainer" });

const pickedIcons = (page: Page) =>
  trainerStep(page)
    .getByRole("group", { name: "Your icon" })
    .locator('button[aria-pressed="true"]');

/* Continue, and wait until the save is on the device. */
const finishStep = async (page: Page) => {
  const saved = waitForAction(page);

  await trainerStep(page).getByRole("button", { name: "Continue" }).click();
  await saved;
  await expect(trainerStep(page)).toBeHidden();
};

test.describe("Trainer step", () => {
  test("a new device picks a trainer before the app opens, with Ash and a starter ready @phone", async ({
    page,
  }) => {
    await page.goto("/app");

    const step = trainerStep(page);

    await expect(step).toBeVisible();
    await expect(
      page.getByRole("heading", { level: 1, name: "Your trainer" }),
    ).toBeVisible();
    /* The app waits behind it: no bars, no Home. */
    await expect(page.getByRole("navigation")).toHaveCount(0);
    await expect(
      step.getByRole("textbox", { name: "Display name" }),
    ).toHaveValue("Ash");
    await expect(
      step.getByRole("textbox", { name: "Default trainer name" }),
    ).toHaveValue("Ash");
    /* One starter is picked already, and tapping it again keeps it. */
    await expect(pickedIcons(page)).toHaveCount(1);
    await pickedIcons(page).click();
    await expect(pickedIcons(page)).toHaveCount(1);
    await expectAccessible(page);

    /* Continue as it is: Ash, with the starter it picked. */
    const starter = await pickedIcons(page).getAttribute("aria-label");

    await finishStep(page);
    await expect(
      page.getByRole("region", { name: "Your trainer card" }),
    ).toContainText("Ash");

    /* It doesn't come back: the next visit opens the app. */
    await page.reload();
    await expect(
      page.getByRole("region", { name: "Your trainer card" }),
    ).toContainText("Ash");
    await expect(trainerStep(page)).toHaveCount(0);

    await page.goto("/app/settings");
    const profile = page.getByRole("form", { name: "Profile" });

    await expect(
      profile.getByRole("textbox", { name: "Display name" }),
    ).toHaveValue("Ash");
    await expect(
      profile.getByRole("textbox", { name: "Default trainer name" }),
    ).toHaveValue("Ash");
    await expect(
      profile
        .getByRole("group", { name: "Your icon" })
        .getByRole("button", { name: starter ?? "" }),
    ).toHaveAttribute("aria-pressed", "true");
  });

  test("the trainer name follows the display name until you change it", async ({
    page,
  }) => {
    await page.goto("/app");

    const step = trainerStep(page);
    const displayName = step.getByRole("textbox", { name: "Display name" });
    const trainerName = step.getByRole("textbox", {
      name: "Default trainer name",
    });

    await displayName.fill("Misty");
    await expect(trainerName).toHaveValue("Misty");

    await trainerName.fill("Red");
    await displayName.fill("Mia");
    await expect(trainerName).toHaveValue("Red");

    /* Names stop at their limits: 12 for a trainer, as in the games. */
    await trainerName.clear();
    await trainerName.pressSequentially("Abcdefghijklmnop");
    await expect(trainerName).toHaveValue("Abcdefghijkl");
    await displayName.clear();
    await displayName.pressSequentially("A".repeat(30));
    await expect(displayName).toHaveValue("A".repeat(24));
    await trainerName.fill("Red");
    await displayName.fill("Mia");

    await step
      .getByRole("group", { name: "Your icon" })
      .getByRole("button", { name: "Squirtle" })
      .click();
    await expect(pickedIcons(page)).toHaveAccessibleName("Squirtle");
    await finishStep(page);

    await page.goto("/app/settings");
    const profile = page.getByRole("form", { name: "Profile" });

    await expect(
      profile.getByRole("textbox", { name: "Display name" }),
    ).toHaveValue("Mia");
    await expect(
      profile.getByRole("textbox", { name: "Default trainer name" }),
    ).toHaveValue("Red");
    await expect(
      profile
        .getByRole("group", { name: "Your icon" })
        .getByRole("button", { name: "Squirtle" }),
    ).toHaveAttribute("aria-pressed", "true");

    /* New Play starts with the trainer name. */
    await page.goto("/app?new=1");
    const dialog = page.getByRole("dialog", { name: "New Play" });

    await dialog.getByRole("option", { name: "Pokémon Red, 1996" }).click();
    await dialog.getByRole("button", { name: "Next" }).click();
    await dialog.getByRole("button", { name: "Decide later" }).click();
    await expect(
      dialog.getByRole("textbox", { name: "Trainer name" }),
    ).toHaveValue("Red");
  });

  test("a blank name keeps you on the step", async ({ page }) => {
    await page.goto("/app");

    const step = trainerStep(page);

    /* Spaces get past the browser's own check, not past the app's. */
    await step.getByRole("textbox", { name: "Display name" }).fill("   ");
    await step.getByRole("button", { name: "Continue" }).click();
    await expect(step.getByRole("alert")).toHaveText("Type a display name.");
    await expect(step).toBeVisible();

    await page.reload();
    await expect(trainerStep(page)).toBeVisible();
  });

  test("an account with no backup picks its trainer after logging in", async ({
    page,
  }) => {
    /* The device has its own trainer first. */
    await page.goto("/app");
    await finishStep(page);

    const email = newTestEmail("trainer-step");

    await createAccount(email);
    await logIn(page, email);
    await page.waitForURL("**/app");

    const step = trainerStep(page);

    await expect(step).toBeVisible();
    await step.getByRole("textbox", { name: "Display name" }).fill("Brock");
    await finishStep(page);
    await expect(
      page.getByRole("region", { name: "Your trainer card" }),
    ).toContainText("Brock");
  });

  test("Settings never leaves a name empty", async ({ page }) => {
    await page.goto("/app");
    await finishStep(page);
    await page.goto("/app/settings");

    const profile = page.getByRole("form", { name: "Profile" });

    await profile.getByRole("textbox", { name: "Display name" }).fill("  ");
    await profile.getByRole("button", { name: "Save" }).click();
    await expect(page.getByText("Type a display name.")).toBeVisible();

    /* Nothing was saved: the name is still Ash after a reload. */
    await page.reload();
    await expect(
      page
        .getByRole("form", { name: "Profile" })
        .getByRole("textbox", { name: "Display name" }),
    ).toHaveValue("Ash");
  });
});
