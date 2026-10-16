import { defineConfig, devices } from "@playwright/test";

import { trainerStatePath } from "./e2e/support/accounts";

const isCI = Boolean(process.env.CI);
const port = 3000;
const baseURL = `http://localhost:${port}`;

/*
 * Browser tests against the app and the local seeded database. On a Mac they
 * reuse the dev server already on port 3000 (or start one); on GitHub they
 * run the production build the workflow made. See docs/app/verification.md.
 */
export default defineConfig({
  testDir: "./e2e",
  outputDir: "./e2e/.results",
  fullyParallel: true,
  forbidOnly: isCI,
  retries: isCI ? 1 : 0,
  workers: isCI ? 2 : undefined,
  reporter: isCI
    ? [["github"], ["html", { open: "never", outputFolder: "e2e/.report" }]]
    : [["list"], ["html", { open: "never", outputFolder: "e2e/.report" }]],
  expect: { timeout: 10_000 },
  use: {
    baseURL,
    trace: "retain-on-failure",
    screenshot: "only-on-failure",
  },
  projects: [
    {
      name: "setup",
      testMatch: /global\.setup\.ts/,
      use: { ...devices["Desktop Chrome"] },
    },
    {
      name: "desktop",
      dependencies: ["setup"],
      use: { ...devices["Desktop Chrome"], storageState: trainerStatePath },
    },
    {
      /* A few key paths at phone width; tag a test `@phone` to include it. */
      name: "phone",
      dependencies: ["setup"],
      grep: /@phone/,
      use: { ...devices["Pixel 7"], storageState: trainerStatePath },
    },
  ],
  webServer: {
    command: isCI ? "npm run start" : "npm run dev",
    url: baseURL,
    reuseExistingServer: !isCI,
    timeout: 180_000,
  },
});
