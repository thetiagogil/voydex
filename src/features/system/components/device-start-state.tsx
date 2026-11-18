import { getGameDataPercent } from "@/platform/local-db/game-data";
import type { PrepareStep } from "@/platform/local-db/prepare-device";
import { DexLens } from "@/shared/components/brand/dex-lens";
import { DexLights } from "@/shared/components/brand/dex-lights";

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
 * The start screen: the Dex booting, the one step between the website and
 * the app, alone on the page in the Dex's red while the device database
 * opens. A ring round the lens fills while game data downloads (the first
 * time Voydex sets up on a device, or when new game data came out) and
 * turns otherwise, and the three lights flash one at a time.
 */
export const DeviceStartState = ({ step }: { step: PrepareStep | null }) => {
  const { detail, title } = describeStep(step);
  const progress =
    step?.step === "base" || step?.step === "game-data" ? step.progress : null;
  const saving = progress !== null && progress.step !== "downloading";

  return (
    <div
      role="status"
      className="mx-auto flex w-full max-w-sm flex-col items-center gap-3 text-center text-white"
    >
      <DexLens
        className="size-36"
        progress={progress ? getGameDataPercent(progress) : "busy"}
        progressLabel={saving ? "Saving game data" : "Downloading game data"}
      />
      <DexLights loading />
      <p className="title-card mt-2">{title}</p>
      {detail ? <p className="text-15 font-semibold">{detail}</p> : null}
    </div>
  );
};
