import { existsSync, readFileSync } from "node:fs";
import path from "node:path";
import {
  assertItemAvailabilityRows,
  assertMoveAvailabilityRows,
  assertMoveMachineRows,
  assertNoSourceNotesColumns,
  assertPokemonAvailabilityRows,
  assertPokemonLearnsetRows,
} from "./rules/availability.mjs";
import { seedsRoot } from "./context.mjs";
import {
  addDuplicateErrors,
  assertAbilityAttributeRows,
  assertAbilityRows,
  assertContiguousSortOrder,
  assertExactSlugs,
  assertGeneratedIdsAreNotSeeded,
  assertGenerationReferences,
  assertNatureRows,
  assertPokedexEntryHelperComments,
  assertPositiveIntegers,
  assertProductDescriptions,
  assertReferenceHelperComments,
  assertSchemaSecurity,
  assertSlugFormat,
  parseInserts,
  parseSchemaColumns,
  relative,
  stripLineComments,
  walkDirectories,
  walkFiles,
} from "./core.mjs";
import { assertPokemonEvolutionEdgeRows } from "./rules/evolution.mjs";
import {
  customAuditTables,
  expectedSlugs,
  scopedSlugTables,
  scopedSortTables,
} from "./expectations.mjs";
import {
  assertCoreMechanicsRowsetFingerprints,
  assertFoundationRowsetFingerprints,
} from "./rules/foundation.mjs";
import {
  assertContentScopeDependencyRows,
  assertGameContentScopeRows,
  assertGamePlatformRows,
  assertGameRows,
  assertVersionGroupRows,
} from "./rules/games.mjs";
import { assertItemRows } from "./rules/items.mjs";
import {
  assertBattleMoveSourceRows,
  assertMoveAttributeRows,
  assertMoveRows,
  assertTypeMatchupRows,
} from "./rules/mechanics.mjs";
import { assertPokedexEntryRows, assertPokedexRows } from "./rules/pokedex.mjs";
import {
  assertPokemonAttributeRows,
  assertPokemonFormItemRequirementRows,
  assertPokemonFormRuleRows,
  assertPokemonIdentityRows,
} from "./rules/pokemon.mjs";
import {
  assertTerminalStatuses,
  assertOpponentTeamRows,
  assertTrackingCoreRows,
} from "./rules/tracking.mjs";

import { createAuditContext } from "./context.mjs";

