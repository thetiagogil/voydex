import type { ComponentProps } from "react";

import { cn } from "@/shared/utils/cn";

export const CodexFilterPanel = ({
  className,
  ...props
}: ComponentProps<"form">) => {
  return (
    <form
      className={cn(
        "bg-card text-card-foreground ring-app-surface-border grid gap-3 rounded-xl p-3 shadow-(--app-surface-shadow) ring-1",
        className,
      )}
      {...props}
    />
  );
};
