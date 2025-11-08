# Quick Reference: Updating Database Scripts Configuration

This is a **quick reference** for common configuration updates. For detailed explanations, see `README.md` in this folder.

## ✅ When Adding a New Schema

Update in `database.config.js`:

```javascript
export const SCHEMA_TYPES = {
  STATIC: ["dex", "meta", "your_new_schema"], // Add to appropriate type
  // ...
  ALL_CUSTOM: ["dex", "meta", "gameplay", "views", "your_new_schema"], // Add here too
};
```

## ✅ When Adding a Protected Table

```javascript
export const PROTECTED_TABLES = [
  // ... existing tables ...
  "your_schema.your_table", // Add here
];
```

## ✅ When Adding a Materialized View

```javascript
export const MATERIALIZED_VIEWS = [
  // ... existing views ...
  {
    name: "views.mv_your_view_name",
    description: "What it does",
    supportsConcurrent: true, // true if has unique index
    estimatedRows: "~1000",
  },
];
```

## ✅ When Adding a Migration Folder

1. **Name the folder** with numeric prefix (e.g., `006_your_folder`)
2. **Add to config:**

```javascript
export const MIGRATION_FOLDERS = {
  // ... existing folders ...
  YOUR_NEW: "006_your_folder",
};

export const MIGRATION_FOLDER_INFO = {
  // ... existing folders ...
  "006_your_folder": {
    name: "Display Name",
    description: "What this folder contains",
    emoji: "🔷",
  },
};
```

> **Note**: Folders run in alphabetical order automatically. No need to update MIGRATION_ORDER array.

## ✅ When Changing Seed Folder Structure

```javascript
export const SEED_CONFIG = {
  baseDir: "seeds", // Main folder name
  approvedDir: "approved", // Subfolder name
};
```

## ✅ When Adding System Schema to Exclude

```javascript
export const SYSTEM_SCHEMAS = new Set([
  // ... existing schemas ...
  "your_system_schema",
]);
```

## ⚠️ After Making Changes

Always test your changes:

```bash
npm run db:validate    # Check configuration is valid
npm run db:status      # Verify schemas are detected correctly
```

## 📚 Need More Details?

- Full guide: `README.md` (in this folder)
- Script usage: `../../scripts/README.md`
- Configuration file: `database.config.js`

---

**Remember**: Update the config file instead of modifying script logic!
