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

    await page.goto(`/app?play=${playId}`, { waitUntil: "networkidle" });
    const squirtle = page.getByRole("button", { name: "Pick Squirtle" });
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
      `/app/plays/play?id=${playId}`,
    );

    /* A tap picks it and stays on Home; Continue now opens it. */
    await squirtle.click();
    await expect(squirtle).toHaveAttribute("aria-pressed", "true");
    await expect(page).toHaveURL(/\/app\?play=/);
    await expect(continueWithSquirtle).toHaveAttribute(
      "href",
      new RegExp(`/app/plays/play/team\\?id=${playId}&pokemon=`),
    );
    await expectAccessible(page);

    /* Tapping it again lets it go. */
    await squirtle.click();
    await expect(squirtle).toHaveAttribute("aria-pressed", "false");
    await expect(continueToPlay).toBeVisible();

    await squirtle.click();
    await continueWithSquirtle.click();
    await expect(page).toHaveURL(
      new RegExp(`/app/plays/play/team\\?id=${playId}&pokemon=`),
    );
    await expect(
      page
        .getByText("Nothing recorded for Squirtle yet.")
        .filter({ visible: true }),
    ).toBeVisible();
  });

  test("the journey card and your other Plays each open their Play", async ({
    page,
  }) => {
    /* Each test has its own device: two Plays leave the first-Play band. */
    const otherName = uniquePlayName("Home other");
    const otherId = await startPlay(page, {
      game: "Pokémon Blue, 1996",
      name: otherName,
      partner: "Charmander",
    });
    const journeyName = uniquePlayName("Home journey");
    const journeyId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: journeyName,
      partner: "Bulbasaur",
    });

    await page.goto("/app", { waitUntil: "networkidle" });
    const journey = page.getByRole("link", { name: /Continue your journey/ });

    /* The latest Play is the journey; the whole card opens it. */
    await expect(journey).toContainText(journeyName);
    await expect(journey).toHaveAttribute(
      "href",
      `/app/plays/play?id=${journeyId}`,
    );
    await expect(journey.getByRole("list", { name: "Team" })).toContainText(
      "Bulbasaur",
    );

    /* The other one waits under it, and New Play ends the row. */
    const others = page.getByRole("region", { name: "Your other Plays" });
    await expect(
      others.getByRole("link", { name: new RegExp(otherName) }),
    ).toHaveAttribute("href", `/app/plays/play?id=${otherId}`);
    await expect(
      others.getByRole("button", { name: "New Play" }),
    ).toBeVisible();

    await expectAccessible(page);

    /* `?play=` puts another Play on the journey card. */
    await page.goto(`/app?play=${otherId}`, { waitUntil: "networkidle" });
    await expect(
      page.getByRole("link", { name: /Continue your journey/ }),
    ).toContainText(otherName);
  });

  test("opening a Play makes it the journey, recording nothing", async ({
    page,
  }) => {
    const olderName = uniquePlayName("Opened again");
    const olderId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: olderName,
      partner: "Charmander",
    });
    const newerName = uniquePlayName("Opened once");

    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: newerName,
      partner: "Squirtle",
    });
    const journeyText = async () => {
      await page.goto("/app", { waitUntil: "networkidle" });
      /* The cards draw once the device database has opened. */
      const journey = page.getByRole("link", {
        name: /Continue your journey/,
      });
      await expect(journey).toBeVisible();

      return journey.innerText();
    };
    const moments = async () => {
      await page.goto(`/app/plays/play/history?id=${olderId}`, {
        waitUntil: "networkidle",
      });

      return page.getByRole("list", { name: "Moments" }).innerText();
    };

    expect(await journeyText()).toContain(newerName);
    /* Opening its History opens the Play. */
    const momentsBefore = await moments();

    expect(await journeyText()).toContain(olderName);
    expect(await moments()).toBe(momentsBefore);
  });
});
