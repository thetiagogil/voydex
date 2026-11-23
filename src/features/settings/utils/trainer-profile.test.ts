import { describe, expect, it } from "vitest";

import {
  DEFAULT_TRAINER_NAME,
  getTrainerDraft,
  isTrainerProfileComplete,
} from "./trainer-profile";

const icons = [1, 4, 7];
const empty = { defaultTrainerName: null, displayName: null, iconFormId: null };
const full = { defaultTrainerName: "Red", displayName: "Tiago", iconFormId: 4 };

describe("isTrainerProfileComplete", () => {
  it("needs a display name, a trainer name and an offered icon", () => {
    expect(isTrainerProfileComplete(full, icons)).toBe(true);
    expect(isTrainerProfileComplete(empty, icons)).toBe(false);
  });

  it.each([
    ["display name", { ...full, displayName: null }],
    ["blank display name", { ...full, displayName: "   " }],
    ["trainer name", { ...full, defaultTrainerName: null }],
    ["blank trainer name", { ...full, defaultTrainerName: " " }],
    ["icon", { ...full, iconFormId: null }],
    ["icon no longer offered", { ...full, iconFormId: 99 }],
  ])("is incomplete without a %s", (_missing, profile) => {
    expect(isTrainerProfileComplete(profile, icons)).toBe(false);
  });

  it("doesn't ask for an icon when there are none to offer", () => {
    expect(isTrainerProfileComplete({ ...full, iconFormId: null }, [])).toBe(
      true,
    );
    expect(isTrainerProfileComplete({ ...full, displayName: null }, [])).toBe(
      false,
    );
  });
});

describe("getTrainerDraft", () => {
  it("offers Ash for both names and a random starter to a new trainer", () => {
    expect(getTrainerDraft(empty, icons, () => 0.5)).toEqual({
      defaultTrainerName: DEFAULT_TRAINER_NAME,
      displayName: DEFAULT_TRAINER_NAME,
      iconFormId: 4,
    });
    expect(DEFAULT_TRAINER_NAME).toBe("Ash");
  });

  it("picks every starter, the first and the last included", () => {
    expect(getTrainerDraft(empty, icons, () => 0).iconFormId).toBe(1);
    expect(getTrainerDraft(empty, icons, () => 0.999).iconFormId).toBe(7);
    /* A random number of exactly 1 still lands on a starter. */
    expect(getTrainerDraft(empty, icons, () => 1).iconFormId).toBe(7);
  });

  it("keeps what you already have", () => {
    expect(getTrainerDraft(full, icons, () => 0)).toEqual(full);
  });

  it("starts the trainer name from your display name", () => {
    expect(
      getTrainerDraft({ ...empty, displayName: " Misty " }, icons, () => 0),
    ).toEqual({
      defaultTrainerName: "Misty",
      displayName: "Misty",
      iconFormId: 1,
    });
  });

  it("swaps an icon that is no longer offered for a starter", () => {
    expect(
      getTrainerDraft({ ...full, iconFormId: 99 }, icons, () => 0),
    ).toEqual({ ...full, iconFormId: 1 });
  });

  it("leaves the icon empty when there are none to offer", () => {
    expect(getTrainerDraft(empty, [], () => 0.5).iconFormId).toBeNull();
  });
});
