import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { startPlay, uniquePlayName } from "../support/plays";

test.describe("Home", () => {
  test("one brand-new Play is the same Home as any other, with Continue @phone", async ({
    page,
  }) => {
    const name = uniquePlayName("Home first");
    const playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name,
      partner: "Squirtle",
    });

    await page.goto("/app", { waitUntil: "networkidle" });
    await expect(
      page.getByRole("region", { name: "Your trainer card" }),
    ).toContainText("Pokémon owned");

    const continueRow = page.getByRole("link", { name: /Continue/ });

    await expect(continueRow).toContainText(name);
    await expect(continueRow).toHaveAttribute(
      "href",
      `/app/plays/play?id=${playId}`,
    );
    await expect(
      page.getByRole("region", { name: "Latest moments" }),
    ).toBeVisible();
    await expectAccessible(page);
  });

  test("Continue opens the Play you're on, under your trainer card", async ({
    page,
  }) => {
    /* Each test has its own device. */
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
    await expect(
      page.getByRole("region", { name: "Your trainer card" }),
    ).toContainText("Pokémon owned");

    /* The latest Play is the one Continue opens. */
    const continueRow = page.getByRole("link", { name: /Continue/ });
    await expect(continueRow).toContainText(journeyName);
    await expect(continueRow).toHaveAttribute(
      "href",
      `/app/plays/play?id=${journeyId}`,
    );

    /* The latest moments come from every Play. */
    const moments = page.getByRole("region", { name: "Latest moments" });
    await expect(moments).toContainText(journeyName);
    await expect(moments).toContainText(otherName);
    await expectAccessible(page);

    /* `?play=` puts another Play on the Continue row. */
    await page.goto(`/app?play=${otherId}`, { waitUntil: "networkidle" });
    await expect(page.getByRole("link", { name: /Continue/ })).toContainText(
      otherName,
    );
  });

  test("opening a Play puts it on the Continue row, recording nothing", async ({
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
    const continueText = async () => {
      await page.goto("/app", { waitUntil: "networkidle" });
      /* Home draws once the device database has opened. */
      const continueRow = page.getByRole("link", { name: /Continue/ });
      await expect(continueRow).toBeVisible();

      return continueRow.innerText();
    };
    const moments = async () => {
      await page.goto(`/app/plays/play/history?id=${olderId}`, {
        waitUntil: "networkidle",
      });

      return page.getByRole("list", { name: "Moments" }).innerText();
    };

    expect(await continueText()).toContain(newerName);
    /* Opening its History opens the Play. */
    const momentsBefore = await moments();

    expect(await continueText()).toContain(olderName);
    expect(await moments()).toBe(momentsBefore);
  });
});
