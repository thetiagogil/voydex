import { InfoIcon } from "lucide-react";

import { ExplanatoryTip } from "@/shared/components/explanatory-tip";

export const TeamAnalysisInformationTip = ({
  abilitiesSupported,
  heldItemsSupported,
}: {
  abilitiesSupported: boolean;
  heldItemsSupported: boolean;
}) => {
  const unsupportedModifiers =
    abilitiesSupported && heldItemsSupported
      ? "Recorded Abilities and Held Items are not applied."
      : abilitiesSupported
        ? "Recorded Abilities are not applied."
        : heldItemsSupported
          ? "Recorded Held Items are not applied."
          : null;

  return (
    <ExplanatoryTip
      align="end"
      side="bottom"
      contentClassName="max-w-80"
      content={
        <ul className="grid list-disc gap-1.5 pl-4">
          <li>Only the recorded Active lineup is included.</li>
          <li>Defensive values use base typing for this generation.</li>
          <li>
            Move coverage uses recorded damaging moves only; missing moves are
            not assumed.
          </li>
          {unsupportedModifiers ? <li>{unsupportedModifiers}</li> : null}
          <li>Temporary type changes and battle effects are not modelled.</li>
        </ul>
      }
      trigger={
        <button
          type="button"
          className="text-muted-foreground hover:text-foreground focus-visible:ring-ring/40 inline-flex cursor-help items-center gap-1.5 rounded-md text-xs outline-none focus-visible:ring-2"
          aria-label="Show analysis information"
        />
      }
    >
      <InfoIcon aria-hidden className="size-3.5" />
      <span>Analysis information</span>
    </ExplanatoryTip>
  );
};
