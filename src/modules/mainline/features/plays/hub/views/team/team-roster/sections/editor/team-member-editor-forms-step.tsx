import { CheckboxCard } from "@/shared/components/checkbox-card";
import { EditedMark } from "@/shared/components/edited-mark";
import { SheetSection } from "@/shared/components/sheet-section";

import { type TeamMemberEditorStepProps } from "./team-member-editor-fields";

/*
 * Forms: what changes how this Pokémon looks, shiny or not and, where its
 * game has it, whether it can Gigantamax.
 */
export const TeamMemberEditorFormsStep = ({
  change,
  edited,
  id,
  supportsGigantamax,
  values,
}: TeamMemberEditorStepProps & { supportsGigantamax: boolean }) => (
  <SheetSection title="Forms">
    <div className="grid gap-4 sm:grid-cols-2">
      <CheckboxCard
        size="compact"
        id={`${id}-shiny`}
        title={<EditedMark edited={edited("isShiny")}>Shiny</EditedMark>}
        checked={values.isShiny}
        onCheckedChange={(checked) => change("isShiny", checked === true)}
      />
      {supportsGigantamax ? (
        <CheckboxCard
          size="compact"
          id={`${id}-gigantamax`}
          title={
            <EditedMark edited={edited("hasGigantamaxFactor")}>
              Can Gigantamax
            </EditedMark>
          }
          checked={values.hasGigantamaxFactor}
          onCheckedChange={(checked) =>
            change("hasGigantamaxFactor", checked === true)
          }
        />
      ) : null}
    </div>
  </SheetSection>
);
