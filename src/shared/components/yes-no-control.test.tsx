import { isValidElement, type ReactElement, type ReactNode } from "react";
import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { YesNoControl } from "./yes-no-control";

type SegmentProps = { onValueChange: (value: string) => void };

/* The segmented control the yes-no wraps, found without a browser. */
const segmentsOf = (node: ReactNode): SegmentProps | null => {
  if (!isValidElement<SegmentProps>(node)) return null;

  const element = node as ReactElement<SegmentProps>;

  return typeof element.props.onValueChange === "function"
    ? element.props
    : null;
};

describe("YesNoControl", () => {
  it("is a named group of No and Yes, the answer pressed", () => {
    const yes = renderToStaticMarkup(
      <YesNoControl ariaLabel="Shiny" value onValueChange={() => {}} />,
    );
    const no = renderToStaticMarkup(
      <YesNoControl ariaLabel="Shiny" value={false} onValueChange={() => {}} />,
    );

    expect(yes).toContain('role="group" aria-label="Shiny"');
    expect(yes).toMatch(/aria-pressed="true"[^>]*>Yes</);
    expect(no).toMatch(/aria-pressed="true"[^>]*>No</);
  });

  it("colours Yes green and No a plain white sticker", () => {
    const yes = renderToStaticMarkup(
      <YesNoControl ariaLabel="Shiny" value onValueChange={() => {}} />,
    );
    const no = renderToStaticMarkup(
      <YesNoControl ariaLabel="Shiny" value={false} onValueChange={() => {}} />,
    );

    expect(yes).toContain("bg-ok");
    expect(yes).not.toContain("bg-action");
    expect(no).toContain("bg-surface bubble");
    expect(no).not.toContain("bg-ok");
  });

  it("hands back a boolean", () => {
    const answers: boolean[] = [];
    const segments = segmentsOf(
      YesNoControl({
        ariaLabel: "Shiny",
        value: false,
        onValueChange: (answer) => answers.push(answer),
      }),
    )!;

    segments.onValueChange("yes");
    segments.onValueChange("no");

    expect(answers).toEqual([true, false]);
  });
});
