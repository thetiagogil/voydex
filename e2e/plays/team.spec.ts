import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { startPlay, uniquePlayName } from "../support/plays";
import { forTheAnswer, waitForAction } from "../support/actions";

test.describe("Team", () => {
  test.beforeEach(async ({ page }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Team run"),
      partner: "Squirtle",
    });

    /* Wait for the page to finish loading, so the first tap is heard. */
    await page.goto(`/mainline/plays/${playId}/team`, {
      waitUntil: "networkidle",
    });
  });

  test("adds a Pokémon to the team @phone", async ({ page }) => {
    await page.getByRole("button", { name: "Add Pokémon" }).first().click();

    const picker = page.getByRole("dialog", { name: "Which Pokémon?" });
    await picker
      .getByRole("searchbox", { name: "Search Pokémon" })
      .fill("pika");
    await picker.getByRole("button", { name: "Pikachu, #025" }).click();

    const details = page.getByRole("dialog", { name: "Pikachu" });
    await details.getByRole("textbox", { name: "Nickname" }).fill("Sparky");
    await details.getByRole("spinbutton", { name: "Level" }).fill("12");
    await expectAccessible(page);
    await details.getByRole("button", { name: "Add Pikachu" }).click();
    await expect(details).toBeHidden();

    const activeTeam = page.getByRole("region", { name: /^Active team/ });
    /* The sheet closes once it's saved; the team redraws after. */
    await expect(activeTeam.getByRole("heading")).toContainText(
      "2 / 6",
      forTheAnswer,
    );
    const sparky = activeTeam.getByRole("button", {
      name: /^2 Sparky Lv\. 12.*, Active slot 2$/,
    });
    await expect(sparky).toBeVisible();

    await page.reload();
    await expect(sparky).toBeVisible();
    await expectAccessible(page);
  });

  test("adds a Pokémon to the reserve", async ({ page }) => {
    await page.getByRole("button", { name: "Add Pokémon" }).first().click();
    await page
      .getByRole("dialog", { name: "Which Pokémon?" })
      .getByRole("button", { name: "Pidgey, #016" })
      .click();

    const details = page.getByRole("dialog", { name: "Pidgey" });
    await details.getByRole("button", { name: "Reserve" }).click();
    await details.getByRole("button", { name: "Add Pidgey" }).click();
    await expect(details).toBeHidden();

    await expect(
      page
        .getByRole("region", { name: /^Reserve/ })
        .getByRole("button", { name: /\bPidgey\b.*, Reserve slot 1$/ }),
    ).toBeVisible(forTheAnswer);
  });

  test("evolves the partner, then retires it", async ({ page }) => {
    /*
     * The editor loads what it offers through an action of its own (twice
     * in development, where effects run twice); its buttons turn on once
     * the last load lands.
     */
    let optionsLoaded = waitForAction(page);
    await page.getByRole("button", { name: "Edit Squirtle" }).click();
    await optionsLoaded;
    const evolve = page.getByRole("button", { name: "Evolve into Wartortle" });
    await expect(evolve).toBeEnabled();
    const evolved = waitForAction(page);
    await evolve.click();
    await evolved;
    await expect(page.getByText("Squirtle evolved into Wartortle")).toBeVisible(
      forTheAnswer,
    );
    await expect(
      page
        .getByRole("region", { name: /^Active team/ })
        .getByRole("button", { name: /^1 Wartortle\b.*, Active slot 1$/ }),
    ).toBeVisible();

    optionsLoaded = waitForAction(page);
    await page.getByRole("button", { name: "Edit Wartortle" }).click();
    await optionsLoaded;
    await expect(
      page.getByRole("button", { name: "Evolve into Blastoise" }),
    ).toBeEnabled();
    await page.getByRole("button", { name: "Retire", exact: true }).click();
    const confirm = page.getByRole("alertdialog", {
      name: "Retire Wartortle?",
    });
    const retired = waitForAction(page);
    await confirm.getByRole("button", { name: "Retire Wartortle" }).click();
    await retired;
    await expect(page.getByText("Wartortle retired")).toBeVisible(forTheAnswer);
    await expect(
      page.getByRole("region", { name: /^Active team/ }).getByRole("heading"),
    ).toContainText("0 / 6");
  });
});
