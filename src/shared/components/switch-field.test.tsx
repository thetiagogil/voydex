import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { SwitchField } from "./switch-field";

const render = (props: { checked?: boolean; edited?: boolean } = {}) =>
  renderToStaticMarkup(
    <SwitchField
      label="Shiny"
      checked={props.checked ?? false}
      edited={props.edited}
      onCheckedChange={() => {}}
    />,
  );

describe("SwitchField", () => {
  it("names its switch by the label beside it", () => {
    const html = render();
    const labelId = html.match(/<label[^>]* id="([^"]+)"/)?.[1];

    expect(labelId).toBeTruthy();
    expect(html).toContain(`aria-labelledby="${labelId}"`);
    expect(html).toContain('role="switch"');
  });

  it("puts the name above a large switch saying No or Yes", () => {
    const off = render();
    const on = render({ checked: true });

    expect(off.indexOf("Shiny")).toBeLessThan(off.indexOf('role="switch"'));
    expect(off).toContain('data-size="lg"');
    expect(off).toContain(">No<");
    expect(on).toContain(">Yes<");
    expect(on).toContain("data-checked");
  });

  it("marks a changed field with the edited dot", () => {
    expect(render()).not.toContain("edited");
    expect(render({ edited: true })).toContain(", edited");
  });
});
