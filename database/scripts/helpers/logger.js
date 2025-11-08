/**
 * Logger Utility
 *
 * Consistent, professional logging across all database scripts
 */

const COLORS = {
  RESET: "\x1b[0m",
  BRIGHT: "\x1b[1m",
  DIM: "\x1b[2m",
  GREEN: "\x1b[32m",
  RED: "\x1b[31m",
  YELLOW: "\x1b[33m",
  BLUE: "\x1b[34m",
  CYAN: "\x1b[36m",
};

/**
 * Main logger object with consistent formatting
 */
export const logger = {
  /**
   * Print major section header
   */
  header: (title, emoji = "🚀") => {
    console.log("\n" + "=".repeat(60));
    console.log(`${emoji}  ${COLORS.BRIGHT}${title}${COLORS.RESET}`);
    console.log("=".repeat(60) + "\n");
  },

  /**
   * Print subsection header
   */
  section: (title, emoji = "📋") => {
    console.log("\n" + "-".repeat(60));
    console.log(`${emoji}  ${title}`);
    console.log("-".repeat(60) + "\n");
  },

  /**
   * Print bulleted list
   */
  list: (items, options = {}) => {
    if (!items || items.length === 0) return;
    const { bullet = "•", indent = 2 } = options;
    const prefix = " ".repeat(indent);
    items.forEach((item) => console.log(`${prefix}${bullet} ${item}`));
  },

  /**
   * Print key-value pairs
   */
  keyValue: (pairs, options = {}) => {
    if (!pairs || Object.keys(pairs).length === 0) return;
    const { indent = 2, separator = ": " } = options;
    const prefix = " ".repeat(indent);
    Object.entries(pairs).forEach(([key, value]) => {
      console.log(
        `${prefix}${COLORS.CYAN}${key}${COLORS.RESET}${separator}${value}`,
      );
    });
  },

  /**
   * Print SQL block (with syntax highlighting hint)
   */
  sqlBlock: (sql) => {
    console.log(`\n${COLORS.DIM}-- SQL Statement --${COLORS.RESET}\n`);
    console.log(COLORS.BLUE + sql + COLORS.RESET);
    console.log(`\n${COLORS.DIM}-- End SQL --${COLORS.RESET}\n`);
  },

  /**
   * Print success message
   */
  success: (msg) => {
    console.log(`${COLORS.GREEN}✅ ${msg}${COLORS.RESET}`);
  },

  /**
   * Print failure/error message
   */
  failure: (msg) => {
    console.error(`${COLORS.RED}❌ ${msg}${COLORS.RESET}`);
  },

  /**
   * Print warning message
   */
  warning: (msg) => {
    console.log(`${COLORS.YELLOW}⚠️  ${msg}${COLORS.RESET}`);
  },

  /**
   * Print info message
   */
  info: (msg) => {
    console.log(`${COLORS.CYAN}ℹ️  ${msg}${COLORS.RESET}`);
  },

  /**
   * Print progress indicator
   */
  progress: (current, total, item = "") => {
    const percentage = Math.round((current / total) * 100);
    const bar =
      "█".repeat(Math.floor(percentage / 5)) +
      "░".repeat(20 - Math.floor(percentage / 5));
    const status = item ? ` ${item}` : "";
    console.log(`  [${bar}] ${percentage}% (${current}/${total})${status}`);
  },

  /**
   * Print blank line(s)
   */
  blank: (lines = 1) => {
    for (let i = 0; i < lines; i++) console.log("");
  },

  /**
   * Print separator line
   */
  separator: (char = "-", width = 60) => {
    console.log(char.repeat(width));
  },

  /**
   * Print with timestamp
   */
  timestamped: (msg, emoji = "🕐") => {
    const timestamp = new Date().toISOString().replace("T", " ").split(".")[0];
    console.log(`${emoji} [${COLORS.DIM}${timestamp}${COLORS.RESET}] ${msg}`);
  },

  /**
   * Print with duration
   */
  withDuration: (msg, durationMs, emoji = "⏱️") => {
    const duration =
      durationMs < 1000
        ? `${durationMs}ms`
        : `${(durationMs / 1000).toFixed(2)}s`;
    console.log(`${emoji} ${msg} ${COLORS.DIM}(${duration})${COLORS.RESET}`);
  },
};

/**
 * Create a progress reporter function
 */
export function createProgressReporter(total) {
  let current = 0;
  return {
    next: (item = "") => {
      current++;
      logger.progress(current, total, item);
    },
    complete: () => {
      logger.success(`Completed ${total} items`);
    },
  };
}

/**
 * Wrapper for timing operations
 */
export async function withTiming(operation, label) {
  const start = Date.now();
  try {
    const result = await operation();
    const duration = Date.now() - start;
    logger.withDuration(label, duration, "✅");
    return { success: true, result, duration };
  } catch (err) {
    const duration = Date.now() - start;
    logger.withDuration(`${label} (failed)`, duration, "❌");
    return { success: false, error: err, duration };
  }
}
