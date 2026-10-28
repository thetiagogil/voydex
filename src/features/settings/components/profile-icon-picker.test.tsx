import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import type { ProfileIconChoice } from "@/features/settings/types";

import { ProfileIconPicker } from "./profile-icon-picker";

const choices: ProfileIconChoice[] = [
  {
    formId: 100,
    name: "Bulbasaur",
    typeSlug: "grass",
    url: "https://assets.test/b.webp",
  },
  {
    formId: 400,
    name: "Charmander",
    typeSlug: "fire",
    url: "https://assets.test/c.webp",
  },
  { formId: 700, name: "Squirtle", typeSlug: "water", url: null },
];

const render = (value: number | null) =>
  renderToStaticMarkup(
    <ProfileIconPicker
      ariaLabel="Your icon"
      choices={choices}
      name="iconFormId"
      onChange={() => {}}
      value={value}
    />,
  );

describe("ProfileIconPicker", () => {
  it("draws one named button per Pokémon in a labelled group", () => {
    const html = render(null);

    expect(html).toContain('role="group"');
    expect(html).toContain('aria-label="Your icon"');

    for (const choice of choices) {
      expect(html).toContain(`aria-label="${choice.name}"`);
    }
  });

  it("marks only the picked Pokémon as pressed and sends it with the form", () => {
    const html = render(400);

    expect(html.match(/aria-pressed="true"/g)).toHaveLength(1);
    expect(html).toMatch(/aria-label="Charmander"[^>]*aria-pressed="true"/);
    expect(html).toContain('name="iconFormId" value="400"');
  });

  it("sends an empty value while nothing is picked", () => {
    const html = render(null);

    expect(html).not.toContain('aria-pressed="true"');
    expect(html).toContain('name="iconFormId" value=""');
  });

  it("keeps a Pokémon with no picture pickable, by its letter", () => {
    expect(render(null)).toContain("S");
  });

  it("washes each disc with its Pokémon's type", () => {
    const html = render(null);

    expect(html).toContain("--t:var(--type-grass)");
    expect(html).toContain("--t:var(--type-fire)");
    expect(html).toContain("--t:var(--type-water)");
  });
});
