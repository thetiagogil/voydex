import { describe, expect, it } from "vitest";

import type { PokemonDetailVersionGroupScope } from "@/modules/codex/features/pokemon/detail/types";
import type {
  PokemonGenerationDetail,
  PokemonGenerationFormSummary,
  PokemonLearnsetSummary,
  VersionGroup,
} from "@/modules/reference/types";

import { getScopedLearnsets } from "./pokemon-detail-scoped-rows";

const xy = {
  id: 13,
  parent_version_group_id: null,
  sort_order: 13,
} as VersionGroup;
const scope = {
  expansions: [],
  games: [],
  versionGroup: xy,
} as PokemonDetailVersionGroupScope;

const form = (id: number, isDefault: boolean) =>
  ({ form: { id, is_default: isDefault } }) as PokemonGenerationFormSummary;

const learnset = (formId: number, moveId: number) =>
  ({
    learnset: { form_id: formId, move_id: moveId, species_id: 666 },
    sourceVersionGroup: xy,
    targetVersionGroup: xy,
  }) as PokemonLearnsetSummary;

const vivillon = form(66600, true);
const polar = form(66601, false);
const powderMoth = form(66699, false);

describe("getScopedLearnsets", () => {
  it("gives a form with no learnset of its own its default's", () => {
    const generation = {
      forms: [vivillon, polar, powderMoth],
      learnsets: [learnset(66600, 1), learnset(66699, 2)],
    } as unknown as PokemonGenerationDetail;

    expect(
      getScopedLearnsets(generation, scope, polar).map(
        (row) => row.learnset.move_id,
      ),
    ).toEqual([1]);
  });
});
