import { cn } from "@/shared/utils/cn";

type DexLensProps = {
  className?: string;
  /*
   * How far along the device is, 0 to 100, drawn as a ring round the lens;
   * `"busy"` turns a short arc while there is nothing to measure. Left out,
   * the lens stands alone.
   */
  progress?: number | "busy";
  /* What the ring measures, for a screen reader. */
  progressLabel?: string;
};

const ringRadius = 46;
const ringLength = 2 * Math.PI * ringRadius;

/*
 * The Dex's lens: the round blue glass of a Pokédex, in a white rim. It is
 * Voydex's mark wherever the app shows as the device (the front page, the
 * start screen). The glass is domed: shaded inside its lower right, lit
 * inside its upper left, with two glints, in a rim that sits in a dark
 * socket. No gradient fills, only shadows. Size it with `size-*`, and its
 * rim and shadows with a text size; it sits on the action red.
 */
export const DexLens = ({
  className,
  progress,
  progressLabel,
}: DexLensProps) => {
  const measured = typeof progress === "number";

  return (
    <span
      className={cn(
        "relative inline-grid shrink-0 place-items-center",
        className,
      )}
    >
      {progress === undefined ? null : (
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
            className="stroke-white/30"
          />
          <circle
            cx="50"
            cy="50"
            r={ringRadius}
            fill="none"
            strokeWidth="5"
            strokeLinecap="round"
            strokeDasharray={ringLength}
            strokeDashoffset={
              ringLength * (1 - (measured ? progress : 25) / 100)
            }
            className="stroke-white transition-[stroke-dashoffset] duration-300 ease-out"
          />
        </svg>
      )}
      <span
        aria-hidden
        className={cn(
          "bg-calm shadow-dex-lens relative block rounded-full border-white",
          progress === undefined
            ? "size-full border-[0.4em]"
            : "size-[78%] border-[0.25em]",
        )}
      >
        <span className="bg-calm-soft absolute top-[15%] left-[18%] block size-[26%] rounded-full opacity-85" />
        <span className="bg-calm-soft absolute top-[45%] left-[13%] block size-[9%] rounded-full opacity-60" />
      </span>
    </span>
  );
};
