import type { ReactNode } from "react";

import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

import { Medallion, type MedallionContent } from "./medallion";

type RecordRowProps = {
  className?: string;
  description?: ReactNode;
  /* What the moment carries, under its words: a saved team, before and after. */
  extra?: ReactNode;
  headline: ReactNode;
  kicker: ReactNode;
  medallion: MedallionContent;
  /* A Pokémon that left the team wears a washed-out medallion. */
  medallionFaded?: boolean;
  trailing?: ReactNode;
  /*
   * `row` sits between rules inside a card; `timeline` puts the medallion on
   * a timeline's line and the words in a small card of their own.
   */
  variant?: "row" | "timeline";
  /* When it happened; on a timeline it sits at the right edge of the card's top line. */
  when?: ReactNode;
  /*
   * On History's trail, which side of it the card takes from 1024px, its
   * medallion inside. Narrower, it stays beside the medallion like any
   * timeline row.
   */
  side?: "left" | "right";
  /* Let the line and note wrap in full instead of truncating and clamping. */
  wrap?: boolean;
};

/*
 * One moment: its medallion, a small kicker (what kind and when), the line and
 * an optional body. Inside a card, rows sit between rules with no card of
 * their own; on a timeline, the words sit in a small card beside the
 * medallion, with when it happened at the card's right edge and the kind at
 * its left. A third column appears only for something trailing.
 */
export const RecordRow = ({
  className,
  description,
  extra,
  headline,
  kicker,
  medallion,
  medallionFaded = false,
  side,
  trailing,
  variant = "row",
  when,
  wrap = false,
}: RecordRowProps) => {
  const words = (
    <>
      <p
        className={cn(
          "text-ink-3 text-13 font-bold",
          variant === "timeline" && "flex items-baseline justify-between gap-3",
        )}
      >
        <span>{kicker}</span>
        {variant === "timeline" && when ? (
          <span className="shrink-0 tabular-nums">{when}</span>
        ) : null}
      </p>
      <p
        className={cn(
          "text-ink text-15 font-semibold [&_b]:font-extrabold",
          !wrap && "truncate",
        )}
      >
        {headline}
      </p>
      {description ? (
        <p className={cn("text-ink-2 text-14", !wrap && "line-clamp-2")}>
          {description}
        </p>
      ) : null}
      {extra ? <div className="mt-3">{extra}</div> : null}
    </>
  );

  if (variant === "timeline") {
    return (
      <article
        className={cn(
          /* The medallion sits level with the middle of its card. */
          "relative grid min-w-0 grid-cols-[56px_minmax(0,1fr)] items-center gap-3 sm:gap-4",
          side &&
            "lg:before:trail-tie lg:grid-cols-[minmax(0,1fr)_56px_minmax(0,1fr)] lg:gap-5 lg:before:absolute lg:before:top-[calc(50%-8px)] lg:before:h-4 lg:before:w-12",
          /* A small curve ties the card to the trail. */
          side === "left" && "lg:before:right-1/2",
          side === "right" && "lg:before:left-1/2",
          className,
        )}
      >
        <Medallion
          className={cn(side && "lg:hidden")}
          content={medallion}
          faded={medallionFaded}
        />
        <Card
          size="sm"
          className={cn(
            "min-w-0 gap-0 px-4 py-3 sm:px-5 sm:py-3.5",
            /* Against the trail, at a width a couple of lines read well in. */
            side && "lg:w-full lg:max-w-md",
            side === "left" &&
              "lg:col-start-1 lg:row-start-1 lg:justify-self-end",
            side === "right" &&
              "lg:col-start-3 lg:row-start-1 lg:justify-self-start",
          )}
        >
          {side ? (
            /* Off the trail, the medallion comes inside its card. */
            <div className="min-w-0 lg:grid lg:grid-cols-[auto_minmax(0,1fr)] lg:items-center lg:gap-4">
              <Medallion
                className="hidden lg:grid"
                content={medallion}
                faded={medallionFaded}
              />
              <div className="min-w-0">{words}</div>
            </div>
          ) : (
            words
          )}
        </Card>
      </article>
    );
  }

  return (
    <article
      className={cn(
        "grid min-w-0 items-center gap-4 py-3.5",
        trailing
          ? "grid-cols-[52px_minmax(0,1fr)_auto]"
          : "grid-cols-[52px_minmax(0,1fr)]",
        className,
      )}
    >
      <Medallion content={medallion} faded={medallionFaded} />
      <div className="min-w-0">{words}</div>
      {trailing ? <div className="flex items-center">{trailing}</div> : null}
    </article>
  );
};
