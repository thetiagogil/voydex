import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { Switch } from "./switch";

describe("Switch", () => {
  it("says what each side means inside a form-field switch", () => {
    const html = renderToStaticMarkup(
      <Switch size="lg" labels={["No", "Yes"]} aria-label="Shiny" />,
    );

    expect(html).toContain('data-size="lg"');
    expect(html).toContain(">No<");
    expect(html).toContain(">Yes<");
  });

  it("keeps the small sizes to the track and thumb alone", () => {
    const html = renderToStaticMarkup(
      <Switch labels={["No", "Yes"]} aria-label="Only matching" />,
    );

    expect(html).not.toContain(">No<");
    expect(html).not.toContain(">Yes<");
  });

  it("turns green once on, with the check in the thumb of a large one", () => {
    const html = renderToStaticMarkup(
      <Switch size="lg" defaultChecked aria-label="Shiny" />,
    );

    expect(html).toContain("data-checked");
    expect(html).toContain("data-checked:bg-ok");
    expect(html).toContain("opacity-0");
  });
});
