# Database Scripts Refactoring Plan

## 🎯 Analysis Complete

### Current State Assessment

#### ✅ What's Good:

1. **Clean separation of concerns** - Helpers are well-organized
2. **Consistent error handling** - Try-catch blocks in place
3. **Good CLI patterns** - confirmOrExit, countdown work well
4. **Proper async/await** - No callback hell

#### ⚠️ What Needs Improvement:

1. **Duplicate logic across clean scripts** - Similar code in 5 files
2. **Mixed logging** - Some `console.log`, some `logger.*`
3. **No centralized business logic** - Each script builds its own SQL
4. **Missing validation** - Scripts don't check if folders exist
5. **Inconsistent output format** - Some scripts more verbose than others

---

## 📦 Refactoring Strategy

### Phase 1: Create New Helpers ✅

- `db-operations.js` - Schema/table operations, impact analysis
- `migration-operations.js` - Migration discovery, validation, execution

### Phase 2: Refactor Scripts (Current)

Keep existing scripts but clean them up to use new helpers:

1. **db-clean-all.js** - Use `analyzeImpact()` and `dropSchemas()`
2. **db-clean-static.js** - Use `analyzeImpact()` and `dropSchemas()`
3. **db-clean-all-rows.js** - Use `analyzeImpact()` and `truncateTables()`
4. **db-clean-static-rows.js** - Use `analyzeImpact()` and `truncateTables()`
5. **db-migrate-all.js** - Use `getAllMigrationFiles()` and `runMigrations()`

### Phase 3: Remove Deprecated ✅

- **DELETE: db-clean.js** - Replaced by `db-clean-all.js`
- **DELETE: db-clean-rows.js** - Replaced by `db-clean-static-rows.js`

### Phase 4: Standardize Logging

**Consistent pattern**:

```javascript
logger.header("Operation Name", "emoji");
logger.section("What's happening", "emoji");
logger.list(items);
logger.success("Done");
logger.failure("Failed");
```

**Remove all**:

```javascript
console.log(); // Use logger.section() or logger.list()
console.error(); // Use logger.failure()
```

---

## 🎨 Final Script Structure

### Clean Scripts Pattern

```javascript
#!/usr/bin/env node
import { confirmOrExit, countdown } from "./helpers/cli.js";
import { analyzeImpact, dropSchemas/truncateTables } from "./helpers/db-operations.js";
import { loadEnvironment } from "./helpers/env.js";
import { logger } from "./helpers/logger.js";

async function main() {
  const args = process.argv.slice(2);
  const dryRun = args.includes("--dry");
  const env = loadEnvironment();

  logger.header("Operation Name", "emoji");

  // 1. Analyze impact
  const impact = await analyzeImpact('operation', env.SUPABASE_DB_URL);

  // 2. Validate
  if (noWork) {
    logger.failure("Nothing to do");
    process.exit(0);
  }

  // 3. Show plan
  logger.section("What will happen");
  logger.list(impact.affectedSchemas);
  if (impact.preservedSchemas.length > 0) {
    logger.section("Protected (preserved)");
    logger.list(impact.preservedSchemas);
  }

  // 4. Dry run check
  if (dryRun) {
    logger.section("Dry run complete", "✓");
    process.exit(0);
  }

  // 5. Confirm
  await confirmOrExit("Confirm?", { flag: "--y" });
  await countdown(5);

  // 6. Execute
  logger.section("Executing");
  const result = await dropSchemas/truncateTables(...);

  // 7. Report
  result.success ? logger.success(result.message) : logger.failure(result.message);
  process.exit(result.success ? 0 : 1);
}

main().catch(err => {
  logger.failure(`Operation failed: ${err.message}`);
  process.exit(1);
});
```

### Migration Scripts Pattern

