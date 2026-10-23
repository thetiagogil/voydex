import type { ReactNode } from "react";

import { cn } from "@/shared/utils/cn";

export type TipTone = "danger" | "ok" | "warn";

/* The dot flags a row or head; the chip is a number or word on a solid tone. */
const toneDotClassNames: Record<TipTone, string> = {
  danger: "bg-danger-line",
  ok: "bg-ok-line",
  warn: "bg-warn",
};

const toneChipClassNames: Record<TipTone, string> = {
  danger: "bg-danger-deep text-white",
  ok: "bg-ok-deep text-white",
  warn: "bg-warn text-ink",
};

const ToneDot = ({ tone }: { tone: TipTone }) => (
  <span
    aria-hidden
    className={cn(
      "mt-1.25 size-2 shrink-0 rounded-full",
      toneDotClassNames[tone],
    )}
  />
);

/*
 * The parts a tip's content is built from, so every ink tip reads the same:
 * a head (what it says, on a tone dot), rows (one thing each, with a chip for
 * its figure) and a note (the why, quieter). A tip with one short sentence
 * needs none of them. They sit on the ink surface, so they set their own light
 * text.
 */
export const TipStack = ({
  children,
  className,
}: {
  children: ReactNode;
  className?: string;
}) => <div className={cn("grid gap-1.5 text-left", className)}>{children}</div>;

export const TipHead = ({
  children,
  tone,
}: {
  children: ReactNode;
  tone?: TipTone;
}) => (
  <p className="flex items-start gap-2 font-extrabold text-white">
    {tone ? <ToneDot tone={tone} /> : null}
    <span className="min-w-0">{children}</span>
  </p>
);

export const TipRows = ({ children }: { children: ReactNode }) => (
  <ul className="divide-on-ink/20 grid divide-y">{children}</ul>
);

/*
 * One row: a name, a quieter line under it for the detail, and the figure as
 * a chip on the right. `tone` with no chip is a dot before the name (a list
 * of things to check).
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
  /* A small mark before the name: a type icon, a Pokémon. */
  leading?: ReactNode;
  name: ReactNode;
  tone?: TipTone;
}) => (
  <li className="flex items-start gap-2 py-1.5 first:pt-0 last:pb-0">
    {leading ?? (!chip && tone ? <ToneDot tone={tone} /> : null)}
    <span className="min-w-0 flex-1">
      <b className="block text-white">{name}</b>
      {detail ? (
        <span className="text-on-ink/75 text-12 block">{detail}</span>
      ) : null}
    </span>
    {chip ? (
      <span
        className={cn(
          "text-12 shrink-0 rounded-full px-2 leading-5 font-extrabold tabular-nums",
          toneChipClassNames[tone ?? "warn"],
        )}
      >
        {chip}
      </span>
    ) : null}
  </li>
);

export const TipNote = ({ children }: { children: ReactNode }) => (
  <p className="text-on-ink/75 text-12">{children}</p>
);

export const TipText = ({ children }: { children: ReactNode }) => (
  <p className="text-on-ink">{children}</p>
);

/* A named thing explained: its name as the head, what it does under it. */
export const TipNamed = ({
  children,
  leading,
  name,
  tone,
}: {
  children: ReactNode;
  /* A small mark before the name: a move's type. */
  leading?: ReactNode;
  name: ReactNode;
  tone?: TipTone;
}) => (
  <TipStack>
    <div className="flex items-center gap-2">
      {leading}
      <TipHead tone={tone}>{name}</TipHead>
    </div>
    <TipText>{children}</TipText>
  </TipStack>
);

/*
 * A titled part of a longer tip ("Your team", "How it's rated"): a small
 * heading over its rows, with a hairline between the parts.
 */
export const TipSection = ({
  children,
  title,
}: {
  children: ReactNode;
  title: string;
}) => (
  <section className="border-on-ink/20 grid gap-1.5 border-t pt-2 first:border-t-0 first:pt-0">
    <h4 className="text-on-ink/75 text-12 font-extrabold">{title}</h4>
    {children}
  </section>
);
