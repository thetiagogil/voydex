import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { CheckboxCard } from "@/shared/components/checkbox-card";
import { EditedMark } from "@/shared/components/edited-mark";
import { SheetSection } from "@/shared/components/sheet-section";
import { SelectControl } from "@/shared/components/select-control";
import { Field, FieldLabel } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";
import {
  GenderIcon,
  genderLabels,
} from "@/modules/reference/features/pokemon/components/gender-icon";

import {
  EditorLabel,
  type TeamMemberEditorStepProps,
} from "./team-member-editor-fields";

const genderOptions = (
  ["male", "female", "genderless", "unknown"] as const
).map((gender) => ({
  icon: <GenderIcon gender={gender} />,
  label: genderLabels[gender],
  value: gender,
}));

/*
 * Who: its species (fixed here), nickname, level and gender, shiny or not
 * and, where its game has it and it can, whether it can Gigantamax.
 */
export const TeamMemberEditorWhoStep = ({
  change,
  edited,
  id,
  member,
  supportsGender,
  supportsGigantamax,
  values,
}: TeamMemberEditorStepProps & {
  member: MainlinePlayTeamMember;
  supportsGender: boolean;
  supportsGigantamax: boolean;
}) => (
  <SheetSection title="Who">
    <div className="grid gap-4 sm:grid-cols-2">
      <Field>
        <FieldLabel htmlFor={`${id}-species`}>Species</FieldLabel>
        {/* It can't change here: Evolve and Change form do that. */}
        <Input
          id={`${id}-species`}
          readOnly
          value={[
            member.species_name,
            member.form_name && member.form_name !== member.species_name
              ? member.form_name
              : null,
          ]
            .filter(Boolean)
            .join(" · ")}
          className="text-ink-2 cursor-default"
        />
      </Field>
      <Field>
        <EditorLabel htmlFor={`${id}-nickname`} edited={edited("nickname")}>
          Nickname
        </EditorLabel>
        <Input
          id={`${id}-nickname`}
          maxLength={100}
          autoComplete="off"
          placeholder={member.species_name ?? undefined}
          value={values.nickname}
          onChange={(event) => change("nickname", event.target.value)}
        />
      </Field>
      <Field>
        <EditorLabel htmlFor={`${id}-level`} edited={edited("level")}>
          Level
        </EditorLabel>
        <Input
          id={`${id}-level`}
          type="number"
          inputMode="numeric"
          min={1}
          max={100}
          placeholder="—"
          value={values.level}
          onChange={(event) => change("level", event.target.value)}
        />
      </Field>
      {supportsGender ? (
        <Field>
          <EditorLabel edited={edited("gender")}>Gender</EditorLabel>
          <SelectControl
            ariaLabel="Gender"
            placeholder="Not recorded"
            searchable={false}
            value={values.gender}
            onValueChange={(value) => {
              const gender = genderOptions.find(
                (option) => option.value === value,
              );

              if (gender) change("gender", gender.value);
            }}
            options={genderOptions}
          />
        </Field>
      ) : null}
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
