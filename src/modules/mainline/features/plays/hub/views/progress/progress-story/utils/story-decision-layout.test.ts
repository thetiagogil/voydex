import { describe, expect, it } from "vitest";

import { getStoryDecisionOptionSpanClassName } from "./story-decision-layout";

const getLayout = (optionCount: number) =>
  Array.from({ length: optionCount }, (_, optionIndex) =>
    getStoryDecisionOptionSpanClassName(optionCount, optionIndex),
  );

describe("getStoryDecisionOptionSpanClassName", () => {
  it("uses two equal columns for two choices", () => {
    expect(getLayout(2)).toEqual(["sm:col-span-3", "sm:col-span-3"]);
  });

  it("uses three equal columns for three choices", () => {
    expect(getLayout(3)).toEqual([
      "sm:col-span-2",
      "sm:col-span-2",
      "sm:col-span-2",
    ]);
  });

  it("uses a balanced two-by-two grid for four choices", () => {
    expect(getLayout(4)).toEqual([
      "sm:col-span-3",
      "sm:col-span-3",
      "sm:col-span-3",
      "sm:col-span-3",
    ]);
  });

  it("uses three choices above two full-row choices for five choices", () => {
    expect(getLayout(5)).toEqual([
      "sm:col-span-2",
      "sm:col-span-2",
      "sm:col-span-2",
      "sm:col-span-3",
      "sm:col-span-3",
    ]);
  });

  it("balances incomplete final rows for other choice counts", () => {
    expect(getLayout(1)).toEqual(["sm:col-span-6"]);
    expect(getLayout(6)).toEqual(Array(6).fill("sm:col-span-2"));
    expect(getLayout(7)).toEqual([
      ...Array(6).fill("sm:col-span-2"),
      "sm:col-span-6",
    ]);
  });
});
