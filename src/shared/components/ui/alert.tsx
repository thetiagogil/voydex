import * as React from "react";
import { cva, type VariantProps } from "class-variance-authority";
import { cn } from "@/shared/utils/cn";

/*
 * A note inside a form or a sheet: the inset fill with ink-2 text (v3
 * `.pnote`), the soft amber tint for a warning that blocks nothing (a Play's
 * rule broken), the soft green tint for good news (a Strong matchup), or
 * the soft danger tint with deep red text for an error (v3 `.au-err`). Never
 * a filled banner. Pass another `role` where it isn't an alert.
 */
const alertVariants = cva(
  "group/alert text-14 relative grid w-full gap-0.5 rounded-md px-4 py-3 text-left leading-normal font-semibold has-data-[slot=alert-action]:relative has-data-[slot=alert-action]:pr-18 has-[>svg]:grid-cols-[auto_1fr] has-[>svg]:gap-x-2.5 *:[svg]:row-span-2 *:[svg]:translate-y-0.5 *:[svg:not([class*='size-'])]:size-4.5",
  {
    variants: {
      variant: {
        default: "bg-surface-2 text-ink-2 *:[svg]:text-ink-3",
        success: "bg-ok-soft text-ok-deep *:[svg]:text-ok-deep",
        warning: "bg-warn-soft text-warn-ink *:[svg]:text-warn-ink",
        destructive: "bg-danger-soft text-danger-deep *:[svg]:text-danger",
      },
    },
    defaultVariants: {
      variant: "default",
    },
  },
);

const Alert = ({
  className,
  variant = "default",
  ...props
}: React.ComponentProps<"div"> & VariantProps<typeof alertVariants>) => {
  return (
    <div
      data-slot="alert"
      data-variant={variant}
      role="alert"
      className={cn(alertVariants({ variant }), className)}
      {...props}
    />
  );
};

const AlertTitle = ({ className, ...props }: React.ComponentProps<"div">) => {
  return (
    <div
      data-slot="alert-title"
      className={cn(
        "group-data-[variant=default]/alert:text-ink font-extrabold group-has-[>svg]/alert:col-start-2 [&_a]:underline [&_a]:underline-offset-3",
        className,
      )}
      {...props}
    />
  );
};

const AlertDescription = ({
  className,
  ...props
}: React.ComponentProps<"div">) => {
  return (
    <div
      data-slot="alert-description"
      className={cn(
        "text-balance md:text-pretty [&_a]:font-extrabold [&_a]:underline [&_a]:underline-offset-3 [&_p:not(:last-child)]:mb-3",
        className,
      )}
      {...props}
    />
  );
};

const AlertAction = ({ className, ...props }: React.ComponentProps<"div">) => {
  return (
    <div
      data-slot="alert-action"
      className={cn("absolute top-2 right-2", className)}
      {...props}
    />
  );
};

export { Alert, AlertTitle, AlertDescription, AlertAction };
