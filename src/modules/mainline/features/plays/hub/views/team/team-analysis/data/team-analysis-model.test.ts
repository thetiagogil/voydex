import { describe, expect, it } from "vitest";

import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamMove,
} from "@/modules/mainline/features/plays/hub/types";
import type { MainlinePlaySummary } from "@/modules/mainline/features/plays/shared/types";
import { resolveGameMechanics } from "@/modules/reference/features/games/domain/game-mechanics";
import type { Generation, Type } from "@/modules/reference/types";

import { buildTeamAnalysisModel } from "./team-analysis-model";

const type = (
  id: number,
  name: string,
  slug: string,
  introducedGenerationId = 1,
) =>
  ({
    id,
    introduced_generation_id: introducedGenerationId,
    name,
    slug,
    sort_order: id,
  }) as Type;

const fire = type(10, "Fire", "fire");
const water = type(11, "Water", "water");
const electric = type(13, "Electric", "electric");
const ground = type(5, "Ground", "ground");
const ghost = type(8, "Ghost", "ghost");
const psychic = type(14, "Psychic", "psychic");
const dark = type(17, "Dark", "dark", 2);

const generation = (order: number) =>
  ({
    id: order,
    name: `Generation ${order}`,
    slug: `generation-${order}`,
    sort_order: order,
  }) as Generation;

const move = ({
  id,
  name,
  moveType,
  power = 60,
  slot = 1,
}: {
  id: number;
  moveType: Type;
  name: string;
  power?: number | null;
  slot?: number;
}) =>
  ({
    attributes: {
      damage_class: "special",
      move_id: id,
      power,
      type_id: moveType.id,
    },
    id,
    name,
    slot,
    slug: name.toLowerCase().replaceAll(" ", "-"),
    type: moveType,
  }) as MainlinePlayTeamMove;

const member = ({
  id,
  memberMoves = [],
  nickname = null,
  primaryType,
  rosterState = "active",
  secondaryType = null,
  slot,
  speciesName,
}: {
  id: string;
  memberMoves?: MainlinePlayTeamMove[];
  nickname?: string | null;
  primaryType: Type;
  rosterState?: string;
  secondaryType?: Type | null;
  slot: number;
  speciesName: string;
}) =>
  ({
    moves: memberMoves,
    nickname,
    play_pokemon_id: id,
    primaryType,
    roster_state_slug: rosterState,
    secondaryType,
    slot,
    species_name: speciesName,
  }) as MainlinePlayTeamMember;

const play = (statusSlug = "playing") =>
  ({
    game_id: 1,
    generation_id: 1,
    status_slug: statusSlug,
    version_group_id: 1,
  }) as MainlinePlaySummary;

