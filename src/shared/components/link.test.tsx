import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it, vi } from "vitest";

import { Link } from "@/shared/components/link";

const nextLink = vi.hoisted(() => vi.fn());

vi.mock("next/link", () => ({
  default: (props: { children: React.ReactNode }) => {
    nextLink(props);
    return <a>{props.children}</a>;
  },
}));

describe("Link", () => {
  /* So opening a page on screen never waits on the server. */
  it("fetches its whole page ahead of the click", () => {
    renderToStaticMarkup(<Link href="/codex/pokemon">Pokémon</Link>);

    expect(nextLink).toHaveBeenLastCalledWith(
      expect.objectContaining({ href: "/codex/pokemon", prefetch: true }),
    );
  });

  it("keeps a link's own prefetch choice", () => {
    renderToStaticMarkup(
      <Link href="/codex/pokemon" prefetch={false}>
        Pokémon
      </Link>,
    );

    expect(nextLink).toHaveBeenLastCalledWith(
      expect.objectContaining({ prefetch: false }),
    );
  });
});
