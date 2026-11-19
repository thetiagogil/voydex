import { expect, type Page, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { forTheAnswer, waitForAction } from "../support/actions";
import { startPlay, uniquePlayName } from "../support/plays";

/* Records the objective Overview shows and waits for the next one's words. */
const recordShownObjective = async (page: Page) => {
  const record = page.getByRole("button", { name: /^Record/ });
  const label = await record.innerText();
  const saved = waitForAction(page);

  await record.click();
  await saved;
  await expect(record).not.toHaveText(label, forTheAnswer);
};

test.describe("Overview", () => {
  test("records a gym from the journey card and stamps its badge @phone", async ({
    page,
  }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Journey run"),
      partner: "Bulbasaur",
    });
    const journey = page.getByRole("region", { name: "Boulder Badge" });

    /* Record what comes before the first gym, one objective at a time. */
    for (let step = 0; step < 5 && !(await journey.isVisible()); step += 1) {
      await recordShownObjective(page);
    }

    /* The journey card: the objective once, its stamp card under it. */
    const stamps = page.getByRole("region", { name: /^Stamp card/ });

    await expect(
      journey.getByText(/^Next objective · Milestone \d+ of \d+$/),
    ).toBeVisible(forTheAnswer);
    await expect(stamps).toContainText(/0 of \d+/);
    await expect(page.getByText(/of \d+ milestones/)).toHaveCount(0);
    await expectAccessible(page);

    const saved = waitForAction(page);
    await journey
      .getByRole("button", { name: /^Record Boulder Badge/ })
      .click();
    await saved;

    /* The badge lands in the card, and the words hand over to the next one. */
    await expect(stamps).toContainText(/1 of \d+/, forTheAnswer);
    await expect(journey).toHaveCount(0, forTheAnswer);

    /* A stamp opens its milestone in Story. */
    await page
      .getByRole("list", { name: "Stamps" })
      .getByRole("button", { name: /^Boulder Badge.*Open it$/ })
      .click();
    await page.waitForURL(
      new RegExp(`/progress/story\\?id=${playId}&record=\\d+`),
    );
  });

  test("shows the Pokédex beside Recent moments, with what was caught last @phone", async ({
    page,
  }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Pokédex run"),
      partner: "Bulbasaur",
    });

    /* Past its first steps, Overview draws the Pokédex card. */
    await recordShownObjective(page);
    await page.goto(`/app/plays/play/progress/pokedex?id=${playId}`, {
      waitUntil: "networkidle",
    });
    const saved = waitForAction(page);
    await page.getByRole("button", { name: "Mark Pidgey as Caught" }).click();
    await saved;
    await page.goto(`/app/plays/play?id=${playId}`, {
      waitUntil: "networkidle",
    });

    const pokedex = page.getByRole("region", { name: "Pokédex" });

    await expect(pokedex.getByText(/of \d+ caught/)).toBeVisible(forTheAnswer);
    await expect(pokedex.getByRole("img", { name: "Pidgey" })).toBeVisible();
    await expectAccessible(page);
  });
});
