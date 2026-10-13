import Link from "next/link";
import type { ReactNode } from "react";

import {
  AppIcon,
  appIcons,
  type AppIconComponent,
} from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

type SectionMoreLinkProps = {
  className?: string;
  href: string;
  label: string;
};

/* v3 `.more`: a quiet link onward, such as "Open team", with an arrow. */
export const SectionMoreLink = ({
  className,
  href,
  label,
}: SectionMoreLinkProps) => {
  return (
    <Link
      href={href}
      className={cn(
        "text-link text-14 focus-visible:outline-focus inline-flex min-h-10 items-center gap-1.5 rounded-xs px-0.5 font-extrabold whitespace-nowrap outline-none focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid sm:min-h-9",
        className,
      )}
    >
      {label}
      <AppIcon icon={appIcons.actions.continue} size="sm" aria-hidden />
    </Link>
  );
};

export type SectionHeadProps = {
  /* Trailing control, such as a button or a menu. Sits after `more`. */
  action?: ReactNode;
  /*
   * A short note beside the title (v3 `.sec-head .aside`), such as a count or
   * what the section is read at. Hidden on narrow screens.
   */
  aside?: ReactNode;
  className?: string;
  /* One line under the title. */
  description?: ReactNode;
  /* `3` when the section sits under a page or tab heading at level 2. */
  headingLevel?: 2 | 3;
  icon?: AppIconComponent;
  /* The trailing link onward (v3 `.more`). */
  more?: SectionMoreLinkProps;
  title: ReactNode;
  titleClassName?: string;
  /* Give the section `aria-labelledby={titleId}`. */
  titleId?: string;
};

/*
 * A section's head (v3 `.sec-head`): a Fredoka title, an inline aside and a
 * trailing "more" link or action. Used on the page ground above a grid, and
 * inside `DetailSectionCard`.
 */
export const SectionHead = ({
  action,
  aside,
  className,
  description,
  headingLevel = 2,
  icon,
  more,
  title,
  titleClassName,
  titleId,
}: SectionHeadProps) => {
  const Heading = headingLevel === 3 ? "h3" : "h2";
  const hasTrailing = Boolean(more) || Boolean(action);

  return (
    <div
      data-slot="section-head"
      className={cn(
        "flex min-w-0 items-center justify-between gap-3",
        className,
      )}
    >
      <div className="flex min-w-0 gap-2">
        {icon ? (
          <span className="bg-surface-2 text-ink-2 flex size-9 shrink-0 items-center justify-center rounded-sm">
            <AppIcon icon={icon} size="sm" aria-hidden />
          </span>
        ) : null}

        <div className="flex min-w-0 flex-col gap-1">
          <div className="flex min-w-0 flex-wrap items-baseline gap-x-3 gap-y-0.5">
            <Heading
              id={titleId}
              className={cn(
                "text-ink text-24 leading-tight tracking-[-0.015em]",
                titleClassName,
              )}
            >
              {title}
            </Heading>
            {aside ? (
              <span className="text-ink-3 text-14 font-semibold max-[559px]:hidden">
                {aside}
              </span>
            ) : null}
          </div>

          {description ? (
            <div className="text-14 text-ink-2 font-semibold">
              {description}
            </div>
          ) : null}
        </div>
      </div>

      {hasTrailing ? (
        <div className="flex shrink-0 items-center gap-2 self-center">
          {more ? <SectionMoreLink {...more} /> : null}
          {action}
        </div>
      ) : null}
    </div>
  );
};
