import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { startPlay, uniquePlayName } from "../support/plays";

test.describe("Team", () => {
  test.beforeEach(async ({ page }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Team run"),
      partner: "Squirtle",
    });

    await page.goto(`/mainline/plays/${playId}/team`);
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
    await expect(activeTeam.getByRole("heading")).toContainText("2 / 6");
    const sparky = activeTeam.getByRole("button", {
      name: /^2 Sparky Pikachu · Lv\. 12.*, Active slot 2$/,
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
    ).toBeVisible();
  });

  test("evolves the partner, then retires it", async ({ page }) => {
    await page.getByRole("button", { name: "Edit Squirtle" }).click();
    await page.getByRole("button", { name: "Evolve into Wartortle" }).click();
    await expect(
      page.getByText("Squirtle evolved into Wartortle"),
    ).toBeVisible();
    await expect(
      page
        .getByRole("region", { name: /^Active team/ })
        .getByRole("button", { name: /^1 Wartortle\b.*, Active slot 1$/ }),
    ).toBeVisible();

    await page.getByRole("button", { name: "Edit Wartortle" }).click();
    await page.getByRole("button", { name: "Retire", exact: true }).click();
    const confirm = page.getByRole("alertdialog", {
      name: "Retire Wartortle?",
    });
    await confirm.getByRole("button", { name: "Retire Wartortle" }).click();
    await expect(page.getByText("Wartortle retired")).toBeVisible();
    await expect(
      page.getByRole("region", { name: /^Active team/ }).getByRole("heading"),
    ).toContainText("0 / 6");
  });
});
