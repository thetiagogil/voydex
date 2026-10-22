import { expect, test, type Locator, type Page } from "@playwright/test";

import { forTheAnswer, waitForAction } from "../support/actions";
import { startPlay, uniquePlayName } from "../support/plays";

test.describe("Battle forms", () => {
  test("an opponent's Mega shows in Story matchups", async ({ page }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Omega Ruby, 2014",
      name: uniquePlayName("Hoenn run"),
      partner: "Treecko",
    });

    await page.goto(`/mainline/plays/${playId}/team/analysis?reading=story`, {
      waitUntil: "networkidle",
    });
    await page.getByRole("button", { name: /^Steven/ }).click();

    /* Steven holds Metagrossite, so his ace is read as Mega Metagross. */
    const report = page.getByRole("region", { name: "Steven" });
    await expect(report).toContainText("Mega Metagross", forTheAnswer);
  });

  test("a link can't add a Pokémon in its Mega form", async ({ page }) => {
    const playId = await startPlay(page, {
      game: "Pokémon X, 2013",
      name: uniquePlayName("Kalos run"),
      partner: "Froakie",
    });

    await page.goto(
      `/mainline/plays/${playId}/team?add=charizard&form=mega-charizard-x`,
      { waitUntil: "networkidle" },
    );

    /* The Mega isn't a form a Pokémon is kept in: plain Charizard opens. */
    const details = page.getByRole("dialog", { name: "Charizard" });
    await expect(details).toBeVisible(forTheAnswer);
    await expect(details).toContainText("Fire");
    await expect(details).toContainText("Flying");
    await expect(details).not.toContainText("Dragon");
    await expect(page.getByRole("dialog", { name: /Mega/ })).toHaveCount(0);
  });

  /* Adds a Pokémon through the "Add to a Play" link and opens its profile. */
  const addFromLink = async (page: Page, playId: string, name: string) => {
    await page.goto(
      `/mainline/plays/${playId}/team?add=${name.toLowerCase()}`,
      { waitUntil: "networkidle" },
    );
    const details = page.getByRole("dialog", { name });

    await details.getByRole("button", { name: `Add ${name}` }).click();
    await expect(details).toBeHidden(forTheAnswer);
    await page
      .getByRole("region", { name: /^Active team/ })
      .getByRole("button", { name: new RegExp(`^${name}\\b`) })
      .click();

    return page.getByRole("region", { name });
  };

  /* Picks a form in a form menu; an option's name starts with its label. */
  const pickForm = async (page: Page, menu: Locator, label: string) => {
    await menu.click();
    await page
      .getByRole("option", { name: new RegExp(`^${label}\\b`) })
      .click();
    await expect(menu).toContainText(label);
  };

  test("a member shows its Mega form and warns about its Mega Stone", async ({
    page,
  }) => {
    const playId = await startPlay(page, {
      game: "Pokémon X, 2013",
      name: uniquePlayName("Kalos Megas"),
      partner: null,
    });
    const profile = await addFromLink(page, playId, "Charizard");
    const menu = profile.getByRole("combobox", { name: "Battle form" });

    await pickForm(page, menu, "Mega X");
    await expect(profile).toContainText("Mega Charizard X");
    await expect(profile).toContainText("Dragon");
    await expect(profile.getByRole("status")).toContainText(
      "Needs to hold Charizardite X to Mega Evolve.",
    );

    await pickForm(page, menu, "Base");
    await expect(profile).not.toContainText("Dragon");
    await expect(profile.getByRole("status")).toHaveCount(0);
  });

  test("Gigantamax needs the Factor, which the editor saves", async ({
    page,
  }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Sword, 2019",
      name: uniquePlayName("Galar Gigantamax"),
      partner: null,
    });
    const profile = await addFromLink(page, playId, "Charizard");
    const menu = profile.getByRole("combobox", { name: "Battle form" });

    /* No Megas in Sword: only Gigantamax. */
    await menu.click();
    await expect(page.getByRole("option")).toHaveCount(2);
    await expect(page.getByRole("option").nth(1)).toContainText("Gigantamax");
    await page.keyboard.press("Escape");
    await pickForm(page, menu, "Gigantamax");
    await expect(profile.getByRole("status")).toContainText(
      "Doesn't have the Gigantamax Factor.",
    );

    await page.getByRole("button", { name: "Edit Charizard" }).click();
    const editor = page.getByRole("dialog", { name: "Charizard" });
    const canGigantamax = editor.getByRole("checkbox", {
      name: "Can Gigantamax",
    });

    await expect(canGigantamax).toBeVisible(forTheAnswer);
    /* Only the items Sword has: no Gen II Berry, no Mega Stones. */
    await editor.getByRole("combobox", { name: "Held item" }).click();
    const search = page.getByRole("combobox", { name: "Search held item" });
    await search.fill("Berry (Gen II)");
    await expect(page.getByText("Nothing matches.")).toBeVisible();
    await search.fill("mega stones");
    await expect(page.getByText("Nothing matches.")).toBeVisible();
    await search.fill("leftovers");
    await expect(page.getByRole("option", { name: "Leftovers" })).toBeVisible();
    await page.keyboard.press("Escape");
    /* And only Sword's own Poké Balls: no Hisuian Feather Ball. */
    await editor.getByRole("combobox", { name: "Poké Ball" }).click();
    const ballSearch = page.getByRole("combobox", { name: "Search poké ball" });
    await ballSearch.fill("feather");
    await expect(page.getByText("Nothing matches.")).toBeVisible();
    await ballSearch.fill("dream");
    await expect(
      page.getByRole("option", { name: "Dream Ball" }),
    ).toBeVisible();
    await page.keyboard.press("Escape");
    await canGigantamax.click();
    const saved = waitForAction(page);
    await editor.getByRole("button", { name: "Save", exact: true }).click();
    await saved;
    await expect(editor).toBeHidden(forTheAnswer);

    await expect(menu).toContainText("Gigantamax");
    await expect(profile.getByRole("status")).toHaveCount(0, forTheAnswer);
    await expect(profile).toContainText("Gigantamax Charizard");
  });

  test("a Tera Type is recorded only where the game has Terastal", async ({
    page,
  }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Scarlet, 2022",
      name: uniquePlayName("Paldea Tera"),
      partner: "Fuecoco",
    });

    await page.goto(`/mainline/plays/${playId}/team`, {
      waitUntil: "networkidle",
    });
    await page.getByRole("button", { name: "Edit Fuecoco" }).click();
    const editor = page.getByRole("dialog", { name: "Fuecoco" });

    /* Each ability says what it does, and the picked one keeps an "i". */
    await editor.getByRole("combobox", { name: "Ability" }).click();
    await page
      .getByRole("option", { name: /Blaze.*Powers up Fire-type moves/ })
      .click();
    await expect(
      editor.getByRole("button", { name: "What this ability does" }),
    ).toBeVisible();
    /* Every nature says what it does, the neutral ones too. */
    await editor.getByRole("combobox", { name: "Nature" }).click();
    await expect(
      page.getByRole("option", { name: /Hardy.*Neutral/ }),
    ).toBeVisible();
    await page
      .getByRole("option", {
        name: /Adamant.*Raises Attack, lowers Special Attack/,
      })
      .click();
    await editor.getByRole("combobox", { name: "Tera Type" }).click();
    await page.getByRole("option", { name: "Ghost", exact: true }).click();
    /* A long list, so it opens with a search field. */
    await editor.getByRole("combobox", { name: "Held item" }).click();
    await page
      .getByRole("combobox", { name: "Search held item" })
      .fill("Leftovers");
    await page.getByRole("option", { name: "Leftovers" }).click();
    const saved = waitForAction(page);
    await editor.getByRole("button", { name: "Save", exact: true }).click();
    await saved;
    await expect(editor).toBeHidden(forTheAnswer);

    const profile = page.getByRole("region", { name: "Fuecoco" });

    await expect(profile).toContainText("Tera Type");
    await expect(profile).toContainText("Ghost");
    await expect(profile).toContainText("Leftovers");
    await expect(profile).toContainText("Adamant");
    /* Scarlet has no battle forms to switch to. */
    await expect(
      profile.getByRole("combobox", { name: "Battle form" }),
    ).toHaveCount(0);
  });
});
