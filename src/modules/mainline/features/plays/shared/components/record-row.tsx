import type { ReactNode } from "react";

import { cn } from "@/shared/utils/cn";

import { Medallion, type MedallionContent } from "./medallion";

type RecordRowProps = {
  className?: string;
  description?: ReactNode;
  headline: ReactNode;
  kicker: ReactNode;
  medallion: MedallionContent;
  trailing?: ReactNode;
};

/*
 * One moment: its medallion, a small kicker (what kind and when), the line and
 * an optional body. Inside a card, rows sit between rules with no card of
 * their own.
 */
export const RecordRow = ({
  className,
  description,
  headline,
  kicker,
  medallion,
  trailing,
}: RecordRowProps) => {
  return (
    <article
      className={cn(
        "grid min-w-0 grid-cols-[52px_minmax(0,1fr)_auto] items-center gap-4 py-3.5",
        className,
      )}
    >
      <Medallion content={medallion} />
      <div className="min-w-0">
        <p className="text-ink-3 text-[12.5px] font-bold">{kicker}</p>
        <p className="text-ink truncate text-[15.5px] font-semibold [&_b]:font-extrabold">
          {headline}
        </p>
        {description ? (
          <p className="text-ink-2 text-14 line-clamp-2">{description}</p>
        ) : null}
      </div>
      {trailing ? <div className="flex items-center">{trailing}</div> : null}
    </article>
  );
};
