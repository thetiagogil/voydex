import { describe, expect, it } from "vitest";

import {
  getObjectiveHandoverAfterAnimation,
  getObjectiveHandoverStep,
  type ObjectiveHandover,
} from "./next-objective-handover";

const step = (
  handover: ObjectiveHandover,
  overrides: Partial<Parameters<typeof getObjectiveHandoverStep>[0]> = {},
) =>
  getObjectiveHandoverStep({
    handover,
    hasStamp: true,
    isJustRecorded: false,
    isLatestShown: true,
    isShownCurrent: true,
    ...overrides,
  });

describe("getObjectiveHandoverStep", () => {
  it("slaps a stamp at once when the shown objective is recorded", () => {
    expect(step("idle", { isJustRecorded: true })).toEqual({
      handover: "stamping",
    });
  });

  it("waits for the save when there is no stamp to slap", () => {
    expect(step("idle", { hasStamp: false, isJustRecorded: true })).toEqual({
      handover: "waiting",
    });
  });

  it("keeps waiting until the save brings the next objective", () => {
    expect(step("waiting", { isJustRecorded: true })).toBeNull();
    expect(
      step("waiting", { isJustRecorded: true, isLatestShown: false }),
    ).toEqual({ handover: "leaving" });
  });

  it("stops where it is on Undo or a failed save", () => {
    expect(step("stamping")).toEqual({ handover: "idle" });
    expect(step("waiting", { isLatestShown: false })).toEqual({
      handover: "idle",
    });
  });

  it("shows a new objective straight away when nothing was recorded here", () => {
    expect(
      step("idle", { isLatestShown: false, isShownCurrent: false }),
    ).toEqual({ showLatest: true });
  });

  it("does nothing mid-slide", () => {
    expect(step("leaving", { isLatestShown: false })).toBeNull();
    expect(step("entering")).toBeNull();
  });
});

describe("getObjectiveHandoverAfterAnimation", () => {
  it("waits for the save once the slap has played", () => {
    expect(getObjectiveHandoverAfterAnimation("stamping", "slap")).toEqual({
      handover: "waiting",
    });
    expect(getObjectiveHandoverAfterAnimation("idle", "slap")).toBeNull();
  });

  it("slides the next objective in, then settles", () => {
    expect(getObjectiveHandoverAfterAnimation("leaving", "slide")).toEqual({
      handover: "entering",
      showLatest: true,
    });
    expect(getObjectiveHandoverAfterAnimation("entering", "slide")).toEqual({
      handover: "idle",
    });
    expect(getObjectiveHandoverAfterAnimation("idle", "slide")).toBeNull();
  });
});
