import { defineConfig, devices } from "@playwright/test";

const isCI = Boolean(process.env.CI);
/* `E2E_PORT` runs the tests beside a dev server already on 3000. */
const port = Number(process.env.E2E_PORT ?? 3000);
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
  /* On GitHub, stop once several tests fail: something is broken for all. */
  maxFailures: isCI ? 5 : undefined,
  retries: isCI ? 1 : 0,
  /* The dev server compiles pages on first visit, so keep the load modest. */
  workers: isCI ? 2 : 3,
  timeout: 60_000,
  reporter: isCI
    ? [["github"], ["html", { open: "never", outputFolder: "e2e/.report" }]]
    : [["list"], ["html", { open: "never", outputFolder: "e2e/.report" }]],
  expect: { timeout: 10_000 },
  use: {
    baseURL,
    trace: "retain-on-failure",
    screenshot: "only-on-failure",
  },
  /*
   * Every test starts signed out, on a new device: the app needs no
   * account, and a signed-in device syncs with its account, so tests that
   * share one would mix their data. A test that needs an account signs up
   * its own.
   */
  projects: [
    {
      name: "desktop",
      use: { ...devices["Desktop Chrome"] },
    },
    {
      /* A few key paths at phone width; tag a test `@phone` to include it. */
      name: "phone",
      grep: /@phone/,
      use: { ...devices["Pixel 7"] },
    },
  ],
  webServer: [
    {
      command: `npm run ${isCI ? "start" : "dev"} -- --port ${port}`,
      url: baseURL,
      reuseExistingServer: !isCI,
      timeout: 180_000,
    },
    /* On GitHub the images come from a local stand-in, not the real site. */
    ...(isCI
      ? [
          {
            command: "node e2e/support/asset-stub-server.mjs",
            url: "http://127.0.0.1:3999",
            reuseExistingServer: false,
          },
        ]
      : []),
  ],
});
