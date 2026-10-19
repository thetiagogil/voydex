import { createHash } from "node:crypto";
import { existsSync, readFileSync } from "node:fs";
import path from "node:path";
import {
  collectDirectories as walkDirectories,
  collectFiles as walkFiles,
} from "../files.mjs";
import { projectRoot, schemaRoot } from "./context.mjs";
import {
  allowedStats,
  deferredNonPlaythroughAbilitySlugs,
  expectedAbilityAttributeChangeKeys,
  expectedAbilityGenerationRanges,
  expectedSlugs,
  generatedIdTables,
  productDescriptionTables,
  snakeSlugTables,
} from "./expectations.mjs";

export { walkDirectories, walkFiles };

export function stripLineComments(sql) {
  return sql
    .split(/\r?\n/)
    .filter((line) => !line.trimStart().startsWith("--"))
    .join("\n");
}

export function assertPokedexEntryHelperComments(context, sql, filePath) {
  if (!/INSERT\s+INTO\s+reference\.pokedex_entries\b/i.test(sql)) return;
  const lines = sql.split(/\r?\n/);
  for (let index = 0; index < lines.length; index += 1) {
    const line = lines[index];
    if (
      !/^\s*\(\d+,\s*\d+,\s*NULL,\s*\d+(?:,\s*(?:TRUE|FALSE))?\)[,;]?\s*$/i.test(
        line,
      )
    )
      continue;
    let previousIndex = index - 1;
    while (previousIndex >= 0 && lines[previousIndex].trim() === "") {
      previousIndex -= 1;
    }
    const previousLine = previousIndex >= 0 ? lines[previousIndex] : "";
    if (!/^\s*-- #\d{3} .+/.test(previousLine)) {
      context.errors.push(
        `${relative(filePath)}: Pokedex entry row must have a preceding "-- #001 Pokémon" helper comment.`,
      );
    }
  }
}

