import * as React from "react";
import { Input as InputPrimitive } from "@base-ui/react/input";
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
        "border-line bg-surface file:text-foreground placeholder:text-muted-foreground focus-visible:border-ring focus-visible:ring-ring/35 disabled:bg-input/30 aria-invalid:border-destructive aria-invalid:ring-destructive/20 h-10 w-full min-w-0 rounded-sm border-[1.5px] px-3 py-1 text-16 font-semibold transition-colors outline-none file:inline-flex file:h-6 file:border-0 file:bg-transparent file:text-sm file:font-medium focus-visible:ring-3 disabled:pointer-events-none disabled:cursor-not-allowed disabled:opacity-50 aria-invalid:ring-3",
        className,
      )}
      {...props}
    />
  );
};

export { Input };
