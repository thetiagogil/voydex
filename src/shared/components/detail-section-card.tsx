import { useId, type CSSProperties, type ReactNode } from "react";

import { cn } from "@/shared/utils/cn";
import { type AppIconComponent } from "@/shared/components/app-icon";
import {
  SectionHead,
  type SectionHeadProps,
} from "@/shared/components/section-head";
import { CardContent, cardVariants } from "@/shared/components/ui/card";

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
 * A section of content as one quiet card with its `SectionHead` inside. It
 * is a `<section>` labelled by that heading.
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
      data-slot="card"
      data-size="default"
      style={style}
      className={cn(cardVariants(), "w-full min-w-0 gap-0 py-0", className)}
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
        className={cn("px-5 pt-5 pb-3 sm:px-6 sm:pt-6", headerClassName)}
      />

      <CardContent
        className={cn("px-5 pt-1 pb-5 sm:px-6 sm:pb-6", contentClassName)}
      >
        {children}
      </CardContent>
    </section>
  );
};
