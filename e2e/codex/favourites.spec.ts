import { expect, test, type Page } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { signedOut } from "../support/accounts";
import { forTheAnswer, waitForAction } from "../support/actions";
import { openFilters } from "../support/filters";

/*
 * The account is shared and the desktop and phone runs go side by side, so
 * each run hearts its own Pokémon that no other test touches, and leaves it
 * off again.
 */
const subjects = {
  desktop: {
    codexHref: "/codex/pokemon/spinda",
    entry: "/codex/pokemon/rs/spinda",
    name: "Spinda",
    number: "#327",
  },
  phone: {
    codexHref: "/codex/pokemon/smeargle",
    entry: "/codex/pokemon/gs/smeargle",
    name: "Smeargle",
    number: "#235",
  },
} as const;

const getSubject = (projectName: string) =>
  projectName === "phone" ? subjects.phone : subjects.desktop;

const heart = (page: Page) => page.getByRole("button", { name: "Favourite" });

/* Saves the heart as `on` and waits for the database to have it. */
const setHeart = async (page: Page, on: boolean) => {
  if ((await heart(page).getAttribute("aria-pressed")) === String(on)) return;

  const saved = waitForAction(page);

  await heart(page).click();
  await saved;
};

test.describe("Codex: favourites", () => {
  test.beforeEach(async ({ page }, testInfo) => {
    await page.goto(getSubject(testInfo.project.name).entry, {
      waitUntil: "networkidle",
    });
    await setHeart(page, false);
  });

  test.afterEach(async ({ page }, testInfo) => {
    await page.goto(getSubject(testInfo.project.name).entry, {
      waitUntil: "networkidle",
    });
    await setHeart(page, false);
  });

  test("the heart saves straight away, undoes, and lists the Pokémon in Collection @phone", async ({
    page,
  }, testInfo) => {
    const subject = getSubject(testInfo.project.name);
    const errors: string[] = [];

    page.on("console", (message) => {
      if (message.type() === "error") errors.push(message.text());
    });

    let saved = waitForAction(page);

    await heart(page).click();
    await expect(heart(page)).toHaveAttribute("aria-pressed", "true");
    await saved;
    await expect(
      page.getByText(`${subject.name} added to your favourites`),
    ).toBeVisible(forTheAnswer);

    /* Undo takes it off again, and so does a reload. */
    saved = waitForAction(page);
    await page.getByRole("button", { name: "Undo" }).click();
    await saved;
    await expect(heart(page)).toHaveAttribute("aria-pressed", "false");
    await page.reload({ waitUntil: "networkidle" });
    await expect(heart(page)).toHaveAttribute("aria-pressed", "false");

    /* Hearted again, it waits in Collection's Favourites, opening its entry. */
    await setHeart(page, true);
    await page.reload({ waitUntil: "networkidle" });
    await expect(heart(page)).toHaveAttribute("aria-pressed", "true");

    await page.goto("/mainline/collection?view=favourites", {
      waitUntil: "networkidle",
    });
    const views = page.getByRole("navigation", { name: "Collection views" });

    await expect(
      views.getByRole("link", { name: /^Favourites/ }),
    ).toHaveAttribute("aria-current", "page");
    const card = page
      .getByRole("region", { name: "Your favourites" })
      .getByRole("link", {
        name: new RegExp(
          `^${subject.number} ${subject.name} Not on a team yet`,
        ),
      });

    await expect(card).toHaveAttribute("href", subject.codexHref);
    await expectAccessible(page);

    /* The Pokémon view's toolbar: Show splits used from not yet. */
    const { close, filters } = await openFilters(page);

    await filters.getByRole("button", { name: /^On your teams/ }).click();
    await close();
    await expect(card).toBeHidden();
    await page
      .getByRole("button", { name: /^Reset/ })
      .first()
      .click();
    await expect(card).toBeVisible();
    expect(errors).toEqual([]);
  });
});

test.describe("Codex: favourites signed out", () => {
  test.use({ storageState: signedOut });

  test("the heart asks a visitor to sign in and comes back to the entry", async ({
    page,
  }) => {
    const { entry } = subjects.desktop;

    await page.goto(entry, { waitUntil: "networkidle" });

    await expect(
      page.getByRole("link", { name: "Favourite: sign in to keep favourites" }),
    ).toHaveAttribute("href", `/login?next=${encodeURIComponent(entry)}`);
  });
});
