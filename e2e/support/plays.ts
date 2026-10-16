import { expect, type Page } from "@playwright/test";

type NewPlay = {
  /* The game as New Play lists it, such as "Pokémon Red, 1996". */
  game: string;
  name: string;
  /* A first partner the game offers, or null to decide later. */
  partner: string | null;
};

/* Starts a Play through New Play and returns its id, on its Overview. */
export const startPlay = async (
  page: Page,
  { game, name, partner }: NewPlay,
) => {
  await page.goto("/mainline?new=1");
  const dialog = page.getByRole("dialog", { name: "New Play" });

  await dialog.getByRole("option", { name: game }).click();
  await dialog.getByRole("button", { name: "Next" }).click();

  if (partner) {
    await dialog
      .getByRole("button", { name: `${partner} is my partner` })
      .click();
    await dialog.getByRole("button", { name: "Next" }).click();
  } else {
    await dialog.getByRole("button", { name: "Decide later" }).click();
  }

  await dialog.getByRole("textbox", { name: "Play name" }).fill(name);
  await dialog.getByRole("button", { name: /^Start/ }).click();

  await page.waitForURL(/\/mainline\/plays\/[0-9a-f-]{36}$/);
  await expect(page.getByRole("heading", { level: 1, name })).toBeVisible();

  return page.url().split("/").at(-1)!;
};

/* A name no other test's Play shares. */
export const uniquePlayName = (label: string) =>
  `${label} ${Math.random().toString(36).slice(2, 7)}`;
