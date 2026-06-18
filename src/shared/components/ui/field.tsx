"use client";

import * as React from "react";
import { Field as FieldPrimitive } from "@base-ui/react/field";

import { cn } from "@/lib/utils";

function Field({
  className,
  ...props
}: React.ComponentProps<typeof FieldPrimitive.Root>) {
  return (
    <FieldPrimitive.Root
      data-slot="field"
      className={cn("flex flex-col gap-2", className)}
      {...props}
    />
  );
}

function FieldLabel({
  className,
  ...props
}: React.ComponentProps<typeof FieldPrimitive.Label>) {
  return (
    <FieldPrimitive.Label
      data-slot="field-label"
      className={cn(
        "text-foreground flex items-center gap-2 text-sm leading-none font-medium select-none",
        "data-disabled:cursor-not-allowed data-disabled:opacity-50",
        className,
      )}
      {...props}
    />
  );
}

function FieldDescription({
  className,
  ...props
}: React.ComponentProps<typeof FieldPrimitive.Description>) {
  return (
    <FieldPrimitive.Description
      data-slot="field-description"
      className={cn("text-muted-foreground text-sm leading-5", className)}
      {...props}
    />
  );
}

function FieldError({
  className,
  ...props
}: React.ComponentProps<typeof FieldPrimitive.Error>) {
  return (
    <FieldPrimitive.Error
      data-slot="field-error"
      className={cn("text-destructive text-sm leading-5", className)}
      {...props}
    />
  );
}

export { Field, FieldDescription, FieldError, FieldLabel };
