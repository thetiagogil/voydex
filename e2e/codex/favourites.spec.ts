import { expect, test, type Page } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { signedOut } from "../support/accounts";
import { forTheAnswer, waitForAction } from "../support/actions";

/*
 * Spinda: no other test touches it, and the account is shared, so each test
 * leaves its heart off.
 */
const entry = "/codex/pokemon/rs/spinda";

const heart = (page: Page) => page.getByRole("button", { name: "Favourite" });

/* Saves the heart as `on` and waits for the database to have it. */
const setHeart = async (page: Page, on: boolean) => {
  if ((await heart(page).getAttribute("aria-pressed")) === String(on)) return;

  const saved = waitForAction(page);

  await heart(page).click();
  await saved;
};

test.describe("Codex: favourites", () => {
  test.beforeEach(async ({ page }) => {
    await page.goto(entry, { waitUntil: "networkidle" });
    await setHeart(page, false);
  });

  test.afterEach(async ({ page }) => {
    await page.goto(entry, { waitUntil: "networkidle" });
    await setHeart(page, false);
  });

  test("the heart saves straight away, undoes, and lists the Pokémon in Collection @phone", async ({
    page,
  }) => {
    const errors: string[] = [];

    page.on("console", (message) => {
      if (message.type() === "error") errors.push(message.text());
    });

    let saved = waitForAction(page);

    await heart(page).click();
    await expect(heart(page)).toHaveAttribute("aria-pressed", "true");
    await saved;
    await expect(page.getByText("Spinda added to your favourites")).toBeVisible(
      forTheAnswer,
    );

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
    const spinda = page
      .getByRole("region", { name: "Your favourites" })
      .getByRole("link", { name: /^#327 Spinda Not on a team yet/ });

    await expect(spinda).toHaveAttribute("href", "/codex/pokemon/spinda");
    await expectAccessible(page);
    expect(errors).toEqual([]);
  });
});

test.describe("Codex: favourites signed out", () => {
  test.use({ storageState: signedOut });

  test("the heart asks a visitor to sign in and comes back to the entry", async ({
    page,
  }) => {
    await page.goto(entry, { waitUntil: "networkidle" });

    await expect(
      page.getByRole("link", { name: "Favourite: sign in to keep favourites" }),
    ).toHaveAttribute("href", `/login?next=${encodeURIComponent(entry)}`);
  });
});
