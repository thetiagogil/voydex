import type { ComponentProps } from "react";

import { cn } from "@/shared/utils/cn";

const resourceGridColumns = {
  games: "grid-cols-2 md:grid-cols-3 xl:grid-cols-4",
  pokemon: "grid-cols-2 md:grid-cols-3 xl:grid-cols-4",
  five: "sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 2xl:grid-cols-5",
  four: "sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4",
  three: "sm:grid-cols-2 lg:grid-cols-3",
} as const;

type CodexResourceGridProps = ComponentProps<"div"> & {
  columns?: keyof typeof resourceGridColumns;
};

export const CodexResourceGrid = ({
  children,
  className,
  columns = "three",
  ...props
}: CodexResourceGridProps) => {
  return (
    <div
      className={cn("grid gap-4", resourceGridColumns[columns], className)}
      {...props}
    >
      {children}
    </div>
  );
};
