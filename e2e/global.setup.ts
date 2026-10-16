import { test as setup } from "@playwright/test";

import { newTestEmail, trainerStatePath } from "./support/accounts";
import { signUp } from "./support/auth";

/* One new trainer per run; the other tests start signed in as them. */
setup("sign up a new trainer", async ({ page }) => {
  await signUp(page, newTestEmail("trainer"));
  await page.context().storageState({ path: trainerStatePath });
});
