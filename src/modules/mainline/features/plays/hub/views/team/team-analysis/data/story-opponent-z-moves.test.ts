import { describe, expect, it } from "vitest";

import type { ZMoveSourceReference } from "@/modules/reference/features/pokemon/data/battle-mechanics";

import type { StoryOpponentMoveRow } from "./story-matchups-model";
import { withZMoveNames } from "./story-opponent-z-moves";

const normalium = { id: 1, name: "Normalium Z" };
const aloraichium = { id: 2, name: "Aloraichium Z" };

const move = (
  id: number,
  name: string,
  typeId: number,
  damageClass = "physical",
): StoryOpponentMoveRow => ({
  accuracy: 100,
  damageClass,
  id,
  name,
  power: damageClass === "status" ? null : 40,
  slug: name.toLowerCase().replaceAll(" ", "-"),
  typeId,
  zMoveName: null,
});

const zMove = (id: number, name: string) => ({
  id,
  name,
  slug: name.toLowerCase().replaceAll(" ", "-"),
  type: null,
});

const zSources: ZMoveSourceReference[] = [
  {
    baseMoveId: null,
    baseTypeId: 1,
    formId: null,
    item: normalium,
    speciesId: null,
    zMove: zMove(500, "Breakneck Blitz"),
  },
  {
    baseMoveId: 600,
    baseTypeId: null,
    formId: null,
    item: aloraichium,
    speciesId: 26,
    zMove: zMove(501, "Stoked Sparksurfer"),
  },
];

const names = (moves: StoryOpponentMoveRow[]) =>
  moves.map((row) => row.zMoveName);

describe("withZMoveNames", () => {
  it("turns every damaging move of a type crystal's type into its Z-Move", () => {
    const moves = withZMoveNames(
      [
        move(1, "Pound", 1),
        move(2, "Aqua Jet", 11),
        move(3, "Tackle", 1),
        move(4, "Growl", 1, "status"),
      ],
      { crystal: normalium, formId: 9, speciesId: 728, zSources },
    );

    expect(names(moves)).toEqual([
      "Breakneck Blitz",
      null,
      "Breakneck Blitz",
      null,
    ]);
  });

  it("gives an exclusive crystal only the move its species knows", () => {
    const moves = [move(600, "Thunderbolt", 13), move(601, "Quick Attack", 1)];

    expect(
      names(
        withZMoveNames(moves, {
          crystal: aloraichium,
          formId: 26,
          speciesId: 26,
          zSources,
        }),
      ),
    ).toEqual(["Stoked Sparksurfer", null]);
    expect(
      names(
        withZMoveNames(moves, {
          crystal: aloraichium,
          formId: 30,
          speciesId: 30,
          zSources,
        }),
      ),
    ).toEqual([null, null]);
  });

  it("leaves moves alone when Voydex has no source for the crystal", () => {
    expect(
      names(
        withZMoveNames([move(1, "Pound", 1)], {
          crystal: { id: 99, name: "Mystery Z" },
          formId: 1,
          speciesId: 1,
          zSources,
        }),
      ),
    ).toEqual([null]);
  });
});
