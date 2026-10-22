import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import {
  groupSelectOptions,
  matchesSelectQuery,
  SelectControl,
} from "./select-control";

const options = [
  { label: "National number", value: "national" },
  { label: "Name", value: "name" },
];

const render = (value: string, resetValue?: string) =>
  renderToStaticMarkup(
    <SelectControl
      ariaLabel="Sort Pokémon"
      options={options}
      placeholder="National number"
      resetValue={resetValue}
      value={value}
      variant="ghost"
    />,
  );

describe("SelectControl", () => {
  it("marks a value moved off the one Reset puts back", () => {
    expect(render("name", "national")).toContain('data-changed="true"');
  });

  it("stays plain on its default, or without one", () => {
    expect(render("national", "national")).not.toContain('data-changed="true"');
    expect(render("name")).not.toContain('data-changed="true"');
  });
});

describe("groupSelectOptions", () => {
  const item = (label: string, group?: string) => ({
    group,
    label,
    value: label,
  });

  it("draws no groups when no option has one", () => {
    expect(groupSelectOptions([item("A"), item("B")])).toEqual([]);
  });

  it("groups in the order each group first appears, keeping option order", () => {
    const groups = groupSelectOptions([
      item("Oran", "Berries"),
      item("Abomasite", "Mega Stones"),
      item("Sitrus", "Berries"),
    ]);

    expect(groups.map((group) => group.value)).toEqual([
      "Berries",
      "Mega Stones",
    ]);
    expect(groups[0]?.items.map((option) => option.label)).toEqual([
      "Oran",
      "Sitrus",
    ]);
  });

  it("leads with options that have no group, under no heading", () => {
    const groups = groupSelectOptions([
      item("Not recorded"),
      item("Oran", "Berries"),
    ]);

    expect(groups.map((group) => group.value)).toEqual(["", "Berries"]);
    expect(groups[0]?.items.map((option) => option.label)).toEqual([
      "Not recorded",
    ]);
  });
});

describe("matchesSelectQuery", () => {
  it("finds an option by its group, so a category lists all its items", () => {
    const oran = { group: "Berries", label: "Oran Berry", value: "1" };
    const charcoal = {
      group: "Type-Enhancing Items",
      label: "Charcoal",
      value: "2",
    };

    expect(matchesSelectQuery(oran, "berries")).toBe(true);
    expect(matchesSelectQuery(charcoal, "berries")).toBe(false);
    expect(matchesSelectQuery(charcoal, "type-enh")).toBe(true);
  });
});
