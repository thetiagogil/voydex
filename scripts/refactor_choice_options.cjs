const fs = require("fs");
const path = require("path");

// Build id -> {vg, game, slug} mapping
const mapLines = fs
  .readFileSync(path.join(__dirname, "item_id_map.txt"), "utf8")
  .trim()
  .split("\n");
const idMap = {};
for (const line of mapLines) {
  const [id, vg, game, slug] = line.trim().split("|");
  idMap[id] = { vg, game, slug };
}
console.log("Loaded", Object.keys(idMap).length, "item mappings");

const base = path.join(
  __dirname,
  "..",
  "database",
  "seeds",
  "approved",
  "13_progress",
  "007_item_choice_options",
);
const files = fs
  .readdirSync(base)
  .filter((f) => f.endsWith(".sql"))
  .sort();
console.log("Found", files.length, "choice option files");

for (const file of files) {
  const fp = path.join(base, file);
  let content = fs.readFileSync(fp, "utf8");

  // 1. Remove 'id, ' from column list
  content = content.replace(
    "progress.item_choice_options (id, progress_item_id,",
    "progress.item_choice_options (progress_item_id,",
  );

  // 2. Fix each VALUES row: remove old_id, replace progress_item_id with subquery
  const pattern = /^(\s+)\((\d+),\s*(\d+),\s*(.+)$/gm;
  content = content.replace(pattern, (match, indent, oldId, itemId, rest) => {
    const item = idMap[itemId];
    if (!item) {
      console.error("WARNING: No mapping for item ID", itemId, "in file", file);
      return indent + "(" + itemId + ", " + rest;
    }
    const gameClause = item.game === "NULL" ? "IS NULL" : "= " + item.game;
    const subquery = `(SELECT id FROM progress.items WHERE version_group_id = ${item.vg} AND game_id ${gameClause} AND slug = '${item.slug}')`;
    return `${indent}(${subquery}, ${rest}`;
  });

  fs.writeFileSync(fp, content, "utf8");
  console.log("Done:", file);
}
