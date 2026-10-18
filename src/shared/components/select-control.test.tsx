import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { SelectControl } from "./select-control";

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