export function assertSchemaSecurity(context) {
  if (!existsSync(schemaRoot)) return;
  const schemaFiles = walkFiles(schemaRoot).filter((filePath) =>
    filePath.endsWith(".sql"),
  );
  const referenceTableFiles = schemaFiles.filter((filePath) =>
    relative(filePath).startsWith("schema/02_reference/01_tables/"),
  );
  const policyFiles = schemaFiles.filter((filePath) =>
    relative(filePath).startsWith("schema/02_reference/02_policies/"),
  );
  const viewFiles = schemaFiles.filter((filePath) =>
    relative(filePath).startsWith("schema/06_views/01_views/"),
  );
  const referenceTableNames = [];
  for (const filePath of referenceTableFiles) {
    const sql = readFileSync(filePath, "utf8");
    for (const match of sql.matchAll(
      /CREATE\s+TABLE\s+reference\.([a-z_][a-z0-9_]*)\s*\(/gi,
    )) {
      referenceTableNames.push(match[1]);
    }
  }
  const policySql = policyFiles
    .map((filePath) => readFileSync(filePath, "utf8"))
    .join("\n");
  for (const tableName of referenceTableNames.toSorted()) {
    const qualifiedName = "reference." + tableName;
    const escapedName = qualifiedName.replace(".", "\\.");
    if (
      !new RegExp(
        "ALTER\\s+TABLE\\s+" +
          escapedName +
          "\\s+ENABLE\\s+ROW\\s+LEVEL\\s+SECURITY",
        "i",
      ).test(policySql)
    ) {
      context.errors.push(
        qualifiedName +
          ": reference table must enable row-level security in reference policy files.",
      );
    }
    if (
      !new RegExp(
        "REVOKE\\s+ALL\\s+ON\\s+TABLE\\s+" +
          escapedName +
          "\\s+FROM\\s+anon,\\s*authenticated",
        "i",
      ).test(policySql)
    ) {
      context.errors.push(
        qualifiedName +
          ": reference table must revoke all client privileges before granting read access.",
      );
    }
    if (
      !new RegExp(
        "GRANT\\s+SELECT\\s+ON\\s+TABLE\\s+" +
          escapedName +
          "\\s+TO\\s+anon,\\s*authenticated",
        "i",
      ).test(policySql)
    ) {
      context.errors.push(
        qualifiedName +
          ": reference table must grant only SELECT to anon/authenticated.",
      );
    }
    if (
      !new RegExp(
        "GRANT\\s+ALL\\s+ON\\s+TABLE\\s+" +
          escapedName +
          "\\s+TO\\s+service_role",
        "i",
      ).test(policySql)
    ) {
      context.errors.push(
        qualifiedName +
          ": reference table must grant full maintenance access to service_role.",
      );
    }
    if (
      !new RegExp(
        "CREATE\\s+POLICY\\s+[a-z0-9_]+_read_all\\s+ON\\s+" +
          escapedName +
          "\\s+FOR\\s+SELECT\\s+TO\\s+anon,\\s*authenticated\\s+USING\\s*\\(true\\)",
        "i",
      ).test(policySql)
    ) {
      context.errors.push(
        qualifiedName +
          ": reference table must have a read_all SELECT policy for client roles.",
      );
    }
  }
  const unsafeClientGrantPattern =
    /GRANT\s+(?!SELECT\b)(INSERT|UPDATE|DELETE|TRUNCATE|REFERENCES|TRIGGER|ALL|[A-Z,\s]+)\s+ON\s+TABLE\s+reference\.[a-z_][a-z0-9_]*\s+TO\s+(?:anon|authenticated|anon,\s*authenticated|authenticated,\s*anon)/gi;
  for (const match of policySql.matchAll(unsafeClientGrantPattern)) {
    context.errors.push(
      "reference policies contain unsafe client table grant: " +
        match[0].replace(/\s+/g, " ") +
        ".",
    );
  }
  for (const filePath of viewFiles) {
    const sql = readFileSync(filePath, "utf8");
    if (
      !/CREATE\s+VIEW\s+views\.[a-z_][a-z0-9_]*\s+WITH\s*\(\s*security_invoker\s*=\s*true\s*\)/i.test(
        sql,
      )
    ) {
      context.errors.push(
        relative(filePath) +
          ": views must use WITH (security_invoker = true) so underlying RLS applies.",
      );
    }
    if (/SECURITY\s+DEFINER/i.test(sql)) {
      context.errors.push(
        relative(filePath) + ": views must not use SECURITY DEFINER.",
      );
    }
  }
}

export function assertReferenceHelperComments(context, sql, filePath) {
  const relativePath = relative(filePath);
  if (
    !/^seeds\/02_reference\/(?:01_base|02_mechanics|03_methods|04_abilities|05_items|06_pokemon|07_moves|08_pokedex|09_evolutions|10_availability|11_learnsets)\//.test(
      relativePath,
    )
  ) {
    return;
  }
  const lines = sql.split(/\r?\n/);
  for (let index = 0; index < lines.length; index += 1) {
    const line = lines[index];
    if (!/^\s*\(.+\)[,;]?\s*$/.test(line)) continue;
    let previousIndex = index - 1;
    while (previousIndex >= 0 && lines[previousIndex].trim() === "") {
      previousIndex -= 1;
    }
    const previousLine = previousIndex >= 0 ? lines[previousIndex] : "";
    if (!/^\s*--\s+\S+/.test(previousLine)) {
      context.errors.push(
        `${relativePath}: seed tuple row must have a preceding helper comment.`,
      );
    }
  }
}

export function splitTupleValues(context, rawTuple) {
  const values = [];
  let token = "";
  let inString = false;
  for (let index = 0; index < rawTuple.length; index += 1) {
    const char = rawTuple[index];
    const next = rawTuple[index + 1];
    if (char === "'") {
      token += char;
      if (inString && next === "'") {
        token += next;
        index += 1;
      } else {
        inString = !inString;
      }
      continue;
    }
    if (char === "," && !inString) {
      values.push(parseValue(context, token.trim()));
      token = "";
      continue;
    }
    token += char;
  }
  if (token.trim().length > 0) {
    values.push(parseValue(context, token.trim()));
  }
  return values;
}

