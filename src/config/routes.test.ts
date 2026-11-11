import { describe, expect, it } from "vitest";

import { appRoutes } from "./routes";

describe("appRoutes query helpers", () => {
  it("builds Mainline's hand-off addresses with encoded values", () => {
    expect(appRoutes.mainlineHomePlay("a b")).toBe("/mainline?play=a%20b");
    expect(appRoutes.mainlineCollectionSpecies("mr-mime")).toBe(
      "/mainline/collection?species=mr-mime",
    );
    expect(appRoutes.mainlinePlan("plan-1", "sword-shield")).toBe(
      "/mainline/plans/plan?id=plan-1&vg=sword-shield",
    );
    expect(appRoutes.mainlineNewPlay("sword")).toBe("/mainline?new=sword");
    expect(appRoutes.mainlineNewPlay("sword", "sobble")).toBe(
      "/mainline?new=sword&partner=sobble",
    );
  });

  it("keeps the plain addresses without the optional values", () => {
    expect(appRoutes.mainlinePlan("plan-1")).toBe(
      "/mainline/plans/plan?id=plan-1",
    );
    expect(appRoutes.mainlineNewPlay()).toBe("/mainline?new=1");
    /* A partner means nothing without its game. */
    expect(appRoutes.mainlineNewPlay(undefined, "sobble")).toBe(
      "/mainline?new=1",
    );
    expect(appRoutes.mainlinePlayTeamAnalysis("play-1")).toBe(
      "/mainline/plays/play/team/analysis?id=play-1",
    );
  });

  /* Plays and Plans live on the device: one page each, the id in the query. */
  it("puts a Play's id in the query of every hub page", () => {
    expect(appRoutes.mainlinePlay("play-1")).toBe(
      "/mainline/plays/play?id=play-1",
    );
    expect(appRoutes.mainlinePlayHistoryMoment("play-1", "event-9")).toBe(
      "/mainline/plays/play/history?id=play-1#moment-event-9",
    );
    expect(appRoutes.mainlinePlayProgressStoryRecord("play-1", 12)).toBe(
      "/mainline/plays/play/progress/story?id=play-1&record=12",
    );
    expect(appRoutes.mainlinePlayTeamAdd("play-1")).toBe(
      "/mainline/plays/play/team?id=play-1&add=",
    );
    expect(appRoutes.mainlinePlayTeamAdd("play-1", "rotom", "rotom-wash")).toBe(
      "/mainline/plays/play/team?id=play-1&add=rotom&form=rotom-wash",
    );
    expect(appRoutes.mainlinePlayTeamPokemon("play-1", "a b")).toBe(
      "/mainline/plays/play/team?id=play-1&pokemon=a+b",
    );
  });

  /* One page per species: the game and the form are in the query. */
  it("puts a Codex entry's game and form in the query", () => {
    expect(appRoutes.codexPokemonEntry("swsh", "arcanine")).toBe(
      "/codex/pokemon/arcanine?game=swsh",
    );
    expect(
      appRoutes.codexPokemonEntry("lgpe", "pikachu", "pikachu-partner"),
    ).toBe("/codex/pokemon/pikachu?game=lgpe&form=pikachu-partner");
    expect(appRoutes.codexPokemonSpecies("pikachu")).toBe(
      "/codex/pokemon/pikachu",
    );
  });
});
