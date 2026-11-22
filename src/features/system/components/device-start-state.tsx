import { getGameDataPercent } from "@/platform/local-db/game-data";
import type { PrepareStep } from "@/platform/local-db/prepare-device";
import {
  getStartupSteps,
  getStartupTitle,
  startupStepLabels,
} from "@/platform/local-db/startup-steps";
import { LoadingSteps } from "@/shared/components/brand/loading-steps";

/* What opening the device is doing, when it is more than opening. */
const describeStep = (step: PrepareStep | null) => {
  switch (step?.step) {
    case "updating":
      return "Updating the data on this device. A copy is kept until it's done.";
    case "base":
      return "Setting up Voydex on this device. This happens once.";
    case "game-data":
      return "New game data came out. Your Plays and Plans stay as they are.";
    default:
      return null;
  }
};

/*
 * The start screen: the first steps of the app's one loading bar, alone on
 * the wall while the device database opens and, then, the app's pages are
 * read. Right after Log in (`withAccount`) the account's sync follows on
 * the next screen, as the next steps of the same bar.
 */
export const DeviceStartState = ({
  pages = false,
  step,
  withAccount = false,
}: {
  /* The device is open: the app's pages are being read. */
  pages?: boolean;
  step: PrepareStep | null;
  withAccount?: boolean;
}) => {
  const steps = getStartupSteps(withAccount);
  const download =
    step?.step === "base" || step?.step === "game-data" ? step.progress : null;
  const key = pages ? "pages" : "device";

  return (
    <LoadingSteps
      title={getStartupTitle(withAccount)}
      steps={steps.map((stepKey) => startupStepLabels[stepKey])}
      current={steps.indexOf(key)}
      fraction={!pages && download ? getGameDataPercent(download) / 100 : null}
      detail={pages ? null : describeStep(step)}
    />
  );
};
