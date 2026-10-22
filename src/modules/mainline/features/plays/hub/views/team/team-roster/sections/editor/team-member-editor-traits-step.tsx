import { EditedMark } from "@/shared/components/edited-mark";
import { SettingsRow } from "@/shared/components/settings-row";
import { SheetSection } from "@/shared/components/sheet-section";
import { Switch } from "@/shared/components/ui/switch";

import { type TeamMemberEditorStepProps } from "./team-member-editor-fields";

const yesNo = ["No", "Yes"] as const;

/*
 * Traits: what sets this Pokémon apart as itself, shiny or not and, where its
 * game has it, whether it can Gigantamax.
 */
export const TeamMemberEditorTraitsStep = ({
  change,
  edited,
  id,
  supportsGigantamax,
  values,
}: TeamMemberEditorStepProps & { supportsGigantamax: boolean }) => (
  <SheetSection title="Traits">
    <SettingsRow
      inline
      className="py-0"
      title={<EditedMark edited={edited("isShiny")}>Shiny</EditedMark>}
      titleId={`${id}-shiny`}
    >
      <Switch
        size="lg"
        labels={yesNo}
        aria-labelledby={`${id}-shiny`}
        checked={values.isShiny}
        onCheckedChange={(checked) => change("isShiny", checked)}
      />
    </SettingsRow>
    {supportsGigantamax ? (
      <SettingsRow
        inline
        className="py-0"
        title={
          <EditedMark edited={edited("hasGigantamaxFactor")}>
            Can Gigantamax
          </EditedMark>
        }
        titleId={`${id}-gigantamax`}
        description="It has the Gigantamax Factor and can take its special form."
      >
        <Switch
          size="lg"
          labels={yesNo}
          aria-labelledby={`${id}-gigantamax`}
          checked={values.hasGigantamaxFactor}
          onCheckedChange={(checked) => change("hasGigantamaxFactor", checked)}
        />
      </SettingsRow>
    ) : null}
  </SheetSection>
);
