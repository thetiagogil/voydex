import { describe, expect, it } from "vitest";

import { appRoutes } from "./routes";

describe("appRoutes query helpers", () => {
  it("builds Mainline's hand-off addresses with encoded values", () => {
    expect(appRoutes.mainlineHomePlay("a b")).toBe("/mainline?play=a%20b");
    expect(appRoutes.mainlineCollectionSpecies("mr-mime")).toBe(
      "/mainline/collection?species=mr-mime",
    );
    expect(appRoutes.mainlinePlan("plan-1", "sword-shield")).toBe(
      "/mainline/plans/plan-1?vg=sword-shield",
    );
    expect(appRoutes.mainlineNewPlay("sword")).toBe("/mainline?new=sword");
    expect(appRoutes.mainlineNewPlay("sword", "sobble")).toBe(
      "/mainline?new=sword&partner=sobble",
    );
  });

  it("keeps the plain addresses without the optional values", () => {
    expect(appRoutes.mainlinePlan("plan-1")).toBe("/mainline/plans/plan-1");
    expect(appRoutes.mainlineNewPlay()).toBe("/mainline?new=1");
    /* A partner means nothing without its game. */
    expect(appRoutes.mainlineNewPlay(undefined, "sobble")).toBe(
      "/mainline?new=1",
    );
    expect(appRoutes.mainlinePlayTeamAnalysis("play-1")).toBe(
      "/mainline/plays/play-1/team/analysis",
    );
  });
});
