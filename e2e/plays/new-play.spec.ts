import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { startPlay, uniquePlayName } from "../support/plays";

test.describe("New Play", () => {
  test("starts a Play with a partner @phone", async ({ page }) => {
    const name = uniquePlayName("Kanto run");
    const playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name,
      partner: "Charmander",
    });

    await expect(
      page.getByRole("region", { name: "Charmander is your partner" }),
    ).toBeVisible();
    await expect(
      page.getByRole("region", { name: "Your team" }).getByRole("link", {
        name: "Charmander Fire",
      }),
    ).toBeVisible();
    await expectAccessible(page);

    await page.goto(`/mainline/plays/${playId}/history`);
    await expect(page.getByText("Charmander chose you")).toBeVisible();

    await page.goto("/mainline/plays");
    await expect(
      page.getByRole("link", { name: new RegExp(`Red · ${name}`) }),
    ).toBeVisible();
  });

  test("decides the partner later, from Overview", async ({ page }) => {
    await startPlay(page, {
      game: "Pokémon Gold, 1999",
      name: uniquePlayName("Johto run"),
      partner: null,
    });

    const partnerChoice = page.getByRole("region", {
      name: "Which Pokémon did you choose?",
    });

    await partnerChoice
      .getByRole("button", { name: "Totodile is my partner" })
      .click();
    await partnerChoice
      .getByRole("button", { name: "Choose Totodile" })
      .click();

    await expect(
      page.getByRole("region", { name: "Totodile is your partner" }),
    ).toBeVisible();
    await expect(
      page.getByRole("region", { name: "Your team" }).getByRole("link", {
        name: "Totodile Water",
      }),
    ).toBeVisible();
  });

  test("keeps Next off until a game is picked", async ({ page }) => {
    await page.goto("/mainline?new=1");
    const dialog = page.getByRole("dialog", { name: "New Play" });

    await expect(dialog.getByRole("button", { name: "Next" })).toBeDisabled();
    await expectAccessible(page);

    await dialog.getByRole("button", { name: "Close New Play" }).click();
    await expect(dialog).toBeHidden();
  });
});
