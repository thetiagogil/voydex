import type { ComponentProps, ReactNode } from "react";

import { cn } from "@/shared/utils/cn";

type CodexGenerationSectionProps = Omit<ComponentProps<"section">, "title"> & {
  /* A quiet line beside the heading, such as how many it holds. */
  meta?: ReactNode;
  title: ReactNode;
};

/* A group in a Codex list (v3 `.range`): a Fredoka heading over a hairline. */
export const CodexGenerationSection = ({
  children,
  className,
  meta,
  title,
  ...props
}: CodexGenerationSectionProps) => {
  return (
    <section className={cn("min-w-0", className)} {...props}>
      <div className="border-line flex flex-wrap items-baseline gap-x-3.5 gap-y-1.5 border-b pb-3">
        <h2 className="text-20 tracking-[-0.01em]">{title}</h2>
        {meta ? (
          <span className="text-14 text-ink-2 font-semibold tabular-nums">
            {meta}
          </span>
        ) : null}
      </div>
      <div className="mt-4.5">{children}</div>
    </section>
  );
};
