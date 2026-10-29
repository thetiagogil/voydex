import { describe, expect, it } from "vitest";

import {
  defaultMotionPreference,
  isMotionPreference,
  motionPreferenceOptions,
  motionPreferences,
  toMotionPreference,
} from "./motion-preference";

describe("motion preference", () => {
  it("is Full until you choose", () => {
    expect(defaultMotionPreference).toBe("full");
  });

  it("offers every stored value once, Full first", () => {
    expect(motionPreferenceOptions.map((option) => option.value)).toEqual([
      ...motionPreferences,
    ]);
    expect(motionPreferenceOptions[0]?.label).toBe("Full");
  });

  it("reads an unexpected stored value as Full", () => {
    expect(isMotionPreference("none")).toBe(true);
    expect(isMotionPreference("reduced")).toBe(false);
    expect(toMotionPreference("none")).toBe("none");
    expect(toMotionPreference("system")).toBe("full");
    expect(toMotionPreference(undefined)).toBe("full");
  });
});
