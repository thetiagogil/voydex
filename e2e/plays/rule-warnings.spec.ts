import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { forTheAnswer, waitForAction } from "../support/actions";
import { startPlay, uniquePlayName } from "../support/plays";

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
    const note = page.getByRole("status").filter({
      hasText: "Against this Play's rules",
    });

    /* Squirtle is Water, but has no nickname yet. */
    await expect(note).toContainText(
      "Nickname everything: Squirtle has no nickname.",
    );
    await expect(note).not.toContainText("Monotype");

    await page.getByRole("button", { name: "Add Pokémon" }).first().click();
    await page
      .getByRole("dialog", { name: "Which Pokémon?" })
      .getByRole("searchbox", { name: "Search Pokémon" })
      .fill("mewtwo");
    await page.getByRole("button", { name: "Mewtwo, #150" }).click();
    const details = page.getByRole("dialog", { name: "Mewtwo" });
    const warning = details.getByRole("status");

    await expect(warning).toContainText("Monotype: Mewtwo isn't Water type.");
    await expect(warning).toContainText(
      "Nickname everything: Mewtwo has no nickname.",
    );
    await expect(warning).toContainText(
      "No legendaries: Mewtwo is a Legendary Pokémon.",
    );
    await expect(warning).toContainText("You can still add it.");
    await expectAccessible(page);

    /* A nickname settles that rule as it's typed; the rest stay. */
    await details.getByRole("textbox", { name: "Nickname" }).fill("Psy");
    await expect(warning).not.toContainText("Nickname everything");
    await details.getByRole("button", { name: "Add Mewtwo" }).click();
    await expect(details).toBeHidden();

    await expect(note).toContainText(
      "Monotype: Psy isn't Water type.",
      forTheAnswer,
    );
    await expect(note).toContainText(
      "No legendaries: Psy is a Legendary Pokémon.",
    );
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

    /* Any earlier Play of this trainer's with a Bulbasaur may be named. */
    await expect(
      page.getByRole("status").filter({ hasText: "Against this Play's rules" }),
    ).toContainText(/No Pokémon reuse: Bulbasaur was already used in .+\./);
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
    await expect(
      page.getByRole("status").filter({ hasText: "Against this Play's rules" }),
    ).toContainText(/No Pokémon reuse: Charmander was already used in .+\./);
  });

  test("a Play without rules shows no note", async ({ page }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Free run"),
      partner: "Squirtle",
    });

    await page.goto(`/mainline/plays/${playId}/team`, {
      waitUntil: "networkidle",
    });
    await expect(page.getByRole("heading", { level: 1 })).toBeVisible();
    await expect(page.getByText("Against this Play's rules")).toHaveCount(0);
  });
});
