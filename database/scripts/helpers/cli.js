import { logger } from "./logger.js";

export function sqlEnabled() {
  const args = process.argv.slice(2);
  if (args.includes("--sql")) return true;
  if (process.env.SHOW_SQL && String(process.env.SHOW_SQL) !== "0") return true;
  return false;
}

export async function promptConfirm(promptText = "Type 'y' to confirm: ") {
  logger.confirmation();
  const readline = await import("readline");
  const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
  });
  const answer = await new Promise((res) =>
    rl.question(promptText, (a) => {
      rl.close();
      res(a);
    })
  );
  return String(answer).trim().toLowerCase() === "y";
}

export async function countdown(seconds = 5, message) {
  if (!seconds || seconds <= 0) return;
  logger.section(
    message ?? `Proceeding in ${seconds} seconds... Press CTRL+C to abort`,
    "❗"
  );
  for (let i = seconds; i > 0; i--) {
    process.stdout.write(`⌛ ${i}... Press CTRL+C to abort` + "\n");
    // eslint-disable-next-line no-await-in-loop
    await new Promise((res) => setTimeout(res, 1000));
  }
  process.stdout.write("\n");
}

export async function chooseFromList(items, opts = {}) {
  const {
    prompt = "Choose an item",
    defaultLatest = true,
    header = true,
  } = opts;
  if (!items || items.length === 0) return null;
  if (header) {
    logger.section(prompt, "📚");
    items.forEach((f, i) => console.log(`  ${i + 1}. ${f}`));
  }
  logger.blank();
  logger.confirmation();
  console.log(
    "Type the number (e.g. 1), filename, 'all' to run all, or press Enter to run the latest."
  );
  const rl = await import("readline");
  const input = await new Promise((res) => {
    const r = rl.createInterface({
      input: process.stdin,
      output: process.stdout,
    });
    r.question("> ", (ans) => {
      r.close();
      res(ans);
    });
  });
  const choice = String(input || "").trim();
  if (!choice) {
    return defaultLatest ? items[items.length - 1] : null;
  }
  if (choice === "all") return "all";
  if (/^\d+$/.test(choice)) {
    const idx = Number(choice) - 1;
    if (idx < 0 || idx >= items.length) return null;
    return items[idx];
  }
  if (items.includes(choice)) return choice;
  return null;
}

export function getFlag(name) {
  const args = process.argv.slice(2);
  return args.includes(name);
}

export async function confirmOrExit(
  promptText = "Type 'y' to confirm: ",
  opts = {}
) {
  const { envVar, flag } = opts;
  if (flag && getFlag(flag)) return true;
  if (envVar && process.env[envVar] && String(process.env[envVar]) !== "0")
    return true;
  const ok = await promptConfirm(promptText);
  if (!ok) {
    logger.failure("Aborted by user");
    process.exit(1);
  }
  return true;
}
