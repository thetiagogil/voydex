import { LogoMark } from "@/shared/components/brand/logo-mark";
import { cn } from "@/shared/utils/cn";

const ringRadius = 46;
const ringLength = 2 * Math.PI * ringRadius;

/*
 * The mark of a screen the app waits behind (the start screen, the sync
 * step after logging in): the V inside a ring. The ring fills when there
 * is something to measure (how far along, 0 to 100) and turns a short arc
 * while there isn't.
 */
export const StartMark = ({
  progress,
  progressLabel,
}: {
  progress: number | "busy";
  progressLabel: string;
}) => {
  const measured = typeof progress === "number";

  return (
    <span className="relative inline-grid size-28 shrink-0 place-items-center">
      <svg
        viewBox="0 0 100 100"
        role={measured ? "progressbar" : undefined}
        aria-label={measured ? progressLabel : undefined}
        aria-valuemin={measured ? 0 : undefined}
        aria-valuemax={measured ? 100 : undefined}
        aria-valuenow={measured ? Math.round(progress) : undefined}
        aria-hidden={measured ? undefined : true}
        className={cn(
          "absolute inset-0 size-full -rotate-90",
          !measured && "animate-spin motion-reduce:animate-none",
        )}
      >
        <circle
          cx="50"
          cy="50"
          r={ringRadius}
          fill="none"
          strokeWidth="5"
          className="stroke-track"
        />
        <circle
          cx="50"
          cy="50"
          r={ringRadius}
          fill="none"
          strokeWidth="5"
          strokeLinecap="round"
          strokeDasharray={ringLength}
          strokeDashoffset={ringLength * (1 - (measured ? progress : 25) / 100)}
          className="stroke-progress transition-[stroke-dashoffset] duration-300 ease-out"
        />
      </svg>
      <LogoMark className="size-18" />
    </span>
  );
};