describe("buildTeamAnalysisModel", () => {
  it("uses only Active members and generation-available types", () => {
    const model = buildTeamAnalysisModel({
      generation: generation(1),
      mechanics: resolveGameMechanics({
        gameId: 1,
        generationId: 1,
        versionGroupId: 1,
      }),
      members: [
        member({
          id: "pikachu",
          memberMoves: [
            move({
              id: 85,
              moveType: electric,
              name: "Thunderbolt",
            }),
          ],
          primaryType: electric,
          slot: 1,
          speciesName: "Pikachu",
        }),
        member({
          id: "reserve",
          primaryType: fire,
          rosterState: "reserve",
          slot: 1,
          speciesName: "Charmander",
        }),
      ],
      play: play(),
      types: [fire, water, electric, ground, dark],
    });

    expect(model.members.map((item) => item.play_pokemon_id)).toEqual([
      "pikachu",
    ]);
    expect(model.evidence).toMatchObject({
      activeCount: 1,
      possibleMoveCount: 4,
      recordedMoveCount: 1,
    });
    expect(
      model.defensiveRows.map((row) => row.attackingType.slug),
    ).not.toContain("dark");
    expect(
      model.defensiveRows.find((row) => row.attackingType.slug === "ground")
        ?.cells[0],
    ).toMatchObject({
      effectiveness: "weak",
      multiplier: 2,
    });
    expect(
      model.coverageRows.find((row) => row.defendingType.slug === "water")
        ?.moveCount,
    ).toBe(1);
  });

  it("counts every recorded move that hits a type super effectively", () => {
    const model = buildTeamAnalysisModel({
      generation: generation(1),
      mechanics: resolveGameMechanics({
        gameId: 1,
        generationId: 1,
        versionGroupId: 1,
      }),
      members: [
        member({
          id: "electric-member",
          memberMoves: [
            move({
              id: 85,
              moveType: electric,
              name: "Thunderbolt",
            }),
          ],
          primaryType: electric,
          slot: 1,
          speciesName: "Pikachu",
        }),
        member({
          id: "fire-member",
          memberMoves: [
            move({
              id: 9,
              moveType: electric,
              name: "Thunder Punch",
            }),
          ],
          primaryType: fire,
          slot: 2,
          speciesName: "Charmander",
        }),
      ],
      play: play(),
      types: [fire, water, electric],
    });

    expect(
      model.coverageRows.map((row) => [row.defendingType.slug, row.moveCount]),
    ).toEqual([
      ["fire", 0],
      ["water", 2],
      ["electric", 0],
    ]);
  });

  it("applies historical type rules for the Play generation", () => {
    const model = buildTeamAnalysisModel({
      generation: generation(1),
      mechanics: resolveGameMechanics({
        gameId: 1,
        generationId: 1,
        versionGroupId: 1,
      }),
      members: [
        member({
          id: "psychic-member",
          primaryType: psychic,
          slot: 1,
          speciesName: "Alakazam",
        }),
      ],
      play: play(),
      types: [ghost, psychic],
    });

    expect(
      model.defensiveRows.find((row) => row.attackingType.slug === "ghost")
        ?.cells[0],
    ).toMatchObject({
      effectiveness: "immune",
      multiplier: 0,
    });
  });

  it("notes the abilities and held items only where the game has them", () => {
    const legacyModel = buildTeamAnalysisModel({
      generation: generation(1),
      mechanics: resolveGameMechanics({
        gameId: 1,
        generationId: 1,
        versionGroupId: 1,
      }),
      members: [
        member({
          id: "legacy",
          primaryType: fire,
          slot: 1,
          speciesName: "Charizard",
        }),
      ],
      play: play(),
      types: [fire],
    });
    const modernModel = buildTeamAnalysisModel({
      generation: generation(3),
      mechanics: resolveGameMechanics({
        gameId: 10,
        generationId: 3,
        versionGroupId: 5,
      }),
      members: [
        member({
          id: "modern",
          primaryType: fire,
          slot: 1,
          speciesName: "Blaziken",
        }),
      ],
      play: play("completed"),
      types: [fire],
    });

    expect(legacyModel).toMatchObject({
      abilitiesApply: false,
      heldItemsApply: false,
    });
    expect(modernModel).toMatchObject({
      abilitiesApply: true,
      heldItemsApply: true,
    });
    expect(modernModel.lineupLabel).toBe("Final team");
  });

  it("does not claim type coverage for fixed-damage or reactive moves", () => {
    const fighting = type(2, "Fighting", "fighting");
    const model = buildTeamAnalysisModel({
      generation: generation(1),
      mechanics: resolveGameMechanics({
        gameId: 1,
        generationId: 1,
        versionGroupId: 1,
      }),
      members: [
        member({
          id: "counter-user",
          memberMoves: [
            move({
              id: 68,
              moveType: fighting,
              name: "Counter",
              power: null,
            }),
          ],
          primaryType: psychic,
          slot: 1,
          speciesName: "Alakazam",
        }),
      ],
      play: play(),
      types: [fighting, psychic],
    });

    expect(model.coverageRows.every((row) => row.moveCount === 0)).toBe(true);
  });

  it("lists attacking types hardest-hitting first and flags pressure", () => {
    const model = buildTeamAnalysisModel({
      generation: generation(1),
      mechanics: resolveGameMechanics({
        gameId: 1,
        generationId: 1,
        versionGroupId: 1,
      }),
      members: [
        member({
          id: "fire-member",
          nickname: "Blaze",
          primaryType: fire,
          slot: 1,
          speciesName: "Charmander",
        }),
        member({
          id: "electric-member",
          primaryType: electric,
          slot: 2,
          speciesName: "Pikachu",
        }),
      ],
      play: play(),
      types: [fire, water, electric, ground],
    });

    expect(model.defensiveRows.map((row) => row.attackingType.slug)).toEqual([
      "ground",
      "water",
      "fire",
      "electric",
    ]);
    expect(model.defensiveRows.map((row) => row.isPressure)).toEqual([
      true,
      false,
      false,
      false,
    ]);
    expect(
      model.defensiveRows[0]?.cells.map((cell) => cell.memberName),
    ).toEqual(["Blaze", "Pikachu"]);
  });
});
