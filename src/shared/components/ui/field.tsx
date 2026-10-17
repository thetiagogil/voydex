"use client";

import { useMemo } from "react";
import { cva, type VariantProps } from "class-variance-authority";
import { cn } from "@/shared/utils/cn";
import { Label } from "@/shared/components/ui/label";

const FieldSet = ({
  className,
  ...props
}: React.ComponentProps<"fieldset">) => {
  return (
    <fieldset
      data-slot="field-set"
      className={cn(
        "flex flex-col gap-4 has-[>[data-slot=checkbox-group]]:gap-3 has-[>[data-slot=radio-group]]:gap-3",
        className,
      )}
      {...props}
    />
  );
};

const FieldLegend = ({
  className,
  variant = "legend",
  ...props
}: React.ComponentProps<"legend"> & {
  variant?: "legend" | "label";
}) => {
  return (
    <legend
      data-slot="field-legend"
      data-variant={variant}
      className={cn(
        "text-ink data-[variant=label]:text-13 data-[variant=label]:text-ink-2 data-[variant=legend]:text-16 mb-1.5 font-extrabold data-[variant=label]:font-bold",
        className,
      )}
      {...props}
    />
  );
};

const FieldGroup = ({ className, ...props }: React.ComponentProps<"div">) => {
  return (
    <div
      data-slot="field-group"
      className={cn(
        "group/field-group @container/field-group flex w-full flex-col gap-5 data-[slot=checkbox-group]:gap-3 *:data-[slot=field-group]:gap-4",
        className,
      )}
      {...props}
    />
  );
};

const fieldVariants = cva(
  "group/field flex w-full gap-1.5 data-[invalid=true]:text-danger",
  {
    variants: {
      orientation: {
        vertical: "flex-col *:w-full [&>.sr-only]:w-auto",
        horizontal:
          "flex-row items-center has-[>[data-slot=field-content]]:items-start *:data-[slot=field-label]:flex-auto has-[>[data-slot=field-content]]:[&>[role=checkbox],[role=radio]]:mt-px",
        responsive:
          "flex-col *:w-full @md/field-group:flex-row @md/field-group:items-center @md/field-group:*:w-auto @md/field-group:has-[>[data-slot=field-content]]:items-start @md/field-group:*:data-[slot=field-label]:flex-auto [&>.sr-only]:w-auto @md/field-group:has-[>[data-slot=field-content]]:[&>[role=checkbox],[role=radio]]:mt-px",
      },
    },
    defaultVariants: {
      orientation: "vertical",
    },
  },
);

const Field = ({
  className,
  orientation = "vertical",
  ...props
}: React.ComponentProps<"div"> & VariantProps<typeof fieldVariants>) => {
  return (
    <div
      role="group"
      data-slot="field"
      data-orientation={orientation}
      className={cn(fieldVariants({ orientation }), className)}
      {...props}
    />
  );
};

const FieldContent = ({ className, ...props }: React.ComponentProps<"div">) => {
  return (
    <div
      data-slot="field-content"
      className={cn(
        "group/field-content flex flex-1 flex-col gap-0.5 leading-snug",
        className,
      )}
      {...props}
    />
  );
};

const FieldLabel = ({
  className,
  ...props
}: React.ComponentProps<typeof Label>) => {
  return (
    <Label
      data-slot="field-label"
      className={cn(
        "group/field-label peer/field-label flex w-fit gap-2 leading-snug group-data-[disabled=true]/field:opacity-50",
        /* A label wrapping a whole field is a choice card: flat, and the soft selected tint with an accent border once chosen. */
        "has-[>[data-slot=field]]:border-line has-[>[data-slot=field]]:bg-surface has-[>[data-slot=field]]:text-15 has-[>[data-slot=field]]:text-ink has-[>[data-slot=field]]:has-focus-visible:outline-focus has-[>[data-slot=field]]:hover:bg-surface-2 has-data-checked:border-game has-data-checked:bg-select-soft has-data-checked:text-select-ink has-data-checked:hover:bg-select-soft has-[>[data-slot=field]]:w-full has-[>[data-slot=field]]:flex-col has-[>[data-slot=field]]:rounded-md has-[>[data-slot=field]]:border-[1.5px] has-[>[data-slot=field]]:font-semibold has-[>[data-slot=field]]:transition-colors has-[>[data-slot=field]]:has-focus-visible:outline-3 has-[>[data-slot=field]]:has-focus-visible:outline-offset-2 has-[>[data-slot=field]]:has-focus-visible:outline-solid *:data-[slot=field]:p-3",
        className,
      )}
      {...props}
    />
  );
};

const FieldDescription = ({
  className,
  ...props
}: React.ComponentProps<"p">) => {
  return (
    <p
      data-slot="field-description"
      className={cn(
        "text-13 text-ink-2 text-left leading-normal font-semibold group-has-data-horizontal/field:text-balance [[data-variant=legend]+&]:-mt-1.5",
        "last:mt-0 nth-last-2:-mt-1",
        "[&>a]:text-link [&>a]:font-extrabold [&>a]:underline [&>a]:underline-offset-4",
        className,
      )}
      {...props}
    />
  );
};

const FieldError = ({
  className,
  children,
  errors,
  ...props
}: React.ComponentProps<"div"> & {
  errors?: Array<
    | {
        message?: string;
      }
    | undefined
  >;
}) => {
  const content = useMemo(() => {
    if (children) {
      return children;
    }
    if (!errors?.length) {
      return null;
    }
    const uniqueErrors = [
      ...new Map(errors.map((error) => [error?.message, error])).values(),
    ];
    if (uniqueErrors?.length == 1) {
      return uniqueErrors[0]?.message;
    }
    return (
      <ul className="ml-4 flex list-disc flex-col gap-1">
        {uniqueErrors.map(
          (error, index) =>
            error?.message && <li key={index}>{error.message}</li>,
        )}
      </ul>
    );
  }, [children, errors]);
  if (!content) {
    return null;
  }
  return (
    <div
      role="alert"
      data-slot="field-error"
      className={cn("text-13 text-danger font-bold", className)}
      {...props}
    >
      {content}
    </div>
  );
};

export {
  Field,
  FieldLabel,
  FieldDescription,
  FieldError,
  FieldGroup,
  FieldLegend,
  FieldSet,
  FieldContent,
};
