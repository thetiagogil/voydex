/**
 * CLI Utility
 *
 * Interactive prompts and command-line flag handling
 */

import { logger } from "./logger.js";

/**
 * Check if SQL output should be shown
 */
export function sqlEnabled() {
  const args = process.argv.slice(2);
  if (args.includes("--sql")) return true;
  if (process.env.SHOW_SQL && String(process.env.SHOW_SQL) !== "0") return true;
  return false;
}

/**
 * Check if a flag is present in command line args
 */
export function getFlag(name) {
  const args = process.argv.slice(2);
  return args.includes(name);
}

/**
 * Check if running in force mode (skip confirmations)
 */
export function isForceMode() {
  return getFlag("--force") || getFlag("-f");
}

/**
 * Prompt user for yes/no confirmation
 */
export async function promptConfirm(promptText = "Type 'y' to confirm: ") {
  const readline = await import("readline");
  const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
  });

  const answer = await new Promise((resolve) => {
    rl.question(`\n${promptText}`, (a) => {
      rl.close();
      resolve(a);
    });
  });

  return String(answer).trim().toLowerCase() === "y";
}

/**
 * Prompt user for confirmation or exit if declined
 */
export async function confirmOrExit(
  promptText = "Type 'y' to confirm: ",
  options = {},
) {
  const { envVar, flag } = options;

  // Check for auto-confirm via flag
  if (flag && getFlag(flag)) {
    logger.info("Auto-confirmed via flag");
    return true;
  }

  // Check for auto-confirm via environment variable
  if (envVar && process.env[envVar] && String(process.env[envVar]) !== "0") {
    logger.info("Auto-confirmed via environment variable");
    return true;
  }

  // Check for force mode
  if (isForceMode()) {
    logger.info("Auto-confirmed via --force flag");
    return true;
  }

  // Prompt user
  const confirmed = await promptConfirm(promptText);
  if (!confirmed) {
    logger.failure("Aborted by user");
    process.exit(1);
  }

  return true;
}

/**
 * Display countdown before proceeding
 */
export async function countdown(seconds = 5, message) {
  if (!seconds || seconds <= 0) return;

  const msg =
    message ?? `Proceeding in ${seconds} seconds... Press CTRL+C to abort`;
  logger.warning(msg);

  for (let i = seconds; i > 0; i--) {
    process.stdout.write(`  ⌛ ${i}... Press CTRL+C to abort\n`);
    // eslint-disable-next-line no-await-in-loop
    await new Promise((resolve) => setTimeout(resolve, 1000));
  }

  logger.blank();
}

/**
 * Let user choose from a list of items
 */
export async function chooseFromList(items, options = {}) {
  const {
    prompt = "Choose an item",
    defaultLatest = true,
    showHeader = true,
  } = options;

  if (!items || items.length === 0) {
    logger.warning("No items to choose from");
    return null;
  }

  // Display items
  if (showHeader) {
    logger.section(prompt, "📚");
    items.forEach((item, index) => {
      console.log(`  ${index + 1}. ${item}`);
    });
    logger.blank();
  }

  // Prompt for selection
  logger.info(
    "Type the number (e.g. 1), filename, 'all', or press Enter for latest",
  );

  const readline = await import("readline");
  const input = await new Promise((resolve) => {
    const rl = readline.createInterface({
      input: process.stdin,
      output: process.stdout,
    });
    rl.question("> ", (answer) => {
      rl.close();
      resolve(answer);
    });
  });

  const choice = String(input || "").trim();

  // Empty input - return default
  if (!choice) {
    return defaultLatest ? items[items.length - 1] : null;
  }

  // "all" keyword
  if (choice === "all") {
    return "all";
  }

  // Numeric choice
  if (/^\d+$/.test(choice)) {
    const index = Number(choice) - 1;
    if (index < 0 || index >= items.length) {
      logger.failure(`Invalid selection: ${choice}`);
      return null;
    }
    return items[index];
  }

  // Direct filename match
  if (items.includes(choice)) {
    return choice;
  }

  logger.failure(`Invalid selection: ${choice}`);
  return null;
}

/**
 * Display a danger warning for destructive operations
 */
export function showDangerWarning(operationName, targets = []) {
  logger.blank();
  logger.separator("=", 60);
  console.log(
    `${"\x1b[31m"}⚠️  DANGER: ${operationName.toUpperCase()}${"\x1b[0m"}`,
  );
  logger.separator("=", 60);

  if (targets.length > 0) {
    logger.blank();
    logger.list(targets, { bullet: "🔥" });
  }

  logger.blank();
  logger.separator("=", 60);
  logger.blank();
}
