import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { forTheAnswer } from "../support/actions";
import { startPlay, uniquePlayName } from "../support/plays";

test.describe("Form classes", () => {
  test("variants stand beside their species in Add Pokémon", async ({
    page,
  }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Scarlet, 2022",
      name: uniquePlayName("Paldea variants"),
      partner: "Fuecoco",
    });

    await page.goto(`/mainline/plays/${playId}/team`, {
      waitUntil: "networkidle",
    });
    await page.getByRole("button", { name: "Add Pokémon" }).click();
    await page
      .getByRole("searchbox", { name: "Search Pokémon" })
      .fill("tauros");

    /* Tauros and its three Paldean breeds, each with the same number. */
    const sheet = page.getByRole("dialog");
    await expect(
      sheet.getByRole("button", { name: /^Tauros, .*#223/ }),
    ).toHaveCount(4, forTheAnswer);
    await expect(
      sheet.getByRole("button", { name: /Paldean Tauros \(Blaze Breed\)/ }),
    ).toBeVisible();
  });

  test("Change form lists only forms it can switch to", async ({ page }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Sword, 2019",
      name: uniquePlayName("Galar Rotom"),
      partner: null,
    });

    await page.goto(`/mainline/plays/${playId}/team?add=rotom`, {
      waitUntil: "networkidle",
    });
    const details = page.getByRole("dialog", { name: "Rotom" });
    await details.getByRole("button", { name: "Add Rotom" }).click();
    await expect(details).toBeHidden(forTheAnswer);

    await page.getByRole("button", { name: "Edit Rotom" }).click();
    const editor = page.getByRole("dialog", { name: "Rotom" });
    await editor.getByRole("combobox", { name: "Change form" }).click();

    /* Each form with its types; picking one records it straight away. */
    const heat = page.getByRole("option", { name: /^Rotom \(Heat\)/ });
    await expect(heat.getByRole("img", { name: "Fire" })).toBeVisible();
    await expect(page.getByRole("option")).toHaveCount(5);
    await expectAccessible(page);
    await heat.click();
    await expect(page.getByText("Rotom is now Rotom (Heat)")).toBeVisible(
      forTheAnswer,
    );
  });
});
