import { defineConfig, globalIgnores } from "eslint/config";
import nextVitals from "eslint-config-next/core-web-vitals";
import nextTs from "eslint-config-next/typescript";
import betterTailwindcss from "eslint-plugin-better-tailwindcss";
import { getDefaultSelectors } from "eslint-plugin-better-tailwindcss/defaults";
import {
  MatcherType,
  SelectorKind,
} from "eslint-plugin-better-tailwindcss/types";

const eslintConfig = defineConfig([
  ...nextVitals,
  ...nextTs,
  {
    files: ["**/*.{ts,tsx}"],
    plugins: { "better-tailwindcss": betterTailwindcss },
    settings: {
      "better-tailwindcss": {
        entryPoint: "src/app/globals.css",
        rootFontSize: 16,
        selectors: [
          ...getDefaultSelectors(),
          // bodyClassName, panelClassName, ...
          { kind: SelectorKind.Attribute, name: ".*ClassName$" },
          // Class maps such as sizeClassNames = { md: "size-[46px]" }.
          {
            kind: SelectorKind.Variable,
            name: ".*",
            match: [
              { type: MatcherType.String },
              { type: MatcherType.ObjectValue },
            ],
          },
          // art.gameCover({ className: "..." })
          {
            kind: SelectorKind.Callee,
            name: ".*",
            match: [{ type: MatcherType.ObjectValue, path: "^className$" }],
          },
        ],
      },
    },
    rules: {
      // collapse: false matches the VS Code hint (no merging px-5 py-5 into p-5).
      // ignore: Tailwind rewrites a 0px fallback inside calc() to 0, which breaks the value.
      "better-tailwindcss/enforce-canonical-classes": [
        "error",
        { collapse: false, ignore: ["0px\\)"] },
      ],
    },
  },
  // Override default ignores of eslint-config-next.
  globalIgnores([
    // Default ignores of eslint-config-next:
    ".next/**",
    "out/**",
    "build/**",
    "next-env.d.ts",
    "legacy/**",
    // Browser test output (`npm run test:e2e`).
    "e2e/.report/**",
    "e2e/.results/**",
  ]),
]);

export default eslintConfig;
