import { expect, type Page } from "@playwright/test";

import { testPassword } from "./accounts";
import { waitForAction } from "./actions";

/* Creates an account through Sign up; it lands on Welcome. */
export const signUp = async (page: Page, email: string) => {
  await page.goto("/login?mode=sign-up");
  await page.getByRole("textbox", { name: "Email" }).fill(email);
  await page.getByRole("textbox", { name: "Password" }).fill(testPassword);
  await page.getByRole("button", { name: "Create account" }).click();
  /* Creating the account can take a while under load; wait for its page. */
  await page.waitForURL("**/welcome**");
  await expect(
    page.getByRole("heading", { name: "Welcome to Voydex" }),
  ).toBeVisible();
};

/*
 * Leaves Welcome by `Skip for now` or `Continue` once the save that marks it
 * done is written to the device, so a page opened next never finds Welcome
 * still to do.
 */
export const leaveWelcome = async (
  page: Page,
  button: "Continue" | "Skip for now" = "Skip for now",
) => {
  const saved = waitForAction(page);

  await page.getByRole("button", { exact: true, name: button }).click();
  await saved;
  await page.waitForURL("**/mainline");
};

export const logIn = async (
  page: Page,
  email: string,
  password = testPassword,
) => {
  await page.goto("/login");
  await page.getByRole("textbox", { name: "Email" }).fill(email);
  await page.getByRole("textbox", { name: "Password" }).fill(password);
  await page.getByRole("button", { name: "Log in" }).click();
};
