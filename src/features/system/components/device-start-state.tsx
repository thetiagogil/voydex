import { getGameDataPercent } from "@/platform/local-db/game-data";
import type { PrepareStep } from "@/platform/local-db/prepare-device";
import { LogoMark } from "@/shared/components/brand/logo-mark";
import { Progress } from "@/shared/components/ui/progress";
import { Spinner } from "@/shared/components/ui/spinner";

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

/*
 * The start screen: the one step between the website and the app, alone on
 * the page with no bars, while the device database opens. It shows a bar
 * while game data downloads (the first time Voydex sets up on a device, or
 * when new game data came out) and a spinner otherwise.
 */
export const DeviceStartState = ({ step }: { step: PrepareStep | null }) => {
  const { detail, title } = describeStep(step);
  const progress =
    step?.step === "base" || step?.step === "game-data" ? step.progress : null;

  return (
    <div
      role="status"
      className="mx-auto flex w-full max-w-sm flex-col items-center gap-3 text-center"
    >
      <LogoMark className="size-16" />
      <p className="title-card mt-3">{title}</p>
      {detail ? (
        <p className="text-15 text-ink-2 font-semibold">{detail}</p>
      ) : null}
      {progress ? (
        <Progress
          aria-label={
            progress.step === "downloading"
              ? "Downloading game data"
              : "Saving game data"
          }
          className="mt-2 w-full"
          value={getGameDataPercent(progress)}
        />
      ) : (
        <Spinner aria-hidden className="text-action mt-2 size-7" />
      )}
    </div>
  );
};
