"use client";

import { Checkbox as CheckboxPrimitive } from "@base-ui/react/checkbox";
import { cn } from "@/shared/utils/cn";
import { CheckIcon } from "lucide-react";

/* A quiet box (v3's radio ring, squared); checked fills with the action red. */
const Checkbox = ({ className, ...props }: CheckboxPrimitive.Root.Props) => {
  return (
    <CheckboxPrimitive.Root
      data-slot="checkbox"
      className={cn(
        "peer border-mute bg-surface data-checked:border-action data-checked:bg-action aria-invalid:border-danger focus-ring relative flex size-4.5 shrink-0 items-center justify-center rounded-xs border-2 text-white transition-colors group-has-disabled/field:opacity-50 after:absolute after:-inset-x-3 after:-inset-y-2 disabled:cursor-not-allowed disabled:opacity-50",
        className,
      )}
      {...props}
    >
      <CheckboxPrimitive.Indicator
        data-slot="checkbox-indicator"
        className="grid place-content-center text-current transition-none [&>svg]:size-3.5 [&>svg]:stroke-3"
      >
        <CheckIcon />
      </CheckboxPrimitive.Indicator>
    </CheckboxPrimitive.Root>
  );
};

export { Checkbox };
