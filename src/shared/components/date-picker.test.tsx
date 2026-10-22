import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { DatePicker } from "./date-picker";

const render = (value: string, disabled = false) =>
  renderToStaticMarkup(
    <DatePicker
      disabled={disabled}
      id="started"
      label="Started on"
      value={value}
      onValueChange={() => undefined}
    />,
  );

describe("DatePicker", () => {
  it("shows the day month first and names the field with it", () => {
    const markup = render("2025-05-07");

    expect(markup).toContain("May 7, 2025");
    expect(markup).toContain('aria-label="Started on: May 7, 2025"');
  });

  it("says Not set while no day is picked", () => {
    const markup = render("");

    expect(markup).toContain('aria-label="Started on: Not set"');
    expect(markup).toContain('data-placeholder=""');
  });

  it("reads a value that is not a day as not set", () => {
    expect(render("2025-02-30")).toContain('aria-label="Started on: Not set"');
  });

  it("is a button, never the browser's own date input", () => {
    const markup = render("2025-05-07");

    expect(markup).not.toContain('type="date"');
    expect(markup).toContain('type="button"');
  });

  it("can be disabled", () => {
    expect(render("2025-05-07", true)).toContain("disabled");
  });
});
