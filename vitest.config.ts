import path from "node:path";
import { fileURLToPath } from "node:url";

import { configDefaults, defineConfig } from "vitest/config";

const projectRoot = path.dirname(fileURLToPath(import.meta.url));

export default defineConfig({
  test: {
    /* Browser tests run through Playwright (`npm run test:e2e`). */
    exclude: [...configDefaults.exclude, "e2e/**"],
    env: {
      NEXT_PUBLIC_ASSETS_URL: "https://assets.test",
    },
  },
  resolve: {
    alias: {
      "@": path.join(projectRoot, "src"),
    },
  },
});
