import type { ComponentProps } from "react";

import { cn } from "@/lib/utils";

export const CodexFilterPanel = ({
  className,
  ...props
}: ComponentProps<"form">) => {
  return (
    <form
      className={cn(
        "bg-card/78 ring-app-surface-border grid gap-3 rounded-xl p-3 ring-1 backdrop-blur-md",
        className,
      )}
      {...props}
    />
  );
};
