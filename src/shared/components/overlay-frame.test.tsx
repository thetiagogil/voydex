import type { ReactNode } from "react";
import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import {
  OverlayFrame,
  type OverlayFrameProps,
  type OverlayPlacement,
} from "./overlay-frame";
import { Dialog } from "./ui/dialog";

const render = (
  placement: OverlayPlacement,
  props: Partial<OverlayFrameProps> = {},
  children: ReactNode = "Body",
) =>
  renderToStaticMarkup(
    <Dialog open>
      <OverlayFrame placement={placement} title="Rename Plan" {...props}>
        {children}
      </OverlayFrame>
    </Dialog>,
  );

/* Where `needle` first appears, to compare what sits above what. */
const at = (markup: string, needle: string) => {
  const index = markup.indexOf(needle);

  expect(index, `"${needle}" is in the markup`).toBeGreaterThanOrEqual(0);

  return index;
};

describe("OverlayFrame", () => {
  it.each(["dialog", "side", "bottom"] as const)(
    "pins the title above the body on a %s",
    (placement) => {
      const markup = render(placement, { description: "A short line" });

      expect(markup).toContain('data-slot="overlay-header"');
      expect(markup).toMatch(/<h2[^>]*tabindex="-1"[^>]*>Rename Plan<\/h2>/);
      expect(at(markup, "Rename Plan")).toBeLessThan(
        at(markup, 'data-slot="overlay-body"'),
      );
      expect(at(markup, "A short line")).toBeLessThan(
        at(markup, 'data-slot="overlay-body"'),
      );
    },
  );

  it("names a dialog and a sheet the same way", () => {
    expect(render("dialog")).toContain('data-slot="dialog-title"');
    expect(render("side")).toContain('data-slot="sheet-title"');
    expect(render("bottom")).toContain('data-slot="sheet-title"');
  });

  it("starts the header's hairline transparent and keeps the body scrolling alone", () => {
    const markup = render("side");

    expect(markup).toContain("border-transparent");
    expect(markup).toContain("overflow-y-auto");
    expect(markup).not.toMatch(/data-slot="overlay-header"[^>]*overflow/);
  });

  it("draws no footer bar without a footer", () => {
    expect(render("dialog")).not.toContain("overlay-footer");
  });

  it("pins the footer under the body", () => {
    const markup = render("dialog", { footer: <button>Save</button> });

    expect(at(markup, 'data-slot="overlay-footer"')).toBeGreaterThan(
      at(markup, 'data-slot="overlay-body"'),
    );
    expect(markup).toContain("justify-end");
  });

  it("shares the footer's width only on a bottom sheet", () => {
    const footer = <button>Save</button>;

    expect(render("bottom", { footer })).toContain("*:flex-1");
    expect(render("side", { footer })).not.toContain("*:flex-1");
    expect(render("dialog", { footer })).not.toContain("*:flex-1");
    expect(render("bottom", { footer })).toContain("safe-area-inset-bottom");
  });

  it("keeps a hidden title and description for screen readers only", () => {
    const markup = render("dialog", {
      description: "Compared with this Play",
      titleHidden: true,
    });

    expect(markup).toMatch(/<h2[^>]*class="[^"]*sr-only[^"]*"/);
    expect(markup).toMatch(/<p[^>]*class="[^"]*sr-only[^"]*"[^>]*>Compared/);
    expect(markup).not.toContain('data-slot="overlay-header"');
  });

  it("can hide just the description", () => {
    const markup = render("dialog", {
      description: "Filters help",
      descriptionHidden: true,
    });

    expect(markup).toMatch(
      /<p[^>]*class="[^"]*sr-only[^"]*"[^>]*>Filters help/,
    );
    expect(markup).toContain('data-slot="overlay-header"');
  });

  it("places the title inside a head, edge to edge on wide screens", () => {
    const head: OverlayFrameProps["head"] = (title, layout) => (
      <div data-testid="head" data-layout={layout}>
        {title}
      </div>
    );
    const markup = render("side", { head, headBleed: true });

    expect(markup).toContain('data-layout="flush"');
    expect(at(markup, 'data-testid="head"')).toBeLessThan(
      at(markup, "Rename Plan"),
    );
    expect(at(markup, "Rename Plan")).toBeLessThan(
      at(markup, 'data-slot="overlay-body"'),
    );
  });

  it("scrolls a head with the body on a bottom sheet, as a card", () => {
    const head: OverlayFrameProps["head"] = (title, layout) => (
      <div data-testid="head" data-layout={layout}>
        {title}
      </div>
    );
    const markup = render("bottom", { head });

    expect(markup).toContain('data-layout="inset"');
    expect(markup).not.toContain('data-slot="overlay-header"');
    expect(at(markup, 'data-testid="head"')).toBeGreaterThan(
      at(markup, 'data-slot="overlay-body"'),
    );
  });

  it("pins a head with a toolbar on a bottom sheet", () => {
    const head: OverlayFrameProps["head"] = (title) => (
      <div data-testid="head">{title}</div>
    );
    const markup = render("bottom", {
      head,
      toolbar: <input aria-label="Search" />,
    });

    expect(at(markup, 'data-testid="head"')).toBeLessThan(
      at(markup, 'data-slot="overlay-body"'),
    );
    expect(at(markup, 'aria-label="Search"')).toBeLessThan(
      at(markup, 'data-slot="overlay-body"'),
    );
  });

  it("still names an overlay whose head draws its own title", () => {
    const markup = render("dialog", {
      head: (title) => (
        <div data-testid="hero">{title === null ? "none" : "t"}</div>
      ),
      headBleed: true,
      titleHidden: true,
    });

    expect(markup).toContain(">none<");
    expect(markup).toMatch(/<h2[^>]*>Rename Plan<\/h2>/);
  });

  it("pins a toolbar under the title", () => {
    const markup = render("side", { toolbar: <input aria-label="Search" /> });

    expect(at(markup, "Rename Plan")).toBeLessThan(
      at(markup, 'aria-label="Search"'),
    );
    expect(at(markup, 'aria-label="Search"')).toBeLessThan(
      at(markup, 'data-slot="overlay-body"'),
    );
  });

  it("wraps the header, body and footer in one form", () => {
    const markup = render("dialog", {
      footer: <button type="submit">Save</button>,
      form: { id: "rename" },
    });

    expect(markup).toMatch(/<form[^>]*id="rename"/);
    expect(at(markup, "<form")).toBeLessThan(at(markup, "Rename Plan"));
    expect(at(markup, 'type="submit"')).toBeLessThan(at(markup, "</form>"));
  });

  it("puts bodyClassName on the content, not the scroller", () => {
    const markup = render("side", { bodyClassName: "grid gap-6" });

    expect(markup).toMatch(/<div class="grid gap-6">Body<\/div>/);
  });

  it("shows the meta line under the title", () => {
    const markup = render("side", { meta: <i>Water</i>, description: "Desc" });

    expect(at(markup, "Rename Plan")).toBeLessThan(at(markup, "<i>Water</i>"));
    expect(at(markup, "<i>Water</i>")).toBeLessThan(at(markup, "Desc"));
  });
});