export function parseValue(context, rawValue) {
  if (/^NULL$/i.test(rawValue)) return null;
  if (/^true$/i.test(rawValue)) return true;
  if (/^false$/i.test(rawValue)) return false;
  if (/^-?\d+$/.test(rawValue)) return Number(rawValue);
  if (rawValue.startsWith("'") && rawValue.endsWith("'")) {
    return rawValue.slice(1, -1).replace(/''/g, "'");
  }
  context.errors.push(`Unsupported SQL value token: ${rawValue}`);
  return rawValue;
}

export function splitTuples(context, valuesBlock) {
  const tuples = [];
  let tuple = "";
  let depth = 0;
  let inString = false;
  for (let index = 0; index < valuesBlock.length; index += 1) {
    const char = valuesBlock[index];
    const next = valuesBlock[index + 1];
    if (char === "'") {
      if (depth > 0) tuple += char;
      if (inString && next === "'") {
        if (depth > 0) tuple += next;
        index += 1;
      } else {
        inString = !inString;
      }
      continue;
    }
    if (!inString && char === "(") {
      if (depth > 0) tuple += char;
      depth += 1;
      continue;
    }
    if (!inString && char === ")") {
      depth -= 1;
      if (depth === 0) {
        tuples.push(splitTupleValues(context, tuple));
        tuple = "";
      } else {
        tuple += char;
      }
      continue;
    }
    if (depth > 0) tuple += char;
  }
  if (depth !== 0 || inString) {
    context.errors.push(
      "Unbalanced tuple or string while parsing seed VALUES block.",
    );
  }
  return tuples;
}

export function parseInserts(context, sql, filePath) {
  const inserts = [];
  const insertStartPattern =
    /INSERT\s+INTO\s+((?:reference|tracking|gameplay|planning)\.[a-z_][a-z0-9_]*)\s*\(([^)]*)\)\s*VALUES\s*/gi;
  for (const match of sql.matchAll(insertStartPattern)) {
    const table = match[1].toLowerCase();
    const columns = match[2]
      .split(",")
      .map((column) => column.trim().toLowerCase());
    let valuesEnd = match.index + match[0].length;
    let inString = false;
    while (valuesEnd < sql.length) {
      const char = sql[valuesEnd];
      const next = sql[valuesEnd + 1];
      if (char === "'") {
        if (inString && next === "'") {
          valuesEnd += 2;
          continue;
        }
        inString = !inString;
      }
      if (!inString && char === ";") break;
      valuesEnd += 1;
    }
    if (valuesEnd >= sql.length) {
      context.errors.push(
        `${relative(filePath)}: unterminated INSERT statement for ${table}.`,
      );
      continue;
    }
    const tuples = splitTuples(
      context,
      sql.slice(match.index + match[0].length, valuesEnd),
    );
    for (const tuple of tuples) {
      if (tuple.length !== columns.length) {
        context.errors.push(
          `${relative(filePath)}: ${table} tuple has ${tuple.length} values for ${columns.length} columns.`,
        );
        continue;
      }
      const row = {};
      columns.forEach((column, index) => {
        row[column] = tuple[index];
      });
      inserts.push({ table, row, filePath });
    }
  }
  return inserts;
}

