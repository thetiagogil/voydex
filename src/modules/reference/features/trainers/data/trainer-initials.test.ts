import { describe, expect, it } from "vitest";

import { getTrainerInitials } from "@/modules/reference/features/trainers/data/trainer-initials";

describe("getTrainerInitials", () => {
  it("reads one trainer by the first letter of each name", () => {
    expect(getTrainerInitials("Katy")).toBe("K");
    expect(getTrainerInitials("Lt. Surge")).toBe("LS");
    expect(getTrainerInitials("Commander Kamado")).toBe("CK");
  });

  it("reads a pair or an either-or as both of them", () => {
    expect(getTrainerInitials("Jessie & James")).toBe("JJ");
    expect(getTrainerInitials("Drayden / Iris")).toBe("DI");
    expect(getTrainerInitials("Taunie / Urbain")).toBe("TU");
  });

  it("skips words that aren't names", () => {
    expect(getTrainerInitials("Hau, Gladion & the Masked Royal")).toBe("HG");
    expect(getTrainerInitials("rival")).toBe("R");
  });
});
