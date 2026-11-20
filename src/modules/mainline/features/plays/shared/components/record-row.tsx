import type { ReactNode } from "react";

import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

import { Medallion, type MedallionContent } from "./medallion";

type RecordRowProps = {
  className?: string;
  description?: ReactNode;
  headline: ReactNode;
  kicker: ReactNode;
  medallion?: MedallionContent;
  /* A Pokémon that left the team wears a washed-out medallion. */
  medallionFaded?: boolean;
  /* The moment card opens something: it takes the edge and the lift. */
  opens?: boolean;
  /*
   * A picture in the medallion's place, where the moments shown come from
   * several Plays and each one's cover says which (Home).
   */
  picture?: ReactNode;
  trailing?: ReactNode;
  /*
   * `card` is the moment card, the one way a moment is drawn: its picture
   * inside a small card, the kind and when on the top line, what happened
   * in bold, then the line that explains it. `timeline` is the same card on
   * a `PlayTimeline`: below 1024px its medallion sits on the line beside
   * the card; from 1024px it comes inside, as in `card`. `row` sits between
   * rules inside a card, with no card of its own (the front page's example).
   */
  variant?: "card" | "row" | "timeline";
  /*
   * When it happened, at the right edge of the card's top line, smaller and
   * lighter than the kind.
   */
  when?: ReactNode;
  /* Let the line and note wrap in full instead of truncating and clamping. */
  wrap?: boolean;
};

/*
 * One moment, drawn one way everywhere (History, a Play's Overview, a
 * Pokémon's own moments, Home): its picture, a small kicker (what kind),
 * when, what happened in bold and an optional line that explains it. On the
 * wall it is a white card; inside another card it takes the inset fill, as
 * every card does.
 */
export const RecordRow = ({
  className,
  description,
  headline,
  kicker,
  medallion,
  medallionFaded = false,
  opens = false,
  picture,
  trailing,
  variant = "row",
  when,
  wrap = false,
}: RecordRowProps) => {
  const isCard = variant !== "row";
  const words = (
    <>
      <p
        className={cn(
          "text-ink-3 copy-label",
          isCard && "flex items-baseline justify-between gap-3",
        )}
      >
        <span className={cn(isCard && "min-w-0 truncate")}>{kicker}</span>
        {isCard && when ? (
          /* Smaller and lighter than the kind, so it stays out of the way. */
          <span className="text-12 shrink-0 font-medium tabular-nums">
            {when}
          </span>
        ) : null}
      </p>
      <p className={cn("text-ink copy-strong", !wrap && "truncate")}>
        {headline}
      </p>
      {description ? (
        <p className={cn("text-ink-2 copy-note", !wrap && "line-clamp-2")}>
          {description}
        </p>
      ) : null}
    </>
  );
  const mark = (markClassName?: string) =>
    medallion ? (
      <Medallion
        className={markClassName}
        content={medallion}
        faded={medallionFaded}
      />
    ) : null;

  if (variant === "timeline" || variant === "card") {
    const onLine = variant === "timeline";

    return (
      <article
        className={cn(
          "min-w-0",
          /* On a line, the medallion sits level with the middle of its card. */
          onLine
            ? "grid grid-cols-[56px_minmax(0,1fr)] items-center gap-3 sm:gap-4 lg:block lg:h-full"
            : "h-full",
          className,
        )}
      >
        {onLine ? mark("lg:hidden") : null}
        <Card
          size="sm"
          variant={opens ? "interactive" : "default"}
          className={cn("min-w-0 gap-0", onLine ? "lg:h-full" : "h-full")}
        >
          <div
            className={cn(
              "min-w-0 grid-cols-[auto_minmax(0,1fr)] items-start gap-4",
              onLine ? "lg:grid" : "grid",
            )}
          >
            {picture ? (
              /* A fixed column, so every card's words start in one place. */
              <span className="grid w-14 place-items-center">{picture}</span>
            ) : (
              mark(onLine ? "hidden lg:grid" : undefined)
            )}
            <div className="min-w-0">{words}</div>
          </div>
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
      {mark()}
      <div className="min-w-0">{words}</div>
      {trailing ? <div className="flex items-center">{trailing}</div> : null}
    </article>
  );
};
