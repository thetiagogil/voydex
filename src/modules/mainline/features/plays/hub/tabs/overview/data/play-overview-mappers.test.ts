import { describe, expect, it } from "vitest";

import {
  buildMainlinePlayTeamPreview,
  getMainlineTimelinePokemonFormIds,
  hydrateMainlineTimelinePokemonImages,
} from "@/modules/mainline/features/plays/hub/tabs/overview/data/play-overview-mappers";
import type {
  MainlinePlayTeamMemberRow,
  MainlinePlayTimelineEvent,
} from "@/modules/mainline/features/plays/hub/types";
import type {
  PokemonAttributes,
  PokemonForm,
  Type,
} from "@/modules/reference/types";

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

describe("Mainline timeline Pokemon image hydration", () => {
  const events = [
    {
      pokemon_refs: [{ form_id: 25, species_name: "Pikachu" }],
      team_snapshots: [
        { form_id: 6, species_name: "Charizard" },
        { form_id: 25, species_name: "Pikachu" },
      ],
    } as unknown as MainlinePlayTimelineEvent,
  ];

  it("collects the unique forms represented by event refs and snapshots", () => {
    expect(getMainlineTimelinePokemonFormIds(events)).toEqual([25, 6]);
  });

  it("adds each form sprite slug without changing the event shape", () => {
    const hydratedEvents = hydrateMainlineTimelinePokemonImages(events, [
      { id: 6, sprite_slug: "charizard" } as PokemonForm,
      { id: 25, sprite_slug: "pikachu" } as PokemonForm,
    ]);

    expect(hydratedEvents[0]?.pokemon_refs).toEqual([
      {
        form_id: 25,
        species_name: "Pikachu",
        sprite_slug: "pikachu",
      },
    ]);
    expect(hydratedEvents[0]?.team_snapshots).toEqual([
      {
        form_id: 6,
        species_name: "Charizard",
        sprite_slug: "charizard",
      },
      {
        form_id: 25,
        species_name: "Pikachu",
        sprite_slug: "pikachu",
      },
    ]);
  });
});
