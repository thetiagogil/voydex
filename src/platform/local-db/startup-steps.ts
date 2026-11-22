/*
 * The loading between opening the app and showing it, as one list of steps
 * both of its screens share (the device opening, then, right after Log in,
 * the account opening), so it reads as one progress bar from start to
 * finish. Each step names what it does.
 */
export type StartupStepKey =
  "account" | "applying" | "device" | "games" | "pages";

export const startupStepLabels: Record<StartupStepKey, string> = {
  account: "Reading your account",
  applying: "Putting your Plays on this device",
  device: "Opening this device",
  games: "Downloading game data",
  pages: "Getting your pages ready",
};

/*
 * The steps, in order: with an account just logged in, its opening sits
 * between the device and the pages; otherwise the device, then the pages.
 */
export const getStartupSteps = (withAccount: boolean): StartupStepKey[] =>
  withAccount
    ? ["device", "account", "games", "applying", "pages"]
    : ["device", "pages"];

/* The title over the bar, the same on both screens. */
export const getStartupTitle = (withAccount: boolean) =>
  withAccount ? "Bringing your account to this device" : "Opening your Plays";
