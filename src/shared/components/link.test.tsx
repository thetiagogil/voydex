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
  /*
   * Pages are plain files: Next.js's own prefetch reads them whole. A full
   * prefetch asks for a server render, which a file host answers with the
   * page's HTML, and the click then goes nowhere.
   */
  it("prefetches the page's files, never a server render", () => {
    renderToStaticMarkup(<Link href="/codex/pokemon">Pokémon</Link>);
    expect(nextLink).toHaveBeenLastCalledWith(
      expect.objectContaining({ href: "/codex/pokemon", prefetch: undefined }),
    );

    renderToStaticMarkup(
      <Link href="/codex/pokemon" prefetch>
        Pokémon
      </Link>,
    );
    expect(nextLink).toHaveBeenLastCalledWith(
      expect.objectContaining({ prefetch: undefined }),
    );
  });

  it("keeps a link that asks for no prefetch", () => {
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
