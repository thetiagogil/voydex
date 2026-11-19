"use client";

import * as React from "react";
import { cn } from "@/shared/utils/cn";

/* A field's name above its control (v3 `.fk`). */
const Label = ({ className, ...props }: React.ComponentProps<"label">) => {
  return (
    <label
      data-slot="label"
      className={cn(
        "copy-label text-ink-2 flex items-center gap-2 leading-snug select-none group-data-[disabled=true]:pointer-events-none group-data-[disabled=true]:opacity-50 peer-disabled:cursor-not-allowed peer-disabled:opacity-50",
        className,
      )}
      {...props}
    />
  );
};

export { Label };
