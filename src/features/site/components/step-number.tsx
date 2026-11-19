import { cn } from "@/shared/utils/cn";

/* The number of a step on the front page: How it works, Install. */
export const StepNumber = ({
  className,
  number,
}: {
  className?: string;
  number: number;
}) => (
  <span
    aria-hidden
    className={cn(
      "bg-ink text-on-ink copy-label grid size-6 shrink-0 place-items-center rounded-full tabular-nums",
      className,
    )}
  >
    {number}
  </span>
);