export function parseSchemaColumns() {
  const columnsByTable = new Map();
  if (!existsSync(schemaRoot)) return columnsByTable;
  const schemaFiles = walkFiles(schemaRoot).filter((filePath) =>
    filePath.endsWith(".sql"),
  );
  const tablePattern =
    /CREATE\s+TABLE\s+((?:public|reference|tracking|gameplay|planning)\.[a-z_][a-z0-9_]*)\s*\(([\s\S]*?)\n\);/gi;
  for (const filePath of schemaFiles) {
    const text = readFileSync(filePath, "utf8");
    for (const match of text.matchAll(tablePattern)) {
      const table = match[1].toLowerCase();
      const body = match[2];
      const columns = new Set();
      for (const line of body.split(/\r?\n/)) {
        const columnMatch = line.match(/^\s+([a-z_][a-z0-9_]*)\s+/i);
        if (!columnMatch) continue;
        const column = columnMatch[1].toLowerCase();
        if (column === "constraint") continue;
        columns.add(column);
      }
      columnsByTable.set(table, columns);
    }
  }
  return columnsByTable;
}

export function relative(filePath) {
  return path.relative(projectRoot, filePath).replaceAll(path.sep, "/");
}

export function addDuplicateErrors(context, table, rows, column) {
  const seen = new Map();
  for (const { row, filePath } of rows) {
    if (!(column in row)) continue;
    const value = row[column];
    const key = String(value);
    if (seen.has(key)) {
      context.errors.push(
        `${table}: duplicate ${column} ${key} in ${relative(filePath)}; first seen in ${relative(seen.get(key))}.`,
      );
    } else {
      seen.set(key, filePath);
    }
  }
}

export function addCompositeDuplicateErrors(
  context,
  table,
  rows,
  label,
  keyFn,
) {
  const seen = new Map();
  for (const parsedRow of rows) {
    const key = keyFn(parsedRow.row);
    if (key === null) continue;
    if (seen.has(key)) {
      context.errors.push(
        `${table}: duplicate ${label} ${key} in ${relative(parsedRow.filePath)}; first seen in ${relative(seen.get(key))}.`,
      );
    } else {
      seen.set(key, parsedRow.filePath);
    }
  }
}

export function assertExactSlugs(context, table, rows) {
  const expected = expectedSlugs[table];
  if (!expected) return;
  const actual = rows
    .filter(({ row }) => "slug" in row)
    .sort(
      (a, b) =>
        Number(a.row.id ?? a.row.sort_order) -
        Number(b.row.id ?? b.row.sort_order),
    )
    .map(({ row }) => row.slug);
  if (actual.join("|") !== expected.join("|")) {
    context.errors.push(
      `${table}: expected slugs [${expected.join(", ")}], got [${actual.join(", ")}].`,
    );
  }
}

export function assertSlugFormat(context, table, rows) {
  const pattern = snakeSlugTables.has(table)
    ? /^[a-z0-9]+(?:_[a-z0-9]+)*$/
    : /^[a-z0-9]+(?:-[a-z0-9]+)*$/;
  for (const { row, filePath } of rows) {
    if (!("slug" in row)) continue;
    if (!pattern.test(row.slug)) {
      context.errors.push(
        `${relative(filePath)}: ${table} slug "${row.slug}" does not match ${pattern}.`,
      );
    }
  }
}

export function assertContiguousSortOrder(context, table, rows) {
  if (!rows.every(({ row }) => "sort_order" in row)) return;
  const orders = rows
    .map(({ row }) => Number(row.sort_order))
    .sort((a, b) => a - b);
  for (let index = 0; index < orders.length; index += 1) {
    if (orders[index] !== index + 1) {
      context.errors.push(
        `${table}: sort_order must be contiguous from 1; got [${orders.join(", ")}].`,
      );
      return;
    }
  }
}

export function assertScopedContiguousSortOrder(
  context,
  table,
  rows,
  scopeLabel,
  scopeKeyFn,
) {
  const rowsByScope = new Map();
  for (const parsedRow of rows) {
    if (!("sort_order" in parsedRow.row)) continue;
    const scopeKey = scopeKeyFn(parsedRow.row);
    if (scopeKey === null) continue;
    if (!rowsByScope.has(scopeKey)) rowsByScope.set(scopeKey, []);
    rowsByScope.get(scopeKey).push(parsedRow.row);
  }
  for (const [scopeKey, scopedRows] of rowsByScope.entries()) {
    const orders = scopedRows
      .map((row) => Number(row.sort_order))
      .sort((a, b) => a - b);
    for (let index = 0; index < orders.length; index += 1) {
      if (orders[index] !== index + 1) {
        context.errors.push(
          `${table}: ${scopeLabel} ${scopeKey} sort_order must be contiguous from 1; got [${orders.join(", ")}].`,
        );
        break;
      }
    }
  }
}

