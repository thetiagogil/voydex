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
      "bg-surface-2 text-ink text-13 grid size-7 shrink-0 place-items-center rounded-full font-extrabold",
      className,
    )}
  >
    {number}
  </span>
);
