// Simple logger module — keeps output consistent across scripts
export const logger = {
  header: (title, emoji = "🚀") => {
    console.log("\n" + "=".repeat(60));
    console.log(`${emoji}  ${title}`);
    console.log("=".repeat(60) + "\n");
  },
  section: (title, emoji = "🔎") => {
    console.log("\n" + "-".repeat(60));
    console.log(`${emoji}  ${title}`);
    console.log("-".repeat(60) + "\n");
  },
  list: (items) => {
    if (!items || items.length === 0) return;
    items.forEach((i) => console.log(`  • ${i}`));
  },
  sqlBlock: (sql) => {
    console.log("\n-- SQL --\n");
    console.log(sql);
    console.log("\n-- end SQL --\n");
  },
  blank: (lines = 1) => {
    for (let i = 0; i < lines; i++) console.log("");
  },
  confirmation: () => {
    console.log("\n" + "-".repeat(60));
    console.log("⚠️  Confirmation required");
    console.log("-".repeat(60) + "\n");
  },
  success: (msg) => console.log(`✅ ${msg}`),
  failure: (msg) => console.error(`❌ ${msg}`),
};

export function prettyLog(text, opts = {}) {
  const { emoji = "🔧", time } = opts;
  const when = time ? ` (${time}ms)` : "";
  console.log(`${emoji}  ${text}${when}`);
}

export function separator(text = "", opts = {}) {
  const { char = "-", width = 60 } = opts;
  const body = text ? ` ${text} ` : "";
  const fillWidth = Math.max(0, width - body.length);
  const left = Math.floor(fillWidth / 2);
  const right = fillWidth - left;
  console.log(char.repeat(left) + body + char.repeat(right));
}
