import { getGameDataPercent } from "@/platform/local-db/game-data";
import type { PrepareStep } from "@/platform/local-db/prepare-device";
import { PageBand } from "@/shared/components/page-band";
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
    default:
      return { detail: null, title: "Opening your Plays" };
  }
};

/*
 * The one short start screen while the device database opens: the page band,
 * then what is happening, with a bar the first time Voydex sets up on a
 * device.
 */
export const DeviceStartState = ({ step }: { step: PrepareStep | null }) => {
  const { detail, title } = describeStep(step);

  return (
    <>
      <PageBand>
        <div aria-hidden className="h-20 sm:h-24" />
      </PageBand>
      <div
        role="status"
        className="mx-auto flex min-h-60 w-full max-w-sm flex-1 flex-col items-center justify-center gap-3 text-center"
      >
        <Spinner aria-hidden className="text-action size-7" />
        <p className="text-16 text-ink font-bold">{title}</p>
        {detail ? <p className="text-14 text-ink-2">{detail}</p> : null}
        {step?.step === "base" ? (
          <Progress
            aria-label={
              step.progress.step === "downloading"
                ? "Downloading game data"
                : "Saving game data"
            }
            className="w-full"
            value={getGameDataPercent(step.progress)}
          />
        ) : null}
      </div>
    </>
  );
};
