import * as React from "react";
import { Input as InputPrimitive } from "@base-ui/react/input";
import {
  fieldFocusClassName,
  fieldSurfaceClassName,
} from "@/shared/components/ui/field-surface";
import { cn } from "@/shared/utils/cn";

const Input = ({
  className,
  type,
  ...props
}: React.ComponentProps<"input">) => {
  return (
    <InputPrimitive
      type={type}
      data-slot="input"
      className={cn(
        fieldSurfaceClassName,
        fieldFocusClassName,
        "text-16 sm:text-15 placeholder:text-ink-3 file:text-ink file:text-14 h-12 w-full min-w-0 rounded-md px-4 font-bold file:inline-flex file:h-7 file:border-0 file:bg-transparent file:font-bold placeholder:font-semibold disabled:pointer-events-none disabled:cursor-not-allowed disabled:opacity-50",
        className,
      )}
      {...props}
    />
  );
};

export { Input };
