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
  "children" | "className" | "id"
> & {
  className?: string;
  description?: ReactNode;
  id: string;
  title: ReactNode;
};

/* A choice card with its box showing: flat, the soft selected tint once ticked. */
export const CheckboxCard = ({
  className,
  description,
  disabled,
  id,
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
        className="min-h-16 gap-3"
        data-disabled={disabled || undefined}
      >
        <Checkbox
          {...checkboxProps}
          className="mt-0.5"
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
