import { getGameDataPercent } from "@/platform/local-db/game-data";
import type { PrepareStep } from "@/platform/local-db/prepare-device";
import { LogoMark } from "@/shared/components/brand/logo-mark";
import { cn } from "@/shared/utils/cn";

const describeStep = (step: PrepareStep | null) => {
  switch (step?.step) {
    case "updating":
      return {
        detail: "A copy of your data is kept until it's done.",
        title: "Updating the data on this device",
      };
    case "base":
      return {
        detail: "This happens once, the first time you open Voydex here.",
        title: "Setting up Voydex on this device",
      };
    case "game-data":
      return {
        detail:
          "New game data came out. Your Plays and Plans stay as they are.",
        title: "Updating game data",
      };
    default:
      return { detail: null, title: "Opening your Plays" };
  }
};

const ringRadius = 46;
const ringLength = 2 * Math.PI * ringRadius;

/*
 * The start screen's mark: the V inside a ring. The ring fills while game
 * data downloads (how far along, 0 to 100) and turns a short arc while there
 * is nothing to measure.
 */
const StartMark = ({
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

/*
 * The start screen: the one step between the website and the app, alone on
 * the wall while the device database opens. The V sits in a ring that fills
 * while game data downloads (the first time Voydex sets up on a device, or
 * when new game data came out) and turns otherwise.
 */
export const DeviceStartState = ({ step }: { step: PrepareStep | null }) => {
  const { detail, title } = describeStep(step);
  const progress =
    step?.step === "base" || step?.step === "game-data" ? step.progress : null;
  const saving = progress !== null && progress.step !== "downloading";

  return (
    <div
      role="status"
      className="mx-auto flex w-full max-w-sm flex-col items-center gap-3 text-center"
    >
      <StartMark
        progress={progress ? getGameDataPercent(progress) : "busy"}
        progressLabel={saving ? "Saving game data" : "Downloading game data"}
      />
      <p className="title-card mt-2">{title}</p>
      {detail ? <p className="text-ink-2 copy-body">{detail}</p> : null}
    </div>
  );
};
