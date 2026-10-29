import { describe, expect, it } from "vitest";

import {
  defaultMotionPreference,
  isMotionPreference,
  motionPreferenceOptions,
  motionPreferences,
  toMotionPreference,
} from "./motion-preference";

describe("motion preference", () => {
  it("follows the device until you choose", () => {
    expect(defaultMotionPreference).toBe("system");
  });

  it("offers every stored value once, Follow device first", () => {
    expect(motionPreferenceOptions.map((option) => option.value)).toEqual([
      ...motionPreferences,
    ]);
    expect(motionPreferenceOptions[0]?.label).toBe("Follow device");
  });

  it("reads an unexpected stored value as Follow device", () => {
    expect(isMotionPreference("reduced")).toBe(true);
    expect(isMotionPreference("slow")).toBe(false);
    expect(toMotionPreference("full")).toBe("full");
    expect(toMotionPreference("slow")).toBe("system");
    expect(toMotionPreference(undefined)).toBe("system");
  });
});
