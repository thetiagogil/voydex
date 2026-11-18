import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { waitForAction } from "../support/actions";
import { newTestEmail, signedOut } from "../support/accounts";
import { logInToNewAccount } from "../support/auth";

test.use({ storageState: signedOut });

test.describe("Profile: icon and default trainer name", () => {
  test("a default trainer name from Settings starts New Play", async ({
    page,
  }) => {
    await logInToNewAccount(page, newTestEmail("trainer"));

    await page.goto("/app/settings");
    const profile = page.getByRole("form", { name: "Profile" });

    await profile
      .getByRole("group", { name: "Your icon" })
      .getByRole("button", { name: "Squirtle" })
      .click();
    await profile
      .getByRole("textbox", { name: "Default trainer name" })
      .fill("Gary");
    await expectAccessible(page);
    /* Written to the device before the reload reads it back. */
    const saved = waitForAction(page);
    await profile.getByRole("button", { name: "Save" }).click();
    await expect(page.getByText("Profile saved")).toBeVisible();
    await saved;

    await page.reload();
    await expect(
      page
        .getByRole("group", { name: "Your icon" })
        .getByRole("button", { name: "Squirtle" }),
    ).toHaveAttribute("aria-pressed", "true");

    await page.goto("/app?new=1");
    const dialog = page.getByRole("dialog", { name: "New Play" });

    await dialog.getByRole("option", { name: "Pokémon Red, 1996" }).click();
    await dialog.getByRole("button", { name: "Next" }).click();
    await dialog.getByRole("button", { name: "Decide later" }).click();

    await expect(
      dialog.getByRole("textbox", { name: "Trainer name" }),
    ).toHaveValue("Gary");
  });
});
