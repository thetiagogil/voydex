import type { ReactNode } from "react";

import { PageBand } from "@/shared/components/page-band";
import { cn } from "@/shared/utils/cn";

/*
 * Home's band: the same neutral band every page opens on, with no scenery,
 * and Home's whole page: it fills the screen, with what it holds in the
 * middle. Top to bottom: the greeting and the shelf to pick from, who stands
 * for the pick (a Play's team, a game's first partners) in a row, then the
 * row saying what is picked with the page's one main button. A quiet note
 * about your data, when there is one, sits at its foot.
 */
export const HomeBand = ({
  cast,
  castClassName,
  children,
  ground,
  note,
}: {
  /* Who stands for the pick, bottom-aligned in their row. */
  cast?: ReactNode;
  /* The row's least height, so the band doesn't jump between picks. */
  castClassName?: string;
  /* The greeting and the shelf. */
  children: ReactNode;
  ground: ReactNode;
  note?: ReactNode;
}) => (
  <PageBand fill className="flex flex-col px-0 pb-8 sm:pb-10">
    <div className="my-auto">
      {children}
      <div className={cn("flex items-end justify-center pt-2", castClassName)}>
        {cast}
      </div>
      <div className="pt-5 sm:pt-6">{ground}</div>
    </div>
    {note}
  </PageBand>
);

export const HomeBandHeading = ({
  greeting,
  id,
  subtitle,
}: {
  greeting: string;
  id: string;
  subtitle: ReactNode;
}) => (
  <div className="px-6 pt-8 text-center sm:pt-9">
    <h1 id={id} className="title-display wrap-anywhere">
      {greeting}
    </h1>
    <p className="text-ink-2 copy-body sm:text-17 mx-auto mt-3 max-w-[34em] leading-relaxed">
      {subtitle}
    </p>
  </div>
);

/* The ground's row: what is current, and the page's one main button. */
export const HomeBandGround = ({
  action,
  detail,
  title,
}: {
  action?: ReactNode;
  detail: ReactNode;
  title: ReactNode;
}) => (
  <div className="mx-auto flex w-[min(880px,calc(100%-2.5rem))] flex-col items-center gap-x-8 gap-y-4 text-center sm:flex-row sm:justify-between sm:text-left">
    <div aria-live="polite" className="min-w-0">
      <b className="title-card block">{title}</b>
      <span className="text-ink-2 copy-note">{detail}</span>
    </div>
    {action ? (
      <div className="w-full shrink-0 *:w-full sm:w-auto sm:*:w-auto">
        {action}
      </div>
    ) : null}
  </div>
);
