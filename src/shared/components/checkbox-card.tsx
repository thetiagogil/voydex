"use client";

import type { ComponentProps, ReactNode } from "react";

import { Checkbox } from "@/shared/components/ui/checkbox";
import {
  Field,
  FieldContent,
  FieldDescription,
  FieldLabel,
} from "@/shared/components/ui/field";
import { fieldSurfaceClassName } from "@/shared/components/ui/field-surface";
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
  if (size === "compact") {
    /* One field's size and look, as a pill, with the soft tint once ticked. */
    return (
      <label
        htmlFor={id}
        data-disabled={disabled || undefined}
        className={cn(
          fieldSurfaceClassName,
          "text-15 has-data-checked:border-action has-data-checked:bg-select-soft has-data-checked:text-select-ink has-focus-visible:outline-focus flex h-12 min-w-0 cursor-pointer items-center gap-3 rounded-full px-5 font-bold has-focus-visible:outline-3 has-focus-visible:outline-offset-1 has-focus-visible:outline-solid has-disabled:cursor-not-allowed has-disabled:opacity-50",
          className,
        )}
      >
        <Checkbox {...checkboxProps} disabled={disabled} id={id} />
        <span className="min-w-0">{title}</span>
      </label>
    );
  }

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