export function assertProductDescriptions(context, table, rows) {
  if (!productDescriptionTables.has(table)) return;
  for (const { row, filePath } of rows) {
    if (!("description" in row)) {
      context.errors.push(
        `${relative(filePath)}: ${table}.description is required for product-facing lookup rows.`,
      );
      continue;
    }
    if (
      typeof row.description !== "string" ||
      row.description.trim().length === 0
    ) {
      context.errors.push(
        `${relative(filePath)}: ${table}.description must be non-empty.`,
      );
    }
  }
}

export function assertPositiveIntegers(context, table, rows) {
  for (const { row, filePath } of rows) {
    for (const column of ["id", "sort_order"]) {
      if (!(column in row)) continue;
      if (!Number.isInteger(row[column]) || row[column] <= 0) {
        context.errors.push(
          `${relative(filePath)}: ${table}.${column} must be a positive integer.`,
        );
      }
    }
  }
}

export function assertGeneratedIdsAreNotSeeded(context, table, rows) {
  if (!generatedIdTables.has(table)) return;
  for (const { row, filePath } of rows) {
    if ("id" in row) {
      context.errors.push(
        `${relative(filePath)}: ${table}.id is generated by the database and must not be seeded manually.`,
      );
    }
  }
}

export function assertGenerationReferences(context, tableRows) {
  const generationIds = new Set(
    (tableRows.get("reference.generations") ?? []).map(({ row }) => row.id),
  );
  for (const table of [
    "reference.types",
    "reference.natures",
    "reference.egg_groups",
  ]) {
    for (const { row, filePath } of tableRows.get(table) ?? []) {
      if (!generationIds.has(row.introduced_generation_id)) {
        context.errors.push(
          `${relative(filePath)}: ${table}.introduced_generation_id ${row.introduced_generation_id} is not seeded.`,
        );
      }
    }
  }
}

export function assertNatureRows(context, rows) {
  for (const { row, filePath } of rows) {
    const inc = row.increased_stat;
    const dec = row.decreased_stat;
    if ((inc === null) !== (dec === null)) {
      context.errors.push(
        `${relative(filePath)}: nature ${row.slug} must set both stat modifiers or neither.`,
      );
    }
    if (
      inc !== null &&
      (!allowedStats.has(inc) || !allowedStats.has(dec) || inc === dec)
    ) {
      context.errors.push(
        `${relative(filePath)}: nature ${row.slug} has invalid stat modifier pair ${inc}/${dec}.`,
      );
    }
  }
}

export function assertAbilityRows(context, tableRows) {
  const rows = tableRows.get("reference.abilities") ?? [];
  const generationIds = new Set(
    (tableRows.get("reference.generations") ?? []).map(({ row }) => row.id),
  );
  const rowsById = mapRowsByColumn(rows, "id");
  for (const { row, filePath } of rows) {
    if (!generationIds.has(row.introduced_generation_id)) {
      context.errors.push(
        `${relative(filePath)}: ability ${row.slug} references unseeded introduced_generation_id ${row.introduced_generation_id}.`,
      );
    }
    if (row.external_id !== row.id) {
      context.errors.push(
        `${relative(filePath)}: ability ${row.slug} external_id ${row.external_id} must match stable id ${row.id}.`,
      );
    }
    if (row.sort_order !== row.id) {
      context.errors.push(
        `${relative(filePath)}: ability ${row.slug} sort_order ${row.sort_order} must match stable id ${row.id}.`,
      );
    }
    if (deferredNonPlaythroughAbilitySlugs.has(row.slug)) {
      context.errors.push(
        `${relative(filePath)}: deferred non-playthrough ability ${row.slug} must not be seeded in mainline scope.`,
      );
    }
  }
  for (const {
    generationId,
    firstId,
    lastId,
  } of expectedAbilityGenerationRanges) {
    for (let id = firstId; id <= lastId; id += 1) {
      const row = rowsById.get(id);
      if (!row) {
        context.errors.push(
          `reference.abilities: missing expected ability id ${id} for generation ${generationId}.`,
        );
        continue;
      }
      if (row.introduced_generation_id !== generationId) {
        context.errors.push(
          `reference.abilities: ability id ${id} expected generation ${generationId}, got ${row.introduced_generation_id}.`,
        );
      }
    }
  }
  if (rows.length !== 310) {
    context.errors.push(
      `reference.abilities: expected 310 mainline ability identities, got ${rows.length}.`,
    );
  }
}

