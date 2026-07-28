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
        "has-focus-visible:border-ring has-focus-visible:ring-ring/40 cursor-pointer has-focus-visible:ring-2 has-disabled:cursor-not-allowed",
        className,
      )}
    >
      <Field
        orientation="horizontal"
        className="relative min-h-16 gap-0"
        data-disabled={disabled || undefined}
      >
        <Checkbox
          {...checkboxProps}
          className="absolute size-px overflow-hidden border-0 p-0 opacity-0"
          disabled={disabled}
          id={id}
        />
        <FieldContent>
          <span className="text-sm font-semibold">{title}</span>
          {description ? (
            <FieldDescription>{description}</FieldDescription>
          ) : null}
        </FieldContent>
      </Field>
    </FieldLabel>
  );
};
