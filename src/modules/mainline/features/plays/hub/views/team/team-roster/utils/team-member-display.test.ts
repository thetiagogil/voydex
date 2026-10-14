import { describe, expect, it } from "vitest";

import { getTeamMemberEditorHeadLine } from "./team-member-display";

describe("getTeamMemberEditorHeadLine", () => {
  it("shows the saved species and level", () => {
    expect(
      getTeamMemberEditorHeadLine({ level: 48, species_name: "Rillaboom" }),
    ).toBe("Rillaboom · Lv. 48");
  });

  it("leaves out a level that wasn't recorded", () => {
    expect(
      getTeamMemberEditorHeadLine({ level: null, species_name: "Rillaboom" }),
    ).toBe("Rillaboom");
  });
});
