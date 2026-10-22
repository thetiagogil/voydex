"use client";

import type { ComponentProps, ReactNode } from "react";

import { Checkbox } from "@/shared/components/ui/checkbox";
import {
  Field,
  FieldContent,
  FieldDescription,
  FieldLabel,
} from "@/shared/components/ui/field";
import { cn } from "@/shared/utils/cn";

type CheckboxCardProps = Omit<
  ComponentProps<typeof Checkbox>,
  "children" | "className" | "id" | "title"
> & {
  className?: string;
  description?: ReactNode;
  id: string;
  /* `compact` is one field tall (48px) with the box centred, for a card with no description. */
  size?: "compact" | "default";
  title: ReactNode;
};

/* A choice card with its box showing: flat, the soft selected tint once ticked. */
export const CheckboxCard = ({
  className,
  description,
  disabled,
  id,
  size = "default",
  title,
  ...checkboxProps
}: CheckboxCardProps) => {
  return (
    <FieldLabel
      htmlFor={id}
      className={cn(
        "cursor-pointer has-disabled:cursor-not-allowed",
        className,
      )}
    >
      <Field
        orientation="horizontal"
        className={cn(
          "gap-3",
          size === "compact" ? "min-h-12 items-center py-0" : "min-h-16",
        )}
        data-disabled={disabled || undefined}
      >
        <Checkbox
          {...checkboxProps}
          className={size === "compact" ? undefined : "mt-0.5"}
          disabled={disabled}
          id={id}
        />
        <FieldContent>
          <span className="text-15 font-extrabold">{title}</span>
          {description ? (
            <FieldDescription>{description}</FieldDescription>
          ) : null}
        </FieldContent>
      </Field>
    </FieldLabel>
  );
};
