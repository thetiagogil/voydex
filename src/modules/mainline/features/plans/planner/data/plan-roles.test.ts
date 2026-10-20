import { describe, expect, it } from "vitest";

import { getPlanRoleName, toPlanRoleSlug } from "./plan-roles";

describe("toPlanRoleSlug", () => {
  it("reads a fixed role by slug or by the name older links used", () => {
    expect(toPlanRoleSlug("wall")).toBe("wall");
    expect(toPlanRoleSlug(" Physical attacker ")).toBe("physical-attacker");
  });

  it("drops a custom role", () => {
    expect(toPlanRoleSlug("Defensive pivot")).toBeNull();
    expect(toPlanRoleSlug(3)).toBeNull();
  });
});

describe("getPlanRoleName", () => {
  it("names a role, or nothing", () => {
    expect(getPlanRoleName("special-attacker")).toBe("Special attacker");
    expect(getPlanRoleName(null)).toBeNull();
  });
});
