import { getGameDataPercent } from "@/platform/local-db/game-data";
import type { PrepareStep } from "@/platform/local-db/prepare-device";
import { ProgressState } from "@/shared/components/progress-state";

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
 * The one short start screen while the device database opens, with a bar
 * the first time Voydex sets up on a device.
 */
export const DeviceStartState = ({ step }: { step: PrepareStep | null }) => (
  <ProgressState
    {...describeStep(step)}
    progress={
      step?.step === "base" || step?.step === "game-data"
        ? {
            label:
              step.progress.step === "downloading"
                ? "Downloading game data"
                : "Saving game data",
            value: getGameDataPercent(step.progress),
          }
        : null
    }
  />
);
