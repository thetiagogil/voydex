import { Children, type CSSProperties, type ReactNode } from "react";

import { cn } from "@/shared/utils/cn";

export type TipTone = "danger" | "ok" | "warn";

/* A chip is a number or word on a solid tone; without one it is a quiet fact. */
const toneChipClassNames: Record<TipTone | "plain", string> = {
  danger: "bg-danger-deep text-white",
  ok: "bg-ok-deep text-white",
  plain: "bg-surface-2 text-ink",
  warn: "bg-warn text-ink",
};

const toneDotClassNames: Record<TipTone, string> = {
  danger: "bg-danger",
  ok: "bg-ok",
  warn: "bg-warn",
};

/* A grade's part of a rating's bar: its colour when it is the card's, its pale tone when not. */
const toneZoneClassNames: Record<TipTone, { off: string; on: string }> = {
  danger: { off: "bg-danger-soft", on: "bg-danger" },
  ok: { off: "bg-ok-soft", on: "bg-ok" },
  warn: { off: "bg-warn-soft", on: "bg-warn" },
};

/* `fit` hugs a head with no inside (a Pokémon, a type); the rest are fixed. */
const widthClassNames = {
  fit: "w-fit max-w-72",
  lg: "w-80",
  md: "w-72",
  sm: "w-64",
};

export type TipWidth = keyof typeof widthClassNames;

/*
 * The parts a tip's card is built from, so every tip reads the same: a head
 * on the frame (a picture or icon, the name, one quiet line, a chip or mark
 * at its end) and a white inside holding facts as rows, chips and figures.
 * A tip shows things, not sentences: a sentence is the last resort, and a
 * bare name needs no card at all (it is a tag: `IconTip`).
 */

/*
 * The card's frame, in the colour of what the tip is about: `tint` is a CSS
 * colour for a thing that has one (a type: `var(--type-fire)`), `tone` a
 * verdict. Without either it is the app's pale blue.
 */
export const TipCard = ({
  children,
  className,
  tint,
  tone,
  width = "md",
}: {
  children: ReactNode;
  className?: string;
  tint?: string | null;
  tone?: TipTone;
  width?: TipWidth;
}) => (
  <div
    data-slot="tip-card"
    data-tint={!tone && tint ? "" : undefined}
    data-tone={tone}
    style={!tone && tint ? ({ "--t": tint } as CSSProperties) : undefined}
    className={cn(
      "tip-frame grid max-w-[calc(100vw-2rem)] text-left",
      widthClassNames[width],
      className,
    )}
  >
    {children}
  </div>
);

/* A word or figure on a solid tone: a level, a multiplier, a verdict. */
export const TipChip = ({
  children,
  tone,
}: {
  children: ReactNode;
  tone?: TipTone;
}) => (
  <span
    data-slot="tip-chip"
    className={cn(
      "copy-mark inline-flex h-6 shrink-0 items-center rounded-full px-2 whitespace-nowrap tabular-nums",
      toneChipClassNames[tone ?? "plain"],
    )}
  >
    {children}
  </span>
);

/*
 * The head, on the frame: what the tip is about. `leading` is its picture
 * or icon, `sub` one quiet line under the name, `trailing` a chip or mark.
 */
export const TipHead = ({
  leading,
  name,
  sub,
  trailing,
}: {
  leading?: ReactNode;
  name: ReactNode;
  sub?: ReactNode;
  trailing?: ReactNode;
}) => (
  <div
    data-slot="tip-head"
    className="flex items-center gap-2 px-2 pt-1.5 pb-2 last:pb-1.5"
  >
    {leading}
    <div className="grid min-w-0 flex-1">
      <b className="copy-strong leading-tight wrap-break-word">{name}</b>
      {sub ? (
        <span className="text-ink-2 copy-number leading-snug">{sub}</span>
      ) : null}
    </div>
    {trailing}
  </div>
);

/* The white inside: the facts, one part after another. */
export const TipBody = ({ children }: { children: ReactNode }) => (
  <div data-slot="tip-body" className="tip-panel grid gap-2 p-3">
    {children}
  </div>
);

/* A part's title inside a longer tip: plain bold words, not a small label. */
export const TipTitle = ({ children }: { children: ReactNode }) => (
  <p className="copy-label text-ink">{children}</p>
);

/* A sentence, where nothing shorter says it. */
export const TipText = ({ children }: { children: ReactNode }) => (
  <p className="copy-note text-ink">{children}</p>
);

/* The why, quieter: a caveat, "and 2 more". */
export const TipNote = ({ children }: { children: ReactNode }) => (
  <p className="text-ink-2 copy-number">{children}</p>
);

/* A hairline between two parts of one tip. */
export const TipRule = () => <div aria-hidden className="bg-line h-px" />;

/* A chip beside its fact on one line: "Earned" and a date. */
export const TipLine = ({ children }: { children: ReactNode }) => (
  <p className="copy-label text-ink flex flex-wrap items-center gap-2">
    {children}
  </p>
);