```javascript
#!/usr/bin/env node
import { confirmOrExit } from "./helpers/cli.js";
import {
  getAllMigrationFiles,
  runMigrations,
  validateMigrationStructure,
} from "./helpers/migration-operations.js";
import { loadEnvironment } from "./helpers/env.js";
import { logger } from "./helpers/logger.js";

async function main() {
  const env = loadEnvironment();
  const migrationsDir = path.resolve(process.cwd(), "database", "migrations");

  logger.header("Migration Runner", "📁");

  // 1. Validate structure
  const validation = validateMigrationStructure(migrationsDir);
  if (!validation.valid) {
    validation.issues.forEach((issue) => logger.failure(issue));
    process.exit(1);
  }

  // 2. Get files
  const files = getAllMigrationFiles(migrationsDir);

  // 3. Show plan
  logger.section("Migration Plan");
  // ... show summary

  // 4. Confirm
  await confirmOrExit("Run migrations?", { flag: "--y" });

  // 5. Execute with progress
  const result = await runMigrations(files, {
    onProgress: (progress) => {
      logger.section(
        `[${progress.current}/${progress.total}] ${progress.migration.displayName}`,
      );
    },
  });

  // 6. Report
  logger.section("Summary");
  // ... show results
}

main().catch((err) => {
  logger.failure(`Migration failed: ${err.message}`);
  process.exit(1);
});
```

---

## 📊 Scripts to Keep

### Essential Scripts (8 total)

1. ✅ **db-clean-all.js** - Drop all schemas (dev only)
2. ✅ **db-clean-static.js** - Drop static schemas (safe)
3. ✅ **db-clean-all-rows.js** - Truncate all tables (dev only)
4. ✅ **db-clean-static-rows.js** - Truncate static tables (safe)
5. ✅ **db-migrate-all.js** - Run all migrations
6. ✅ **db-seed.js** - Seed reference data
7. ✅ **db-refresh-views.js** - Refresh materialized views
8. ✅ **db-status.js** - Show database structure

### Utility Scripts (2 total)

9. ✅ **db-validate.js** - Validate database integrity
10. ✅ **db-migrate.js** - Legacy interactive migrator (keep for individual files)

### Deprecated (DELETE)

- ❌ **db-clean.js** - Duplicate of db-clean-all.js
- ❌ **db-clean-rows.js** - Replaced by db-clean-static-rows.js with protection

---

## 🔧 Implementation Steps

### Step 1: Update Helpers ✅

- [x] Create `db-operations.js`
- [x] Create `migration-operations.js`

### Step 2: Refactor Clean Scripts

- [ ] Refactor `db-clean-all.js`
- [ ] Refactor `db-clean-static.js`
- [ ] Refactor `db-clean-all-rows.js`
- [ ] Refactor `db-clean-static-rows.js`

### Step 3: Refactor Migration Scripts

- [ ] Refactor `db-migrate-all.js`
- [ ] Keep `db-migrate.js` as-is (works well for individual files)

### Step 4: Update Other Scripts

- [ ] Update `db-refresh-views.js` - Use consistent logging
- [ ] Keep `db-seed.js` as-is (already good)
- [ ] Keep `db-status.js` as-is (already good)
- [ ] Keep `db-validate.js` as-is (already good)

### Step 5: Delete Deprecated

- [ ] Delete `db-clean.js`
- [ ] Delete `db-clean-rows.js`

### Step 6: Update package.json

- [ ] Remove old script commands
- [ ] Keep only the 10 essential scripts

---

## 📝 Benefits After Refactor

1. **Consistency** - All scripts follow same pattern
2. **Maintainability** - Business logic in helpers, scripts are just orchestration
3. **Testability** - Helpers can be unit tested
4. **Safety** - Impact analysis before destructive operations
5. **Clarity** - Clear separation between safe/dangerous operations
6. **Professional** - Clean logging, proper error handling

---

## 🎯 Next Actions

1. Want me to refactor all scripts now?
2. Want to review the new helpers first?
3. Want to see a before/after comparison?

Let me know how you'd like to proceed!
