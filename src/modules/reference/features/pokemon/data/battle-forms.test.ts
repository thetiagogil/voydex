import { describe, expect, it } from "vitest";

import { withoutBattleForms } from "@/modules/reference/features/pokemon/data/battle-forms";

describe("withoutBattleForms", () => {
  it("drops battle forms and keeps every other form in order", () => {
    const forms = [
      { id: 600, slug: "charizard" },
      { id: 601, slug: "mega-charizard-x" },
      { id: 602, slug: "mega-charizard-y" },
      { id: 603, slug: "gigantamax-charizard" },
      { id: 2601, slug: "alolan-raichu" },
    ];

    expect(withoutBattleForms(forms, new Set([601, 602, 603]))).toEqual([
      { id: 600, slug: "charizard" },
      { id: 2601, slug: "alolan-raichu" },
    ]);
  });

  it("keeps every form when there are no battle forms", () => {
    const forms = [{ id: 2500 }, { id: 2501 }];

    expect(withoutBattleForms(forms, new Set())).toEqual(forms);
  });
});