/* A few marks side by side: types, items. */
export const TipMarks = ({ children }: { children: ReactNode }) => (
  <div className="flex flex-wrap items-center gap-1.5">{children}</div>
);

export const TipRows = ({ children }: { children: ReactNode }) => (
  <ul className="divide-line grid divide-y">{children}</ul>
);

/*
 * One row: a picture or mark, a name, a quieter line under it for the
 * detail, and the figure as a chip on the right. `tone` with no chip and no
 * picture is a dot before the name (a list of things to check).
 */
export const TipRow = ({
  chip,
  detail,
  leading,
  name,
  tone,
}: {
  chip?: ReactNode;
  detail?: ReactNode;
  /* A small mark before the name: a type icon, a Pokémon, a cover. */
  leading?: ReactNode;
  name: ReactNode;
  /* `plain` is a quiet chip: a count that is no verdict. */
  tone?: TipTone | "plain";
}) => (
  <li className="flex items-center gap-2 py-1.5 first:pt-0 last:pb-0">
    {leading ??
      (!chip && tone && tone !== "plain" ? (
        <span
          aria-hidden
          className={cn(
            "size-2 shrink-0 rounded-full",
            toneDotClassNames[tone],
          )}
        />
      ) : null)}
    <span className="min-w-0 flex-1">
      <b className="copy-label text-ink block">{name}</b>
      {detail ? (
        <span className="text-ink-2 copy-number block">{detail}</span>
      ) : null}
    </span>
    {chip ? (
      <TipChip tone={tone === "plain" ? undefined : (tone ?? "warn")}>
        {chip}
      </TipChip>
    ) : null}
  </li>
);

/* A thing's figures side by side: a move's power, accuracy and PP. */
export const TipFigures = ({
  figures,
}: {
  figures: { label: string; value: ReactNode }[];
}) => (
  <dl
    className="grid gap-1.5"
    style={{ gridTemplateColumns: `repeat(${figures.length}, minmax(0, 1fr))` }}
  >
    {figures.map((figure) => (
      <div
        key={figure.label}
        className="bg-surface-2 grid justify-items-center rounded-sm px-2 py-1.5"
      >
        <dt className="text-ink-2 copy-number">{figure.label}</dt>
        <dd className="copy-strong tabular-nums">{figure.value}</dd>
      </div>
    ))}
  </dl>
);

/*
 * How a card is rated, closing its tip: a title, the rule in one quiet
 * line, then the grades as the parts of one bar, weakest first as a bar
 * fills, each with its name and where it starts. The part this card got is
 * in its full colour, the others in their pale tone, so the tip draws the
 * same bar the card does.
 */
export const TipRating = ({
  current,
  rule,
  scale,
  title = "How it's rated",
}: {
  /* The grade this card got, by its label. */
  current?: string;
  rule?: ReactNode;
  /* Weakest first. `chip` says where the grade starts ("9+", "all"). */
  scale: { chip: string; label: string; tone: TipTone }[];
  title?: string;
}) => (
  <div className="grid gap-2">
    <TipRule />
    <TipTitle>{title}</TipTitle>
    {rule ? <TipNote>{rule}</TipNote> : null}
    {scale.length ? (
      <ul
        className="grid gap-1"
        style={{
          gridTemplateColumns: `repeat(${scale.length}, minmax(0, 1fr))`,
        }}
      >
        {scale.map((grade) => {
          const isCurrent = grade.label === current;
          const zone = toneZoneClassNames[grade.tone];

          return (
            <li
              key={grade.label}
              aria-current={isCurrent ? "true" : undefined}
              className="grid justify-items-center gap-1 text-center"
            >
              <span
                aria-hidden
                className={cn(
                  "h-3.5 w-full rounded-full",
                  !current || isCurrent ? zone.on : zone.off,
                )}
              />
              <span
                className={cn(
                  "copy-mark",
                  isCurrent ? "text-ink" : "text-ink-2",
                )}
              >
                {grade.label}
              </span>
              <span className="copy-number text-ink-2">{grade.chip}</span>
            </li>
          );
        })}
      </ul>
    ) : null}
  </div>
);

/*
 * A named thing explained: its name on the frame, what it does inside. For
 * a rule, an ability, a setting: a thing with figures or pictures builds its
 * own card from the parts above.
 */
export const TipNamed = ({
  children,
  leading,
  name,
  sub,
  tint,
  tone,
  trailing,
  width,
}: {
  children: ReactNode;
  /* A small mark before the name: a move's type. */
  leading?: ReactNode;
  name: ReactNode;
  sub?: ReactNode;
  tint?: string | null;
  tone?: TipTone;
  trailing?: ReactNode;
  width?: TipWidth;
}) => (
  <TipCard tint={tint} tone={tone} width={width}>
    <TipHead leading={leading} name={name} sub={sub} trailing={trailing} />
    <TipBody>
      {/* Words alone, however many pieces they come in, are one sentence. */}
      {Children.toArray(children).every(
        (child) => typeof child === "string" || typeof child === "number",
      ) ? (
        <TipText>{children}</TipText>
      ) : (
        children
      )}
    </TipBody>
  </TipCard>
);
