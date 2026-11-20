import { useId, type CSSProperties, type ReactNode } from "react";

import { cn } from "@/shared/utils/cn";
import { type AppIconComponent } from "@/shared/components/app-icon";
import {
  SectionHead,
  type SectionHeadProps,
} from "@/shared/components/section-head";
import { Card } from "@/shared/components/ui/card";

type DetailSectionCardProps = {
  action?: ReactNode;
  /*
   * A short note beside the title (v3 `.sec-head .aside`), such as what the
   * section is read at. Hidden on narrow screens.
   */
  aside?: ReactNode;
  children: ReactNode;
  className?: string;
  contentClassName?: string;
  description?: ReactNode;
  headerClassName?: string;
  /* `3` when the section sits under a page or tab heading at level 2. */
  headingLevel?: 2 | 3;
  icon?: AppIconComponent;
  id?: string;
  /* The trailing link onward (v3 `.more`), before `action`. */
  more?: SectionHeadProps["more"];
  /* Variables the content reads, such as a type colour as `--t`. */
  style?: CSSProperties;
  title: ReactNode;
  titleClassName?: string;
};

/*
 * A section of content: its `SectionHead` on the wall, then one quiet card
 * under it. The title is never inside the card, on any page. It is a
 * `<section>` labelled by that heading; `className` places the section,
 * `contentClassName` lays out the card.
 */
export const DetailSectionCard = ({
  action,
  aside,
  children,
  className,
  contentClassName,
  description,
  headerClassName,
  headingLevel = 2,
  icon,
  id,
  more,
  style,
  title,
  titleClassName,
}: DetailSectionCardProps) => {
  const headingId = useId();

  return (
    <section
      id={id}
      aria-labelledby={headingId}
      style={style}
      className={cn("flex w-full min-w-0 flex-col gap-3", className)}
    >
      <SectionHead
        title={title}
        titleId={headingId}
        titleClassName={titleClassName}
        headingLevel={headingLevel}
        icon={icon}
        aside={aside}
        description={description}
        more={more}
        action={action}
        className={headerClassName}
      />

      <Card className={cn("block min-w-0 flex-1", contentClassName)}>
        {children}
      </Card>
    </section>
  );
};
