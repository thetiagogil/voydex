import type { ReactNode } from "react";

import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

import { Medallion, type MedallionContent } from "./medallion";

type RecordRowProps = {
  className?: string;
  description?: ReactNode;
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
  /* Let the line and note wrap in full instead of truncating and clamping. */
  wrap?: boolean;
};

/*
 * One moment: its medallion, a small kicker (what kind and when), the line and
 * an optional body. Inside a card, rows sit between rules with no card of
 * their own; on a timeline, the words sit in a small card beside the
 * medallion. A third column appears only for something trailing.
 */
export const RecordRow = ({
  className,
  description,
  headline,
  kicker,
  medallion,
  medallionFaded = false,
  trailing,
  variant = "row",
  wrap = false,
}: RecordRowProps) => {
  const words = (
    <>
      <p className="text-ink-3 text-13 font-bold">{kicker}</p>
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
    </>
  );

  if (variant === "timeline") {
    return (
      <article
        className={cn(
          "grid min-w-0 grid-cols-[56px_minmax(0,1fr)] items-start gap-3 sm:gap-4",
          className,
        )}
      >
        <Medallion content={medallion} faded={medallionFaded} />
        <Card size="sm" className="min-w-0 gap-0 px-4 py-3 sm:px-5 sm:py-3.5">
          {words}
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
