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
      "bg-ink text-on-ink text-13 grid size-6 shrink-0 place-items-center rounded-full font-extrabold tabular-nums",
      className,
    )}
  >
    {number}
  </span>
);
