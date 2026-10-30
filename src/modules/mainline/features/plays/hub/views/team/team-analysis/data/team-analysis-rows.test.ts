import { describe, expect, it } from "vitest";

import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamMove,
} from "@/modules/mainline/features/plays/hub/types";
import type { Type } from "@/modules/reference/types";

import { buildTeamAnalysisRows } from "./team-analysis-rows";

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

describe("buildTeamAnalysisRows coverage", () => {
  const typeOf = (slug: string, id: number) =>
    ({ id, name: slug, slug }) as Type;
  const types = [typeOf("grass", 1), typeOf("water", 2), typeOf("fire", 3)];
  const member = (
    name: string,
    moves: MainlinePlayTeamMove[],
  ): MainlinePlayTeamMember =>
    ({
      moves,
      nickname: name,
      play_pokemon_id: name,
      primaryType: typeOf("grass", 1),
      secondaryType: null,
      slot: 1,
      tera_type_slug: null,
    }) as unknown as MainlinePlayTeamMember;

  it("names who hits a type super effectively, and with which moves", () => {
    const { coverageRows } = buildTeamAnalysisRows({
      generationOrder: 6,
      members: [
        member("Bulba", [
          move("vine-whip", "physical", 45, "grass"),
          move("tackle", "physical", 40, "normal"),
        ]),
        member("Squirtle", [move("flamethrower", "special", 90, "fire")]),
      ],
      types,
    });
    const water = coverageRows.find(
      (row) => row.defendingType.slug === "water",
    );
    const grass = coverageRows.find(
      (row) => row.defendingType.slug === "grass",
    );

    expect(water?.hits).toEqual([
      {
        imageUrl: null,
        memberId: "Bulba",
        memberName: "Bulba",
        moves: [{ name: "vine-whip", stab: true, typeSlug: "grass" }],
      },
    ]);
    expect(water?.moveCount).toBe(1);
    expect(grass?.hits.map((hit) => hit.memberName)).toEqual(["Squirtle"]);
  });

  it("agrees with the count, and leaves out status moves", () => {
    const { coverageRows } = buildTeamAnalysisRows({
      generationOrder: 6,
      members: [
        member("Bulba", [
          move("vine-whip", "physical", 45, "grass"),
          move("razor-leaf", "physical", 55, "grass"),
          move("leech-seed", "status", null, "grass"),
        ]),
      ],
      types,
    });

    for (const row of coverageRows) {
      expect(row.hits.reduce((sum, hit) => sum + hit.moves.length, 0)).toBe(
        row.moveCount,
      );
    }
    expect(
      coverageRows.find((row) => row.defendingType.slug === "water")?.hits[0]
        .moves,
    ).toHaveLength(2);
  });
});