export function assertAbilityAttributeRows(context, tableRows) {
  const rows = tableRows.get("reference.ability_attributes") ?? [];
  const abilityRows = tableRows.get("reference.abilities") ?? [];
  const versionGroupRows = tableRows.get("reference.version_groups") ?? [];
  const abilitiesById = mapRowsByColumn(abilityRows, "id");
  const versionGroupsById = mapRowsByColumn(versionGroupRows, "id");
  const rowsByAbilityId = new Map();
  const abilityAttributeKeys = new Set();
  addCompositeDuplicateErrors(
    context,
    "reference.ability_attributes",
    rows,
    "ability_id/version_group_start_id",
    (row) => `${row.ability_id}/${row.version_group_start_id}`,
  );
  for (const { row, filePath } of rows) {
    const ability = abilitiesById.get(row.ability_id);
    const versionGroup = versionGroupsById.get(row.version_group_start_id);
    abilityAttributeKeys.add(`${row.ability_id}:${row.version_group_start_id}`);
    if (!ability) {
      context.errors.push(
        `${relative(filePath)}: ability attribute references unseeded ability_id ${row.ability_id}.`,
      );
    }
    if (!versionGroup) {
      context.errors.push(
        `${relative(filePath)}: ability attribute references unseeded version_group_start_id ${row.version_group_start_id}.`,
      );
    }
    if (
      ability &&
      versionGroup &&
      versionGroup.generation_id < ability.introduced_generation_id
    ) {
      context.errors.push(
        `${relative(filePath)}: ability ${ability.slug} has an attribute row before introduced generation ${ability.introduced_generation_id}.`,
      );
    }
    if (!("effect_summary" in row)) {
      context.errors.push(
        `${relative(filePath)}: ability attribute row must include effect_summary.`,
      );
    }
    if (
      row.effect_summary === null ||
      String(row.effect_summary).trim().length === 0
    ) {
      context.errors.push(
        `${relative(filePath)}: ability attribute effect_summary must be non-empty when provided.`,
      );
    }
    if (!rowsByAbilityId.has(row.ability_id))
      rowsByAbilityId.set(row.ability_id, []);
    rowsByAbilityId.get(row.ability_id).push(row);
  }
  for (const { row: ability, filePath } of abilityRows) {
    const abilityAttributeRows = rowsByAbilityId.get(ability.id) ?? [];
    if (abilityAttributeRows.length === 0) {
      context.errors.push(
        `${relative(filePath)}: ability ${ability.slug} must have at least one ability attribute row.`,
      );
    }
  }
  for (const expectedKey of expectedAbilityAttributeChangeKeys) {
    if (!abilityAttributeKeys.has(expectedKey)) {
      context.errors.push(
        `reference.ability_attributes: missing expected sourced change-point row ${expectedKey.replace(":", "/")}.`,
      );
    }
  }
}

