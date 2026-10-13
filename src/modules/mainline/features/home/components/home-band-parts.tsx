import type { ReactNode } from "react";

/* The band's top, bleeding to the page edges under the bar. */
export const homeBandClassName = "-mx-4 -mt-2 sm:-mx-6 lg:-mx-8";

export const HomeBandHeading = ({
  greeting,
  id,
  subtitle,
}: {
  greeting: string;
  id: string;
  subtitle: string;
}) => (
  <div className="px-6 pt-8 text-center sm:pt-9">
    <h1
      id={id}
      className="lg:text-60 text-[34px] leading-[1.02] tracking-[-0.025em] [overflow-wrap:anywhere] sm:text-[52px]"
    >
      {greeting}
    </h1>
    <p className="text-ink-2 mx-auto mt-3 max-w-[34em] text-[16px] leading-relaxed font-semibold sm:text-[18px]">
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
      <b className="font-display text-20 block leading-tight font-semibold sm:text-[22px]">
        {title}
      </b>
      <span className="text-ink-2 text-14 font-semibold">{detail}</span>
    </div>
    {action ? (
      <div className="w-full shrink-0 sm:w-auto [&>*]:w-full sm:[&>*]:w-auto">
        {action}
      </div>
    ) : null}
  </div>
);
