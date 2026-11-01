import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { startPlay, uniquePlayName } from "../support/plays";

test.describe("Home", () => {
  test("a tapped team Pokémon is what Continue opens @phone", async ({
    page,
  }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Home pick"),
      partner: "Squirtle",
    });

    await page.goto(`/mainline?play=${playId}`, { waitUntil: "networkidle" });
    const squirtle = page.getByRole("button", { name: "Pick Squirtle" });
    const continueToPlay = page.getByRole("link", {
      exact: true,
      name: "Continue",
    });
    const continueWithSquirtle = page.getByRole("link", {
      name: "Continue with Squirtle",
    });

    /* Nothing picked: Continue opens the Play. */
    await expect(continueToPlay).toHaveAttribute(
      "href",
      `/mainline/plays/${playId}`,
    );

    /* A tap picks it and stays on Home; Continue now opens it. */
    await squirtle.click();
    await expect(squirtle).toHaveAttribute("aria-pressed", "true");
    await expect(page).toHaveURL(/\/mainline\?play=/);
    await expect(continueWithSquirtle).toHaveAttribute(
      "href",
      new RegExp(`/mainline/plays/${playId}/team\\?pokemon=`),
    );
    await expectAccessible(page);

    /* Tapping it again lets it go. */
    await squirtle.click();
    await expect(squirtle).toHaveAttribute("aria-pressed", "false");
    await expect(continueToPlay).toBeVisible();

    await squirtle.click();
    await continueWithSquirtle.click();
    await expect(page).toHaveURL(
      new RegExp(`/mainline/plays/${playId}/team\\?pokemon=`),
    );
    await expect(
      page
        .getByText("Nothing recorded for Squirtle yet.")
        .filter({ visible: true }),
    ).toBeVisible();
  });

  test("another Play on the shelf lets the pick go", async ({ page }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Home shelf"),
      partner: "Bulbasaur",
    });

    await page.goto(`/mainline?play=${playId}`, { waitUntil: "networkidle" });
    const bulbasaur = page.getByRole("button", { name: "Pick Bulbasaur" });
    const shelf = page.getByRole("navigation", { name: "Your Plays" });

    await bulbasaur.click();
    await expect(bulbasaur).toHaveAttribute("aria-pressed", "true");

    /* Away to another Play and back: nothing is picked any more. */
    const thisCover = shelf.locator('a[aria-current="true"]');
    const thisLabel = await thisCover.getAttribute("aria-label");
    await shelf.locator('a[href*="play="]:not([aria-current])').first().click();
    await expect(
      page.getByRole("link", { name: /^Continue with/ }),
    ).toHaveCount(0);
    await shelf
      .getByRole("link", { exact: true, name: thisLabel ?? "" })
      .click();
    await expect(bulbasaur).toHaveAttribute("aria-pressed", "false");
    await expect(
      page.getByRole("link", { exact: true, name: "Continue" }),
    ).toBeVisible();
  });
});