export function assertBooleanFlagSet(
  context,
  tableName,
  rows,
  column,
  expectedSlugs,
) {
  const actualSlugs = new Set(
    rows.filter(({ row }) => row[column] === true).map(({ row }) => row.slug),
  );
  for (const expectedSlug of expectedSlugs) {
    if (!actualSlugs.has(expectedSlug)) {
      context.errors.push(
        `${tableName}: expected ${expectedSlug} to have ${column}=true.`,
      );
    }
  }
  for (const actualSlug of actualSlugs) {
    if (!expectedSlugs.has(actualSlug)) {
      context.errors.push(
        `${tableName}: unexpected ${column}=true for ${actualSlug}.`,
      );
    }
  }
}

export function normalizeDisplayTextForSourceFingerprint(value) {
  if (typeof value !== "string") {
    return value;
  }
  return value.replaceAll("Pokémon", "Pokemon");
}

export function sourceFingerprintString(value) {
  return String(normalizeDisplayTextForSourceFingerprint(value ?? ""));
}

export function sourceVerifiedRowsetFingerprint(rows, columns, compareRows) {
  return createHash("sha256")
    .update(
      rows
        .map(({ row }) => row)
        .toSorted(compareRows)
        .map((row) =>
          JSON.stringify(
            columns.map((column) =>
              normalizeDisplayTextForSourceFingerprint(row[column] ?? null),
            ),
          ),
        )
        .join("|"),
    )
    .digest("hex");
}

export function assertSourceVerifiedRowsetFingerprint(
  context,
  tableName,
  rows,
  columns,
  compareRows,
  expectedFingerprint,
) {
  const actualCount = rows.length;
  const actualFingerprint = sourceVerifiedRowsetFingerprint(
    rows,
    columns,
    compareRows,
  );
  if (
    actualCount !== expectedFingerprint.count ||
    actualFingerprint !== expectedFingerprint.sha256
  ) {
    context.errors.push(
      tableName +
        ": source-verified rowset fingerprint expected " +
        expectedFingerprint.count +
        "/" +
        expectedFingerprint.sha256 +
        ", got " +
        actualCount +
        "/" +
        actualFingerprint +
        ".",
    );
  }
}

export function compareRowsByColumns(columns) {
  return (left, right) => {
    for (const column of columns) {
      const leftValue = left[column] ?? "";
      const rightValue = right[column] ?? "";
      if (
        typeof leftValue === "number" &&
        typeof rightValue === "number" &&
        leftValue !== rightValue
      ) {
        return leftValue - rightValue;
      }
      const comparison = String(leftValue).localeCompare(String(rightValue));
      if (comparison !== 0) return comparison;
    }
    return 0;
  };
}

export function mapRowsByColumn(rows, column) {
  return new Map(
    rows
      .filter(({ row }) => column in row)
      .map(({ row }) => [row[column], row]),
  );
}

export function mapParsedRowsByColumn(rows, column) {
  return new Map(
    rows
      .filter(({ row }) => column in row)
      .map((parsedRow) => [parsedRow.row[column], parsedRow]),
  );
}

export function collectVersionGroupClosureIds(
  versionGroupsById,
  dependencyRows,
  versionGroupId,
) {
  const dependenciesByVersionGroup = new Map();
  for (const { row } of dependencyRows) {
    if (!dependenciesByVersionGroup.has(row.version_group_id)) {
      dependenciesByVersionGroup.set(row.version_group_id, []);
    }
    dependenciesByVersionGroup
      .get(row.version_group_id)
      .push(row.required_version_group_id);
  }
  const visited = new Set();
  const visit = (currentVersionGroupId) => {
    if (
      currentVersionGroupId === null ||
      currentVersionGroupId === undefined ||
      visited.has(currentVersionGroupId)
    )
      return;
    visited.add(currentVersionGroupId);
    const versionGroup = versionGroupsById.get(currentVersionGroupId);
    if (!versionGroup) return;
    visit(versionGroup.parent_version_group_id);
    for (const requiredVersionGroupId of dependenciesByVersionGroup.get(
      currentVersionGroupId,
    ) ?? []) {
      visit(requiredVersionGroupId);
    }
  };
  visit(versionGroupId);
  return visited;
}
