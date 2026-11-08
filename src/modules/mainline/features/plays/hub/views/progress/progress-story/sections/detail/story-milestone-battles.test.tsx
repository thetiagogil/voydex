import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import type { MatchupState } from "../../data/story-battle-reading";
import type {
  StoryMatchupBattle,
  StoryMatchupBattleVersion,
} from "../../data/story-matchups-model";
import { StoryMilestoneBattles } from "./story-milestone-battles";

const reading = (state: MatchupState) =>
  ({ state }) as StoryMatchupBattle["reading"];

const version = (key: string, state: MatchupState) =>
  ({
    allies: [],
    key,
    label: key,
    members: [],
    party: null,
    partyLevels: null,
    reading: reading(state),
  }) satisfies StoryMatchupBattleVersion;

const battle = (
  versions: StoryMatchupBattleVersion[],
  state: MatchupState = "strong",
) =>
  ({
    id: "10001/1014",
    isTrainer: true,
    kind: "Rival",
    name: "Blue",
    party: null,
    partyLevels: "Lv. 5",
    portraitUrl: null,
    reading: reading(state),
    specialtyTypes: [],
    state: "ahead",
    versions,
  }) as unknown as StoryMatchupBattle;

const render = (battles: StoryMatchupBattle[]) =>
  renderToStaticMarkup(
    <StoryMilestoneBattles battles={battles} onSelect={() => {}} />,
  );

describe("StoryMilestoneBattles", () => {
  it("shows the range of verdicts while their team depends on an open choice", () => {
    const html = render([
      battle([
        version("bulbasaur", "balanced"),
        version("charmander", "challenging"),
        version("squirtle", "strong"),
      ]),
    ]);

    expect(html).toContain("Strong to challenging");
    expect(html).toContain("Depends on their team");
  });

  it("shows one verdict when every team they could bring reads the same", () => {
    const html = render([
      battle(
        [version("bulbasaur", "strong"), version("squirtle", "strong")],
        "strong",
      ),
    ]);

    expect(html).not.toContain(" to ");
    expect(html).toContain("Strong");
  });
});
