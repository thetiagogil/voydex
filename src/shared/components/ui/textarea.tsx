import * as React from "react";
import {
  fieldFocusClassName,
  fieldSurfaceClassName,
} from "@/shared/components/ui/field-surface";
import { cn } from "@/shared/utils/cn";

const Textarea = ({
  className,
  ...props
}: React.ComponentProps<"textarea">) => {
  return (
    <textarea
      data-slot="textarea"
      className={cn(
        fieldSurfaceClassName,
        fieldFocusClassName,
        "copy-body sm:text-15 placeholder:text-ink-3 flex field-sizing-content min-h-24 w-full rounded-lg px-4 py-3 leading-normal disabled:cursor-not-allowed disabled:opacity-50",
        className,
      )}
      {...props}
    />
  );
};

export { Textarea };
