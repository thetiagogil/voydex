import { useId, type ReactNode } from "react";

import { cn } from "@/shared/utils/cn";
import { AppIcon, type AppIconComponent } from "@/shared/components/app-icon";
import {
  CardAction,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
  cardVariants,
} from "@/shared/components/ui/card";
import { Separator } from "@/shared/components/ui/separator";

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
  showSeparator?: boolean;
  title: ReactNode;
  titleClassName?: string;
};

/*
 * A section of content as one quiet card with its heading inside. It is a
 * `<section>` labelled by that heading.
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
  showSeparator = false,
  title,
  titleClassName,
}: DetailSectionCardProps) => {
  const headingId = useId();
  const Heading = headingLevel === 3 ? "h3" : "h2";

  return (
    <section
      id={id}
      aria-labelledby={headingId}
      data-slot="card"
      data-size="default"
      className={cn(cardVariants(), "w-full min-w-0 gap-0 py-0", className)}
    >
      <CardHeader
        className={cn(
          "flex items-center justify-between gap-3 px-5 pt-5 pb-3 sm:px-6 sm:pt-6",
          headerClassName,
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
              <CardTitle className={cn("text-ink text-24", titleClassName)}>
                <Heading id={headingId}>{title}</Heading>
              </CardTitle>
              {aside ? (
                <span className="text-ink-3 text-14 font-semibold max-[559px]:hidden">
                  {aside}
                </span>
              ) : null}
            </div>

            {description ? (
              <CardDescription>{description}</CardDescription>
            ) : null}
          </div>
        </div>

        {action ? (
          <CardAction className="self-center">{action}</CardAction>
        ) : null}
      </CardHeader>

      {showSeparator ? <Separator className="bg-line" /> : null}

      <CardContent
        className={cn(
          showSeparator
            ? "px-5 py-5 sm:px-6"
            : "px-5 pt-1 pb-5 sm:px-6 sm:pb-6",
          contentClassName,
        )}
      >
        {children}
      </CardContent>
    </section>
  );
};
