"use client";

import { Toggle } from "@base-ui/react/toggle";
import { ToggleGroup as ToggleGroupPrimitive } from "@base-ui/react/toggle-group";
import { cva, type VariantProps } from "class-variance-authority";

import { cn } from "@/lib/utils";

const toggleGroupItemVariants = cva(
  "inline-flex shrink-0 items-center justify-center gap-2 rounded-lg text-sm font-medium outline-none transition-colors focus-visible:ring-2 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50 data-pressed:bg-primary/10 data-pressed:text-primary [&_svg]:pointer-events-none [&_svg]:size-4 [&_svg]:shrink-0",
  {
    variants: {
      variant: {
        default: "h-9 px-3 hover:bg-muted hover:text-foreground",
        card: "min-h-28 flex-1 flex-col items-stretch border border-border bg-card/60 p-4 text-left hover:bg-muted/60 data-pressed:border-primary data-pressed:shadow-sm data-pressed:shadow-primary/10",
      },
    },
    defaultVariants: {
      variant: "default",
    },
  },
);

function ToggleGroup<Value extends string>({
  className,
  ...props
}: ToggleGroupPrimitive.Props<Value>) {
  return (
    <ToggleGroupPrimitive
      data-slot="toggle-group"
      className={cn("flex items-center gap-1", className)}
      {...props}
    />
  );
}

function ToggleGroupItem<Value extends string>({
  className,
  variant,
  ...props
}: Toggle.Props<Value> & VariantProps<typeof toggleGroupItemVariants>) {
  return (
    <Toggle
      data-slot="toggle-group-item"
      className={cn(toggleGroupItemVariants({ variant, className }))}
      {...props}
    />
  );
}

export { ToggleGroup, ToggleGroupItem };
