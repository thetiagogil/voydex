import { describe, expect, it } from "vitest";

import { buildMainlinePlayTeamPreview } from "@/modules/mainline/features/plays/hub/tabs/overview/data/play-overview-mappers";
import type { MainlinePlayTeamMemberRow } from "@/modules/mainline/features/plays/hub/types";
import type { PokemonAttributes, Type } from "@/modules/reference/types";

const buildMember = (formId: number | null) => {
  return {
    form_id: formId,
  } as MainlinePlayTeamMemberRow;
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
      types: [
        buildType(10, "electric"),
        buildType(11, "fire"),
        buildType(12, "flying"),
      ],
    });

    expect(preview[0]?.primaryType?.id).toBe(11);
    expect(preview[0]?.secondaryType?.id).toBe(12);
  });

  it("returns null types when a member has no resolvable form", () => {
    const preview = buildMainlinePlayTeamPreview({
      attributes: [],
      members: [buildMember(null), buildMember(999)],
      types: [],
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
});
