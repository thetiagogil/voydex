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
    const squirtle = page.getByRole("button", { name: /Squirtle/ });
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
});