export function runSeedAudit() {
  const context = createAuditContext();
  assertSchemaSecurity(context);

  if (!existsSync(seedsRoot)) {
    context.errors.push(`Missing seeds directory: ${seedsRoot}`);
  } else {
    const files = walkFiles(seedsRoot);
    const directories = walkDirectories(seedsRoot);
    const sqlFiles = files.filter((filePath) => filePath.endsWith(".sql"));
    const markdownFiles = files.filter((filePath) => filePath.endsWith(".md"));
    if (sqlFiles.length === 0) {
      context.errors.push("No SQL seed files found.");
    }
    for (const directoryPath of directories) {
      const directoryName = path.basename(directoryPath);
      if (!/^\d{2}_[a-z0-9_]+$/.test(directoryName)) {
        context.errors.push(
          `${relative(directoryPath)}: seed folders must use a two-digit numeric prefix.`,
        );
      }
    }
    for (const filePath of sqlFiles) {
      const fileName = path.basename(filePath);
      if (!/^\d{3}_[a-z0-9_]+\.sql$/.test(fileName)) {
        context.errors.push(
          `${relative(filePath)}: SQL seed files must use a three-digit numeric prefix.`,
        );
      }
    }
    const allRows = [];
    for (const filePath of [...sqlFiles, ...markdownFiles]) {
      const text = readFileSync(filePath, "utf8");
      if (/[^\x00-\x7Fé]/.test(text)) {
        context.errors.push(
          `${relative(filePath)} contains non-ASCII characters outside approved Pokémon typography.`,
        );
      }
      if (/[ \t]+$/m.test(text)) {
        context.errors.push(
          `${relative(filePath)} contains trailing whitespace.`,
        );
      }
    }
    for (const filePath of sqlFiles) {
      const text = readFileSync(filePath, "utf8");
      assertReferenceHelperComments(context, text, filePath);
      assertPokedexEntryHelperComments(context, text, filePath);
      const executableSql = stripLineComments(text);
      if (!text.includes("-- Source") || !text.includes("-- File Scope")) {
        context.errors.push(
          `${relative(filePath)} must include Source and File Scope comment sections.`,
        );
      }
      if (/\bother\b/i.test(executableSql) || /'other'/i.test(executableSql)) {
        context.errors.push(
          `${relative(filePath)} contains forbidden generic "other" seed data.`,
        );
      }
      if (/\bON\s+CONFLICT\b/i.test(executableSql)) {
        context.errors.push(
          `${relative(filePath)} contains ON CONFLICT; clean seeds should not be idempotent.`,
        );
      }
      if (
        /^\s*(CREATE|ALTER|DROP|DELETE|UPDATE|TRUNCATE)\b/im.test(executableSql)
      ) {
        context.errors.push(
          `${relative(filePath)} contains schema/mutation SQL outside INSERT statements.`,
        );
      }
      allRows.push(...parseInserts(context, executableSql, filePath));
    }
    const tableRows = new Map();
    const columnsByTable = parseSchemaColumns();
    for (const parsedRow of allRows) {
      if (!tableRows.has(parsedRow.table)) tableRows.set(parsedRow.table, []);
      tableRows.get(parsedRow.table).push(parsedRow);
    }
    context.rows = allRows;
    context.tableRows = tableRows;
    context.columnsByTable = columnsByTable;
    for (const table of Object.keys(expectedSlugs).sort()) {
      if (!tableRows.has(table)) {
        context.errors.push(
          `${table}: expected lookup seed rows, but table is not seeded.`,
        );
      }
    }
    for (const [table, rows] of tableRows.entries()) {
      if (!columnsByTable.has(table)) {
        context.errors.push(
          `${table}: seeded table does not exist in schema files.`,
        );
      } else {
        const schemaColumns = columnsByTable.get(table);
        for (const { row, filePath } of rows) {
          for (const column of Object.keys(row)) {
            if (!schemaColumns.has(column)) {
              context.errors.push(
                `${relative(filePath)}: ${table}.${column} is not defined in schema files.`,
              );
            }
          }
        }
      }
      if (!expectedSlugs[table] && !customAuditTables.has(table)) {
        context.warnings.push(
          `${table}: seeded table has no exact slug expectation yet.`,
        );
      }
      addDuplicateErrors(context, table, rows, "id");
      if (!scopedSlugTables.has(table)) {
        addDuplicateErrors(context, table, rows, "slug");
      }
      if (!scopedSortTables.has(table)) {
        addDuplicateErrors(context, table, rows, "sort_order");
      }
      assertGeneratedIdsAreNotSeeded(context, table, rows);
      assertPositiveIntegers(context, table, rows);
      assertProductDescriptions(context, table, rows);
      assertSlugFormat(context, table, rows);
      if (!scopedSortTables.has(table)) {
        assertContiguousSortOrder(context, table, rows);
      }
      assertExactSlugs(context, table, rows);
    }
    assertGenerationReferences(context, tableRows);
    assertFoundationRowsetFingerprints(context, tableRows);
    assertCoreMechanicsRowsetFingerprints(context, tableRows);
    assertNatureRows(context, tableRows.get("reference.natures") ?? []);
    assertAbilityRows(context, tableRows);
    assertAbilityAttributeRows(context, tableRows);
    assertPokemonIdentityRows(context, tableRows);
    assertItemRows(context, tableRows);
    assertNoSourceNotesColumns(context, tableRows);
    assertItemAvailabilityRows(context, tableRows);
    assertMoveRows(context, tableRows);
    assertMoveAvailabilityRows(context, tableRows);
    assertMoveMachineRows(context, tableRows);
    assertMoveAttributeRows(context, tableRows);
    assertBattleMoveSourceRows(context, tableRows);
    assertPokemonEvolutionEdgeRows(context, tableRows);
    assertPokemonAvailabilityRows(context, tableRows);
    assertPokemonLearnsetRows(context, tableRows);
    assertPokemonFormRuleRows(context, tableRows);
    assertPokemonFormItemRequirementRows(context, tableRows);
    assertPokemonAttributeRows(context, tableRows);
    assertTrackingCoreRows(context, tableRows);
    assertOpponentTeamRows(context, tableRows);
    assertTerminalStatuses(
      context,
      tableRows.get("gameplay.mainline_play_statuses") ?? [],
    );
    assertVersionGroupRows(context, tableRows);
    assertGameRows(context, tableRows);
    assertGameContentScopeRows(context, tableRows);
    assertContentScopeDependencyRows(context, tableRows);
    assertGamePlatformRows(context, tableRows);
    assertPokedexRows(context, tableRows);
    assertPokedexEntryRows(context, tableRows);
    assertTypeMatchupRows(context, tableRows);
    console.log(`Seed files checked: ${sqlFiles.length}`);
    console.log(`Markdown files checked: ${markdownFiles.length}`);
    console.log(`Seeded tables checked: ${tableRows.size}`);
    console.log(`Seed rows checked: ${allRows.length}`);
  }

  for (const warning of context.warnings) {
    console.warn(`WARN: ${warning}`);
  }

  if (context.errors.length > 0) {
    for (const error of context.errors) {
      console.error(`ERROR: ${error}`);
    }
    process.exit(1);
  }

  console.log("Seed file audit passed.");
}
