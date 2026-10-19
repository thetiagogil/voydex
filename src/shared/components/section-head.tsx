import { TextLink } from "@/shared/components/text-link";
import type { ReactNode } from "react";

import { AppIcon, type AppIconComponent } from "@/shared/components/app-icon";
import { PageHeadTool } from "@/shared/components/page-head-tool";
import { cn } from "@/shared/utils/cn";
import { IconDisc } from "@/shared/components/icon-disc";

type SectionMoreLinkProps = {
  className?: string;
  href: string;
  label: string;
};

/* v3 `.more`: the link onward from a section, such as "Open team". */
export const SectionMoreLink = ({
  className,
  href,
  label,
}: SectionMoreLinkProps) => {
  return (
    <TextLink
      href={href}
      arrow="forward"
      className={cn("whitespace-nowrap", className)}
    >
      {label}
    </TextLink>
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

  return (
    <div
      data-slot="section-head"
      className={cn(
        /* Actions too wide to share the title's line drop under it. */
        "flex min-w-0 flex-wrap items-center justify-between gap-x-3 gap-y-2.5",
        className,
      )}
    >
      <div className="flex min-w-0 gap-2">
        {icon ? (
          <IconDisc>
            <AppIcon icon={icon} size="sm" />
          </IconDisc>
        ) : null}

        <div className="flex min-w-0 flex-col gap-1">
          <div className="flex min-w-0 flex-wrap items-baseline gap-x-3 gap-y-0.5">
            <Heading
              id={titleId}
              className={cn("text-ink title-section", titleClassName)}
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

      {/* A tool handed down by the page (the list's search button) leads. */}
      <div className="flex shrink-0 items-center gap-2 self-center empty:hidden">
        <PageHeadTool />
        {more ? <SectionMoreLink {...more} /> : null}
        {action}
      </div>
    </div>
  );
};
