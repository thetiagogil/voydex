import { getGameDataPercent } from "@/platform/local-db/game-data";
import type { PrepareStep } from "@/platform/local-db/prepare-device";
import { StartMark } from "@/shared/components/brand/start-mark";

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
