import fs from "node:fs";
import os from "node:os";
import path from "node:path";

import { afterEach, describe, expect, it } from "vitest";

import { inspectDocumentation } from "./check-docs.mjs";

const temporaryRoots = [];

function fixture(files) {
  const root = fs.mkdtempSync(path.join(os.tmpdir(), "voydex-docs-check-"));
  temporaryRoots.push(root);
  for (const [relativePath, contents] of Object.entries(files)) {
    const filePath = path.join(root, relativePath);
    fs.mkdirSync(path.dirname(filePath), { recursive: true });
    fs.writeFileSync(filePath, contents);
  }
  return root;
}

afterEach(() => {
  for (const root of temporaryRoots.splice(0)) {
    fs.rmSync(root, { force: true, recursive: true });
  }
});

describe("documentation checker", () => {
  it("accepts reachable docs and indexed design assets", () => {
    const root = fixture({
      "README.md": "[Docs](./docs/README.md)",
      "CLAUDE.md": "[Guide](./docs/guide.md)",
      ".claude/engineering-guide.md": "[Guide](../docs/guide.md)",
      ".claude/agents/reviewer.md": "[Guide](../../docs/guide.md)",
      "docs/README.md": "[Guide](./guide.md)\n[Mockup](./design/mock.png)",
      "docs/guide.md": "# Guide",
      "docs/design/mock.png": "fixture",
    });

    expect(inspectDocumentation(root)).toEqual([]);
  });

  it("reports broken links, unreachable docs, and unindexed assets", () => {
    const root = fixture({
      "README.md": "[Missing](./docs/missing.md)",
      "docs/README.md": "# Docs",
      "docs/orphan.md": "# Orphan",
      "docs/design/orphan.png": "fixture",
    });

    expect(inspectDocumentation(root)).toEqual([
      "README.md links to missing ./docs/missing.md",
      "docs/design/orphan.png is not indexed by an active Markdown document",
      "docs/orphan.md is not reachable from docs/README.md",
    ]);
  });
});
