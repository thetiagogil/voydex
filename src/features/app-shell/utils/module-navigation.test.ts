import { describe, expect, it } from "vitest";

import {
  getModuleNavigationHref,
  moduleRequiresLogin,
} from "./module-navigation";

describe("module navigation", () => {
  it("sends unauthenticated Mainline navigation through login", () => {
    expect(
      getModuleNavigationHref({
        isAuthenticated: false,
        moduleKey: "mainline",
      }),
    ).toBe("/login?next=%2Fmainline%2Fplays");
  });

  it("keeps authenticated Mainline navigation direct", () => {
    expect(
      getModuleNavigationHref({
        isAuthenticated: true,
        moduleKey: "mainline",
      }),
    ).toBe("/mainline/plays");
  });

  it("keeps public Codex navigation direct", () => {
    expect(moduleRequiresLogin("codex", false)).toBe(false);
    expect(
      getModuleNavigationHref({
        isAuthenticated: false,
        moduleKey: "codex",
      }),
    ).toBe("/codex/pokemon");
  });
});
