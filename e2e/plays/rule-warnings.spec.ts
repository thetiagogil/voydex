import { expect, test, type Page } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { forTheAnswer, waitForAction } from "../support/actions";
import { startPlay, uniquePlayName } from "../support/plays";

/* The Play head's chip, opened: each broken rule and what breaks it. */
const openRuleBreaks = async (page: Page, count: string) => {
  await page.getByRole("button", { name: count }).click();

  return page.getByRole("dialog", { name: count });
};

test.describe("Rule warnings", () => {
  test("a Play's rules warn about its team and never block @phone", async ({
    page,
  }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Mono run"),
      partner: "Squirtle",
      rules: [
        { name: "Monotype", type: "Water" },
        { name: "Nickname everything" },
        { name: "No legendaries" },
      ],
    });

    await page.goto(`/mainline/plays/${playId}/team`, {
      waitUntil: "networkidle",
    });
    /* Squirtle is Water, but has no nickname yet. */
    await expect(
      page.getByRole("button", {
        name: /Squirtle.*Breaks this Play's rules: Nickname everything/,
      }),
    ).toBeVisible();
    let breaks = await openRuleBreaks(page, "1 rule broken");

    await expect(breaks).toContainText("Nickname everything");
    await expect(breaks).toContainText("Squirtle has no nickname.");
    await expect(breaks).not.toContainText("Monotype");
    await page.keyboard.press("Escape");
    await expect(breaks).toBeHidden();

    await page.getByRole("button", { name: "Add Pokémon" }).first().click();
    const choices = page.getByRole("dialog", { name: "Which Pokémon?" });

    await choices
      .getByRole("searchbox", { name: "Search Pokémon" })
      .fill("mewtwo");
    /* Faded, but it can still be picked; its nickname comes later. */
    await expect(
      choices.getByRole("status").filter({
        hasText: "Faded Pokémon break this Play's rules",
      }),
    ).toBeVisible();
    const mewtwo = choices.getByRole("button", { name: /^Mewtwo, #150/ });
    const rulesOnly = choices.getByRole("switch", {
      name: "Only show the ones that follow them",
    });

    /* The switch keeps only the Pokémon that follow the rules. */
    await rulesOnly.click();
    await expect(mewtwo).toBeHidden();
    await expect(
      choices.getByText("None of these follow this Play's rules."),
    ).toBeVisible();
    await rulesOnly.click();
    await expect(mewtwo).toBeVisible();
    await choices
      .getByRole("button", {
        name: "Mewtwo, #150, breaks this Play's rules: Monotype, No legendaries",
      })
      .click();
    const details = page.getByRole("dialog", { name: "Mewtwo" });
    const warning = details.getByRole("status");

    await expect(warning).toContainText("Monotype: Mewtwo isn't Water type.");
    await expect(warning).toContainText(
      "Nickname everything: Mewtwo has no nickname.",
    );
    await expect(warning).toContainText(
      "No legendaries: Mewtwo is a Legendary Pokémon.",
    );
    await expectAccessible(page);

    /* A nickname settles that rule as it's typed; the rest stay. */
    await details.getByRole("textbox", { name: "Nickname" }).fill("Psy");
    await expect(warning).not.toContainText("Nickname everything");
    await details.getByRole("button", { name: "Add Mewtwo" }).click();
    await expect(details).toBeHidden();

    breaks = await openRuleBreaks(page, "3 rules broken");
    await expect(breaks).toContainText("Psy isn't Water type.", forTheAnswer);
    await expect(breaks).toContainText("Psy is a Legendary Pokémon.");
    await expectAccessible(page);
  });

  test("No Pokémon reuse names the earlier Play that used it", async ({
    page,
  }) => {
    const first = uniquePlayName("First run");

    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: first,
      partner: "Bulbasaur",
    });
    const playId = await startPlay(page, {
      game: "Pokémon Blue, 1996",
      name: uniquePlayName("Second run"),
      partner: "Bulbasaur",
      rules: [{ name: "No Pokémon reuse", withOptions: true }],
    });

    await page.goto(`/mainline/plays/${playId}/team`, {
      waitUntil: "networkidle",
    });

    /* Every earlier Play of this trainer's with a Bulbasaur counts. */
    const breaks = await openRuleBreaks(page, "1 rule broken");

    await expect(breaks).toContainText(
      /Bulbasaur was already used in (another Play|\d+ other Plays)\./,
    );
    await breaks
      .getByRole("button", { name: /^(another Play|\d+ other Plays)$/ })
      .click();
    const plays = page.getByRole("dialog", {
      name: "Plays that used Bulbasaur",
    });

    await expect(
      plays.getByRole("link", { name: new RegExp(first) }),
    ).toBeVisible(forTheAnswer);
    await expectAccessible(page);
  });

  test("No Pokémon reuse still knows a Pokémon that evolved since", async ({
    page,
  }) => {
    const first = uniquePlayName("Evolved run");
    const firstId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: first,
      partner: "Charmander",
    });

    await page.goto(`/mainline/plays/${firstId}/team`, {
      waitUntil: "networkidle",
    });
    const optionsLoaded = waitForAction(page);
    await page.getByRole("button", { name: "Edit Charmander" }).click();
    await optionsLoaded;
    const evolve = page.getByRole("button", { name: "Evolve into Charmeleon" });
    await expect(evolve).toBeEnabled();
    const evolved = waitForAction(page);
    await evolve.click();
    await evolved;
    await expect(
      page.getByText("Charmander evolved into Charmeleon"),
    ).toBeVisible(forTheAnswer);

    const playId = await startPlay(page, {
      game: "Pokémon Blue, 1996",
      name: uniquePlayName("Fresh run"),
      partner: "Charmander",
      rules: [{ name: "No Pokémon reuse", withOptions: true }],
    });

    await page.goto(`/mainline/plays/${playId}/team`, {
      waitUntil: "networkidle",
    });
    /* By exact form: the Charmander it was still counts. */
    await expect(await openRuleBreaks(page, "1 rule broken")).toContainText(
      /Charmander was already used in (another Play|\d+ other Plays)\./,
    );
  });

  test("a Play without rules shows no chip", async ({ page }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Free run"),
      partner: "Squirtle",
    });

    await page.goto(`/mainline/plays/${playId}/team`, {
      waitUntil: "networkidle",
    });
    await expect(page.getByRole("heading", { level: 1 })).toBeVisible();
    await expect(page.getByText(/rules? broken/)).toHaveCount(0);
    await expect(page.getByText(/Breaks this Play's rules/)).toHaveCount(0);
  });
});
