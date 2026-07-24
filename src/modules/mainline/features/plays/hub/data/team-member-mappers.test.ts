import { describe, expect, it } from "vitest";

import { buildMainlinePlayTeamPreview } from "@/modules/mainline/features/plays/hub/data/team-member-mappers";
import type {
  MainlinePlayTeamRows,
  MainlinePlayTeamMemberRow,
} from "@/modules/mainline/features/plays/hub/types";
import type {
  AbilityAttribute,
  MoveAttribute,
  Nature,
  PokemonAttributes,
  Type,
} from "@/modules/reference/types";

const buildMember = (formId: number | null) => {
  return {
    form_id: formId,
    moves: [],
  } as unknown as MainlinePlayTeamMemberRow;
};

const buildAttributes = (params: {
  formId: number;
  generationId: number;
  primaryTypeId: number;
  secondaryTypeId?: number | null;
}) => {
  return {
    form_id: params.formId,
    generation_start_id: params.generationId,
    primary_type_id: params.primaryTypeId,
    secondary_type_id: params.secondaryTypeId ?? null,
  } as PokemonAttributes;
};

const buildType = (id: number, slug: string) => {
  return {
    id,
    slug,
  } as Type;
};

describe("buildMainlinePlayTeamPreview", () => {
  it("uses the latest loaded attributes for each form", () => {
    const preview = buildMainlinePlayTeamPreview({
      abilityAttributes: [],
      attributes: [
        buildAttributes({
          formId: 25,
          generationId: 1,
          primaryTypeId: 10,
        }),
        buildAttributes({
          formId: 25,
          generationId: 3,
          primaryTypeId: 11,
          secondaryTypeId: 12,
        }),
      ],
      members: [buildMember(25)],
      moveAttributes: [],
      natures: [],
      types: [
        buildType(10, "electric"),
        buildType(11, "fire"),
        buildType(12, "flying"),
      ],
      validBallItemIds: [],
      versionGroupId: null,
      versionGroups: [],
    });

    expect(preview[0]?.primaryType?.id).toBe(11);
    expect(preview[0]?.secondaryType?.id).toBe(12);
  });

  it("returns null types when a member has no resolvable form", () => {
    const preview = buildMainlinePlayTeamPreview({
      abilityAttributes: [],
      attributes: [],
      members: [buildMember(null), buildMember(999)],
      moveAttributes: [],
      natures: [],
      types: [],
      validBallItemIds: [],
      versionGroupId: null,
      versionGroups: [],
    });

    expect(
      preview.map(({ primaryType, secondaryType }) => ({
        primaryType,
        secondaryType,
      })),
    ).toEqual([
      { primaryType: null, secondaryType: null },
      { primaryType: null, secondaryType: null },
    ]);
  });

  it("hydrates move facts and suppresses invalid capture-ball references", () => {
    const member = {
      ball_item_id: 4,
      ball_item_name: "Invalid fixture item",
      form_id: null,
      moves: [
        {
          move_id: 85,
          name: "Thunderbolt",
          slot: 1,
          slug: "thunderbolt",
        },
      ],
    } as unknown as MainlinePlayTeamMemberRow;
    const moveAttributes = {
      damage_class: "special",
      generation_start_id: 1,
      move_id: 85,
      power: 95,
      pp: 15,
      type_id: 13,
    } as MoveAttribute;

    const [preview] = buildMainlinePlayTeamPreview({
      abilityAttributes: [],
      attributes: [],
      members: [member],
      moveAttributes: [moveAttributes],
      natures: [],
      types: [buildType(13, "electric")],
      validBallItemIds: [],
      versionGroupId: null,
      versionGroups: [],
    });

    expect(preview?.ball_item_id).toBeNull();
    expect(preview?.ball_item_name).toBeNull();
    expect(preview?.moves[0]).toMatchObject({
      attributes: moveAttributes,
      id: 85,
      name: "Thunderbolt",
      slot: 1,
      type: { id: 13 },
    });
  });

  it("resolves the latest ability effect and the recorded nature modifiers", () => {
    const member = {
      ability_id: 65,
      form_id: null,
      moves: [],
      nature_id: 14,
    } as unknown as MainlinePlayTeamMemberRow;

    const [preview] = buildMainlinePlayTeamPreview({
      abilityAttributes: [
        {
          ability_id: 65,
          effect_summary: "Earlier effect",
          version_group_start_id: 1,
        } as AbilityAttribute,
        {
          ability_id: 65,
          effect_summary: "Current effect",
          version_group_start_id: 8,
        } as AbilityAttribute,
        {
          ability_id: 65,
          effect_summary: "Future effect",
          version_group_start_id: 60,
        } as AbilityAttribute,
      ],
      attributes: [],
      members: [member],
      moveAttributes: [],
      natures: [
        {
          decreased_stat: "special_defense",
          id: 14,
          increased_stat: "speed",
        } as Nature,
      ],
      types: [],
      validBallItemIds: [],
      versionGroupId: 50,
      versionGroups: [
        { id: 1, sort_order: 1 },
        { id: 8, sort_order: 8 },
        { id: 50, sort_order: 50 },
        { id: 60, sort_order: 60 },
      ] as MainlinePlayTeamRows["versionGroups"],
    });

    expect(preview).toMatchObject({
      abilityEffectSummary: "Current effect",
      natureDecreasedStat: "special_defense",
      natureIncreasedStat: "speed",
    });
  });
});
