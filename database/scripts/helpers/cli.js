/**
 * CLI utility — flag parsing, interactive prompts, confirmations.
 */

import { logger } from "./logger.js";

// ── Flags ────────────────────────────────────────────

export function getFlag(name) {
  return process.argv.slice(2).includes(name);
}

export function isForceMode() {
  return getFlag("--force") || getFlag("-f");
}

export function sqlEnabled() {
  if (getFlag("--sql")) return true;
  if (process.env.SHOW_SQL && String(process.env.SHOW_SQL) !== "0") return true;
  return false;
}

// ── Prompts ──────────────────────────────────────────

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

export async function confirmOrExit(
  promptText = "Type 'y' to confirm: ",
  options = {},
) {
  const { envVar, flag } = options;

  if (flag && getFlag(flag)) {
    logger.info("Auto-confirmed via flag");
    return true;
  }
  if (envVar && process.env[envVar] && String(process.env[envVar]) !== "0") {
    logger.info("Auto-confirmed via env var");
    return true;
  }
  if (isForceMode()) {
    logger.info("Auto-confirmed via --force");
    return true;
  }

  const confirmed = await promptConfirm(promptText);
  if (!confirmed) {
    logger.failure("Aborted by user");
    process.exit(1);
  }
  return true;
}

export async function countdown(seconds = 5, message) {
  if (!seconds || seconds <= 0) return;
  logger.warning(
    message ?? `Proceeding in ${seconds}s... Press CTRL+C to abort`,
  );
  for (let i = seconds; i > 0; i--) {
    process.stdout.write(`  ⌛ ${i}...\n`);
    await new Promise((resolve) => setTimeout(resolve, 1000));
  }
  logger.blank();
}

// ── Selection ────────────────────────────────────────

export async function chooseFromList(items, options = {}) {
  const {
    prompt = "Choose an item",
    defaultLatest = true,
    showHeader = true,
  } = options;

  if (!items?.length) {
    logger.warning("No items to choose from");
    return null;
  }

  if (showHeader) {
    logger.section(prompt, "📚");
    items.forEach((item, i) => console.log(`  ${i + 1}. ${item}`));
    logger.blank();
  }

  logger.info("Type number, filename, 'all', or Enter for latest");

  const readline = await import("readline");
  const input = await new Promise((resolve) => {
    const rl = readline.createInterface({
      input: process.stdin,
      output: process.stdout,
    });
    rl.question("> ", (a) => {
      rl.close();
      resolve(a);
    });
  });

  const choice = String(input || "").trim();
  if (!choice) return defaultLatest ? items[items.length - 1] : null;
  if (choice === "all") return "all";

  if (/^\d+$/.test(choice)) {
    const idx = Number(choice) - 1;
    if (idx < 0 || idx >= items.length) {
      logger.failure(`Invalid: ${choice}`);
      return null;
    }
    return items[idx];
  }

  if (items.includes(choice)) return choice;
  logger.failure(`Invalid: ${choice}`);
  return null;
}

// ── Danger Warning ───────────────────────────────────

export function showDangerWarning(operationName, targets = []) {
  logger.blank();
  logger.separator("=", 60);
  console.log(`\x1b[31m⚠️  DANGER: ${operationName.toUpperCase()}\x1b[0m`);
  logger.separator("=", 60);
  if (targets.length) {
    logger.blank();
    logger.list(targets, { bullet: "🔥" });
  }
  logger.blank();
  logger.separator("=", 60);
  logger.blank();
}
