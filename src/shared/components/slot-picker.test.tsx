import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { SlotPicker, type SlotPickerSlot } from "./slot-picker";

const slot = (overrides: Partial<SlotPickerSlot> = {}): SlotPickerSlot => ({
  label: "Move to slot 1",
  mark: "1",
  value: 1,
  ...overrides,
});

const render = (
  slots: SlotPickerSlot[],
  { label, selected = null }: { label?: string; selected?: number | null } = {},
) =>
  renderToStaticMarkup(
    <SlotPicker
      ariaLabel="Move to slot"
      groups={[{ label, slots }]}
      onPick={() => {}}
      selected={selected}
    />,
  );

describe("SlotPicker", () => {
  it("is one named group of buttons, each read by its label", () => {
    const html = render([
      slot(),
      slot({ label: "Move to slot 2", mark: "2", value: 2 }),
    ]);

    expect(html).toContain('role="group" aria-label="Move to slot"');
    expect(html.match(/<button/g)).toHaveLength(2);
    expect(html).toContain('aria-label="Move to slot 2"');
  });

  it("marks only the picked slot as pressed, in the selected tint", () => {
    const html = render(
      [slot(), slot({ label: "Move to slot 2", mark: "2", value: 2 })],
      { selected: 2 },
    );

    expect(html.match(/aria-pressed="true"/g)).toHaveLength(1);
    expect(html.match(/aria-pressed="false"/g)).toHaveLength(1);
    expect(html.match(/bg-select-soft/g)).toHaveLength(1);
  });

  it("keeps an open slot's place with the dashed circle, and shows its mark", () => {
    const html = render([slot({ mark: "R1" })]);

    expect(html).toContain("empty-slot");
    expect(html).toContain(">R1<");
  });

  it("disables a slot that can't be picked and says why", () => {
    const html = render([
      slot({ disabledReason: "Your team needs at least one Pokémon." }),
    ]);

    expect(html).toContain("disabled");
    expect(html).toContain('title="Your team needs at least one Pokémon."');
  });

  it("draws a group's word above its row when it has one", () => {
    expect(render([slot()], { label: "Reserve" })).toContain("Reserve</p>");
    expect(render([slot()])).not.toContain("<p");
  });

  it("shows who sits in a slot", () => {
    const html = render([
      slot({ image: { name: "Leaf", url: "https://example.test/leaf.png" } }),
    ]);

    expect(html).toContain("leaf.png");
    expect(html).not.toContain("empty-slot");
  });
});
