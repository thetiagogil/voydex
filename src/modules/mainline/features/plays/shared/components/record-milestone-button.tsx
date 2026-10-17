import Link from "next/link";
import type { ComponentProps } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button, buttonVariants } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";
import { cn } from "@/shared/utils/cn";

type RecordMilestoneButtonProps = Omit<
  ComponentProps<typeof Button>,
  "children" | "size" | "variant"
> & {
  /* Opens a page instead, such as Story's record form for a choice. */
  href?: string;
  /* "Record Cascade Badge", or a shorter word where the milestone is named beside it. */
  label: string;
  /* While it saves: a spinner in place of the check. */
  pending?: boolean;
  size?: "lg" | "sm";
};

/*
 * The one button that records a Story milestone, wherever it sits (Overview's
 * next objective, the partner hero, Story's panel): the page's main action,
 * led by a check, its long names wrapping on phones instead of overflowing.
 */
export const RecordMilestoneButton = ({
  className,
  href,
  label,
  pending = false,
  size = "lg",
  ...props
}: RecordMilestoneButtonProps) => {
  const classNames = cn(
    size === "lg" &&
      "h-auto min-h-14 py-3 text-left whitespace-normal sm:whitespace-nowrap",
    className,
  );
  const content = (
    <>
      {pending ? (
        <Spinner data-icon="inline-start" />
      ) : (
        <AppIcon icon={appIcons.status.active} />
      )}
      {label}
    </>
  );

  if (href) {
    return (
      <Link href={href} className={cn(buttonVariants({ size }), classNames)}>
        {content}
      </Link>
    );
  }

  return (
    <Button
      type="button"
      size={size}
      aria-busy={pending || undefined}
      className={classNames}
      {...props}
    >
      {content}
    </Button>
  );
};
