import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { startPlay, uniquePlayName } from "../support/plays";
import { forTheAnswer, waitForAction } from "../support/actions";

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
      page.getByRole("link", { name: new RegExp(name) }),
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
    const saved = waitForAction(page);
    await partnerChoice
      .getByRole("button", { name: "Choose Totodile" })
      .click();
    await saved;

    await expect(
      page.getByRole("region", { name: "Totodile is your partner" }),
    ).toBeVisible(forTheAnswer);
    await expect(
      page.getByRole("region", { name: "Your team" }).getByRole("link", {
        name: "Totodile Water",
      }),
    ).toBeVisible();
  });

  test("lights only the generation jumped to while the shelf scrolls there", async ({
    page,
  }) => {
    await page.goto("/mainline?new=1");
    const marks = page
      .getByRole("dialog", { name: "New Play" })
      .getByRole("group", { name: "Jump to a generation" });
    const lit = () =>
      marks.evaluate((group) =>
        Array.from(group.querySelectorAll("[aria-current]")).map(
          (mark) => mark.textContent,
        ),
      );
    /* Every mark lit while the shelf travels, read each frame. */
    const watch = async () => {
      const seen = new Set<string>();

      for (let frame = 0; frame < 30; frame += 1) {
        for (const label of await lit()) seen.add(label ?? "");
        await page.waitForTimeout(30);
      }

      return [...seen];
    };

    await marks.getByRole("button", { name: "III", exact: true }).click();
    expect(await watch()).toEqual(["III"]);

    /* The newest generation stays lit though the shelf can't bring it to the left. */
    await marks.getByRole("button", { name: "IX", exact: true }).click();
    expect(await watch()).toEqual(["IX"]);
  });

  test("asks for a Play name and shows the game beside the partner", async ({
    page,
  }) => {
    await page.goto("/mainline?new=1");
    const dialog = page.getByRole("dialog", { name: "New Play" });

    await dialog.getByRole("option", { name: "Pokémon Red, 1996" }).click();
    await dialog.getByRole("button", { name: "Next" }).click();
    await dialog
      .getByRole("button", { name: "Charmander is my partner" })
      .click();
    await dialog.getByRole("button", { name: "Next" }).click();

    await expect(
      dialog.getByRole("img", { name: "Pokémon Red" }),
    ).toBeVisible();
    const start = dialog.getByRole("button", { name: "Start with Charmander" });

    await dialog.getByRole("textbox", { name: "Play name" }).fill("  ");
    await expect(start).toBeDisabled();
    await dialog.getByRole("textbox", { name: "Play name" }).fill("Kanto");
    await expect(start).toBeEnabled();
    await expectAccessible(page);
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
