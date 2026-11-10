import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it, vi } from "vitest";

vi.mock("../client/favourite-pokemon-action", () => ({
  setFavouritePokemonAction: vi.fn(),
}));

import { FavouritePokemonButton } from "./favourite-pokemon-button";

const render = (initialFavourite: boolean) =>
  renderToStaticMarkup(
    <FavouritePokemonButton
      formId={2501}
      initialFavourite={initialFavourite}
      name="Pikachu (Partner)"
      speciesId={25}
    />,
  );

describe("FavouritePokemonButton", () => {
  it("is a pressed toggle with a filled heart for a favourite", () => {
    const html = render(true);

    expect(html).toContain('aria-label="Favourite"');
    expect(html).toContain('aria-pressed="true"');
    expect(html).toContain('fill="currentColor"');
  });

  it("is an unpressed toggle with an empty heart otherwise", () => {
    const html = render(false);

    expect(html).toContain('aria-pressed="false"');
    expect(html).not.toContain('fill="currentColor"');
  });
});
