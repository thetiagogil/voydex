import type { ReactNode } from "react";

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
  /* Let the line and note wrap in full instead of truncating and clamping. */
  wrap?: boolean;
};

/*
 * One moment: its medallion, a small kicker (what kind and when), the line and
 * an optional body. Inside a card, rows sit between rules with no card of
 * their own. A third column appears only for something trailing.
 */
export const RecordRow = ({
  className,
  description,
  headline,
  kicker,
  medallion,
  medallionFaded = false,
  trailing,
  wrap = false,
}: RecordRowProps) => {
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
      <div className="min-w-0">
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
      </div>
      {trailing ? <div className="flex items-center">{trailing}</div> : null}
    </article>
  );
};
