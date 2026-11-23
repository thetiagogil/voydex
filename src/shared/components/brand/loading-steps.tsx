import { LogoMark } from "@/shared/components/brand/logo-mark";
import { cn } from "@/shared/utils/cn";

type LoadingStepsProps = {
  /* What the step at hand is doing right now, such as "10 of 22 games". */
  detail?: string | null;
  /* How far the step at hand is, 0 to 1, when it can tell; otherwise it pulses. */
  fraction?: number | null;
  /* The step at hand, by its place in `steps`. */
  current: number;
  /* Each step's name, in order. */
  steps: string[];
  title: string;
};

/*
 * The one loading screen of the app: the V, a title, and a progress bar
 * with a part for every step, filled as each one ends, the step at hand
 * filling as it goes (or pulsing when it can't tell how far it is), with
 * which step it is and what it is doing under it. Every wait the app shows
 * before it opens (the device opening, the account opening, the pages
 * being read) is one of its steps, so the bar runs once from start to end.
 */
export const LoadingSteps = ({
  current,
  detail,
  fraction = null,
  steps,
  title,
}: LoadingStepsProps) => {
  const step = Math.min(Math.max(current, 0), steps.length - 1);
  const overall = Math.round(
    ((step + Math.min(Math.max(fraction ?? 0, 0), 1)) / steps.length) * 100,
  );

  return (
    <div
      role="status"
      className="mx-auto flex w-full max-w-sm flex-col items-center gap-3 text-center"
    >
      <LogoMark className="size-18" />
      <p className="title-card mt-2">{title}</p>
      <div
        role="progressbar"
        aria-label={title}
        aria-valuemin={0}
        aria-valuemax={100}
        aria-valuenow={overall}
        className="mt-1 flex w-full max-w-72 gap-1.5"
      >
        {steps.map((name, index) => (
          <span
            key={name}
            className="bg-track relative h-2 flex-1 overflow-hidden rounded-full"
          >
            {index <= step ? (
              <span
                style={
                  index === step && fraction !== null
                    ? { width: `${Math.round(fraction * 100)}%` }
                    : undefined
                }
                className={cn(
                  "bg-progress absolute inset-y-0 left-0 rounded-full transition-[width] duration-300 ease-out",
                  index < step || fraction === null ? "w-full" : null,
                  index === step &&
                    fraction === null &&
                    "animate-pulse motion-reduce:animate-none",
                )}
              />
            ) : null}
          </span>
        ))}
      </div>
      <p className="text-ink-3 copy-label">
        Step {step + 1} of {steps.length}: {steps[step]}
      </p>
      {/* Its line is always there, so nothing moves between steps. */}
      <p className="text-ink-2 copy-body min-h-12 max-w-xs">{detail}</p>
    </div>
  );
};
