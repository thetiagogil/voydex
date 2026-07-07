import type { ComponentProps, ReactNode } from "react";

import { cn } from "@/lib/utils";

type CodexGenerationSectionProps = ComponentProps<"section"> & {
  title: ReactNode;
};

export const CodexGenerationSection = ({
  children,
  className,
  title,
  ...props
}: CodexGenerationSectionProps) => {
  return (
    <section className={cn("space-y-4", className)} {...props}>
      <div className="flex items-center gap-4">
        <h2 className="text-foreground shrink-0 text-lg leading-7 font-semibold">
          {title}
        </h2>
        <div className="bg-app-surface-border/70 h-px min-w-8 flex-1" />
      </div>
      {children}
    </section>
  );
};
