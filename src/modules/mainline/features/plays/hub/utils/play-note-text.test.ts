import { describe, expect, it } from "vitest";

import { toPlayNoteText } from "./play-note-text";

describe("toPlayNoteText", () => {
  it("keeps a one-line note as its title only", () => {
    expect(toPlayNoteText("  Saved before Leon  ")).toEqual({
      body: null,
      title: "Saved before Leon",
    });
  });

  it("titles a longer note by its first line and keeps the rest as the body", () => {
    expect(toPlayNoteText("Wild Area\nCaught a shiny Wooloo!")).toEqual({
      body: "Wild Area\nCaught a shiny Wooloo!",
      title: "Wild Area",
    });
  });

  it("clips a long first line at a word", () => {
    const { body, title } = toPlayNoteText(`${"word ".repeat(60)}end`);

    expect(title.length).toBeLessThanOrEqual(200);
    expect(title.endsWith("word…")).toBe(true);
    expect(body).toBe(`${"word ".repeat(60)}end`);
  });

  it("refuses an empty or oversized note", () => {
    expect(() => toPlayNoteText("   ")).toThrow("Write something");
    expect(() => toPlayNoteText("a".repeat(2001))).toThrow("2,000");
  });
});
