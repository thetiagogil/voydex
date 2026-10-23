import { describe, expect, it } from "vitest";

import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamMove,
} from "@/modules/mainline/features/plays/hub/types";
import type { Type } from "@/modules/reference/types";

import { getDamagingMoveTypeSlug } from "./team-analysis-rows";

const move = (
  slug: string,
  damageClass: string,
  power: number | null,
  typeSlug = "grass",
): MainlinePlayTeamMove =>
  ({
    attributes: { damage_class: damageClass, power },
    id: 1,
    name: slug,
    slot: 1,
    slug,
    type: { slug: typeSlug },
  }) as MainlinePlayTeamMove;

const user = (
  typeSlugs: string[],
  teraTypeSlug: string | null = null,
): Pick<
  MainlinePlayTeamMember,
  "primaryType" | "secondaryType" | "tera_type_slug"
> => ({
  primaryType: typeSlugs[0] ? ({ slug: typeSlugs[0] } as Type) : null,
  secondaryType: typeSlugs[1] ? ({ slug: typeSlugs[1] } as Type) : null,
  tera_type_slug: teraTypeSlug,
});

const grassUser = user(["grass"]);

describe("getDamagingMoveTypeSlug", () => {
  it("counts a move whose power varies, such as Grass Knot", () => {
    expect(
      getDamagingMoveTypeSlug(move("grass-knot", "special", null), grassUser),
    ).toBe("grass");
  });

  it("leaves out status and set-damage moves", () => {
    expect(
      getDamagingMoveTypeSlug(move("leech-seed", "status", null), grassUser),
    ).toBe(null);
    expect(
      getDamagingMoveTypeSlug(
        move("seismic-toss", "physical", null),
        grassUser,
      ),
    ).toBe(null);
  });

  it("hits with the type the move takes from its user", () => {
    expect(
      getDamagingMoveTypeSlug(
        move("judgment", "special", 100, "normal"),
        user(["dragon"]),
      ),
    ).toBe("dragon");
    expect(
      getDamagingMoveTypeSlug(
        move("tera-blast", "special", 80, "normal"),
        user(["water"], "electric"),
      ),
    ).toBe("electric");
    expect(
      getDamagingMoveTypeSlug(
        move("tera-blast", "special", 80, "normal"),
        user(["water"]),
      ),
    ).toBe("normal");
  });

  it("leaves out Hidden Power, whose type isn't recorded", () => {
    expect(
      getDamagingMoveTypeSlug(
        move("hidden-power", "special", 60, "normal"),
        grassUser,
      ),
    ).toBe(null);
  });
});
