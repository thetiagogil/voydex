import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { newTestEmail, signedOut } from "../support/accounts";
import { signUp } from "../support/auth";

test.use({ storageState: signedOut });

test.describe("Profile: icon, default trainer name and Welcome", () => {
  test("Welcome saves your icon and then never opens again @phone", async ({
    page,
  }) => {
    await signUp(page, newTestEmail("icon"));

    const aboutYou = page.getByRole("form", { name: "About you" });
    const icons = aboutYou.getByRole("group", { name: "Pick your icon" });

    await icons.getByRole("button", { name: "Mudkip" }).click();
    await expect(icons.getByRole("button", { name: "Mudkip" })).toHaveAttribute(
      "aria-pressed",
      "true",
    );
    await expectAccessible(page);
    await aboutYou
      .getByRole("textbox", { name: "What should we call you?" })
      .fill("Red");
    await aboutYou.getByRole("button", { name: "Continue" }).click();
    await page.waitForURL("**/mainline");

    /* The same link now just moves on. */
    await page.goto("/welcome");
    await page.waitForURL("**/mainline");

    await page.goto("/settings");
    await expect(
      page
        .getByRole("group", { name: "Your icon" })
        .getByRole("button", { name: "Mudkip" }),
    ).toHaveAttribute("aria-pressed", "true");
  });

  test("Skipping Welcome ends it too", async ({ page }) => {
    await signUp(page, newTestEmail("skip"));

    await page.getByRole("button", { name: "Skip for now" }).click();
    await page.waitForURL("**/mainline");

    await page.goto("/welcome");
    await page.waitForURL("**/mainline");
  });

  test("a default trainer name from Settings starts New Play", async ({
    page,
  }) => {
    await signUp(page, newTestEmail("trainer"));
    await page.getByRole("button", { name: "Skip for now" }).click();
    await page.waitForURL("**/mainline");

    await page.goto("/settings");
    const profile = page.getByRole("form", { name: "Profile" });

    await profile
      .getByRole("group", { name: "Your icon" })
      .getByRole("button", { name: "Squirtle" })
      .click();
    await profile
      .getByRole("textbox", { name: "Default trainer name" })
      .fill("Gary");
    await expectAccessible(page);
    await profile.getByRole("button", { name: "Save" }).click();
    await expect(page.getByText("Profile saved")).toBeVisible();

    await page.reload();
    await expect(
      page
        .getByRole("group", { name: "Your icon" })
        .getByRole("button", { name: "Squirtle" }),
    ).toHaveAttribute("aria-pressed", "true");

    await page.goto("/mainline?new=1");
    const dialog = page.getByRole("dialog", { name: "New Play" });

    await dialog.getByRole("option", { name: "Pokémon Red, 1996" }).click();
    await dialog.getByRole("button", { name: "Next" }).click();
    await dialog.getByRole("button", { name: "Decide later" }).click();

    await expect(
      dialog.getByRole("textbox", { name: "Trainer name" }),
    ).toHaveValue("Gary");
  });
});
