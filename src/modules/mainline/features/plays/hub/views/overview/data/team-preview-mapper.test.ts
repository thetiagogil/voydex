import { describe, expect, it } from "vitest";

import { buildMainlinePlayOverviewTeamPreview } from "./team-preview-mapper";
import type {
  MainlinePlayTeamPreviewAttribute,
  MainlinePlayTeamPreviewRows,
  MainlinePlayTeamPreviewType,
} from "@/modules/mainline/features/plays/hub/types";

describe("buildMainlinePlayOverviewTeamPreview", () => {
  it("hydrates the latest generation-specific types without Team workspace data", () => {
    const rows: MainlinePlayTeamPreviewRows = {
      attributes: [
        {
          form_id: 25,
          generation_start_id: 1,
          primary_type_id: 10,
          secondary_type_id: null,
        } as MainlinePlayTeamPreviewAttribute,
        {
          form_id: 25,
          generation_start_id: 3,
          primary_type_id: 11,
          secondary_type_id: 12,
        } as MainlinePlayTeamPreviewAttribute,
      ],
      members: [
        {
          form_id: 25,
          form_name: "Default",
          is_shiny: false,
          level: 50,
          nickname: "Sparky",
          play_pokemon_id: "member-id",
          roster_state_slug: "active",
          slot: 1,
          species_name: "Pikachu",
          species_slug: "pikachu",
          sprite_slug: "pikachu",
        },
      ],
      types: [
        { id: 10, name: "Electric", slug: "electric" },
        { id: 11, name: "Fire", slug: "fire" },
        { id: 12, name: "Flying", slug: "flying" },
      ] satisfies MainlinePlayTeamPreviewType[],
    };

    const [member] = buildMainlinePlayOverviewTeamPreview(rows);

    expect(member).toMatchObject({
      nickname: "Sparky",
      primaryType: { id: 11 },
      secondaryType: { id: 12 },
    });
  });

  it("keeps unresolved types explicit", () => {
    const rows: MainlinePlayTeamPreviewRows = {
      attributes: [],
      members: [
        {
          form_id: null,
          form_name: null,
          is_shiny: null,
          level: null,
          nickname: null,
          play_pokemon_id: "member-id",
          roster_state_slug: "active",
          slot: 1,
          species_name: null,
          species_slug: null,
          sprite_slug: null,
        },
      ],
      types: [],
    };

    expect(buildMainlinePlayOverviewTeamPreview(rows)[0]).toMatchObject({
      primaryType: null,
      secondaryType: null,
    });
  });
});
