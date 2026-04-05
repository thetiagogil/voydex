/**
 * Logger — consistent colored output for all database scripts.
 */

const C = {
  RESET: "\x1b[0m",
  BRIGHT: "\x1b[1m",
  DIM: "\x1b[2m",
  GREEN: "\x1b[32m",
  RED: "\x1b[31m",
  YELLOW: "\x1b[33m",
  BLUE: "\x1b[34m",
  CYAN: "\x1b[36m",
};

export const logger = {
  header: (title, emoji = "🚀") => {
    console.log("\n" + "=".repeat(60));
    console.log(`${emoji}  ${C.BRIGHT}${title}${C.RESET}`);
    console.log("=".repeat(60) + "\n");
  },

  section: (title, emoji = "📋") => {
    console.log("\n" + "-".repeat(60));
    console.log(`${emoji}  ${title}`);
    console.log("-".repeat(60) + "\n");
  },

  list: (items, { bullet = "•", indent = 2 } = {}) => {
    if (!items?.length) return;
    const pad = " ".repeat(indent);
    items.forEach((item) => console.log(`${pad}${bullet} ${item}`));
  },

  keyValue: (keyOrPairs, valueOrOptions, maybeOptions) => {
    const pad = "  ";
    const sep = ": ";

    // Single key-value: keyValue("key", "value")
    if (
      typeof keyOrPairs === "string" &&
      valueOrOptions !== undefined &&
      (typeof valueOrOptions !== "object" ||
        valueOrOptions === null ||
        maybeOptions !== undefined)
    ) {
      console.log(
        `${pad}${C.CYAN}${keyOrPairs}${C.RESET}${sep}${valueOrOptions}`,
      );
      return;
    }

    // Object of pairs: keyValue({ key1: val1, key2: val2 })
    const pairs = keyOrPairs;
    if (!pairs || typeof pairs !== "object" || Object.keys(pairs).length === 0)
      return;
    Object.entries(pairs).forEach(([k, v]) => {
      console.log(`${pad}${C.CYAN}${k}${C.RESET}${sep}${v}`);
    });
  },

  sqlBlock: (sql) => {
    console.log(`\n${C.DIM}-- SQL --${C.RESET}\n${C.BLUE}${sql}${C.RESET}\n`);
  },

  success: (msg) => console.log(`${C.GREEN}✅ ${msg}${C.RESET}`),
  failure: (msg) => console.error(`${C.RED}❌ ${msg}${C.RESET}`),
  warning: (msg) => console.log(`${C.YELLOW}⚠️  ${msg}${C.RESET}`),
  info: (msg) => console.log(`${C.CYAN}ℹ️  ${msg}${C.RESET}`),

  progress: (current, total, item = "") => {
    const pct = Math.round((current / total) * 100);
    const filled = Math.floor(pct / 5);
    const bar = "█".repeat(filled) + "░".repeat(20 - filled);
    console.log(
      `  [${bar}] ${pct}% (${current}/${total})${item ? ` ${item}` : ""}`,
    );
  },

  blank: (n = 1) => {
    for (let i = 0; i < n; i++) console.log("");
  },
  separator: (char = "-", width = 60) => console.log(char.repeat(width)),

  timestamped: (msg, emoji = "🕐") => {
    const ts = new Date().toISOString().replace("T", " ").split(".")[0];
    console.log(`${emoji} [${C.DIM}${ts}${C.RESET}] ${msg}`);
  },

  withDuration: (msg, ms, emoji = "⏱️") => {
    const dur = ms < 1000 ? `${ms}ms` : `${(ms / 1000).toFixed(2)}s`;
    console.log(`${emoji} ${msg} ${C.DIM}(${dur})${C.RESET}`);
  },
};

export function createProgressReporter(total) {
  let current = 0;
  return {
    next: (item = "") => {
      current++;
      logger.progress(current, total, item);
    },
    complete: () => logger.success(`Completed ${total} items`),
  };
}

export async function withTiming(operation, label) {
  const start = Date.now();
  try {
    const result = await operation();
    const duration = Date.now() - start;
    logger.withDuration(label, duration, "✅");
    return result;
  } catch (err) {
    const duration = Date.now() - start;
    logger.withDuration(`${label} (failed)`, duration, "❌");
    throw err;
  }
}
