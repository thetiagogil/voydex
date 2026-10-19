"use client";

import { Radio as RadioPrimitive } from "@base-ui/react/radio";
import { RadioGroup as RadioGroupPrimitive } from "@base-ui/react/radio-group";
import { cn } from "@/shared/utils/cn";

const RadioGroup = ({ className, ...props }: RadioGroupPrimitive.Props) => {
  return (
    <RadioGroupPrimitive
      data-slot="radio-group"
      className={cn("grid w-full gap-2", className)}
      {...props}
    />
  );
};

/* v3's radio dot: a quiet ring that fills to a thick action-red ring when on. */
const RadioGroupItem = ({ className, ...props }: RadioPrimitive.Root.Props) => {
  return (
    <RadioPrimitive.Root
      data-slot="radio-group-item"
      className={cn(
        "group/radio-group-item peer border-mute bg-surface data-checked:border-action aria-invalid:border-danger focus-ring relative flex aspect-square size-4.5 shrink-0 rounded-full border-2 transition-[border-color,border-width] after:absolute after:-inset-x-3 after:-inset-y-2 disabled:cursor-not-allowed disabled:opacity-50 data-checked:border-[5px]",
        className,
      )}
      {...props}
    />
  );
};

export { RadioGroup, RadioGroupItem };
