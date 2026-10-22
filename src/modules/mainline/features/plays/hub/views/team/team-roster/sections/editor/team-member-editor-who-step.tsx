import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { SheetSection } from "@/shared/components/sheet-section";
import { SelectControl } from "@/shared/components/select-control";
import { Field, FieldLabel } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

import {
  EditorLabel,
  type TeamMemberEditorStepProps,
} from "./team-member-editor-fields";

const genderOptions = [
  {
    icon: <AppIcon icon={appIcons.product.genderMale} size="md" />,
    label: "Male",
    value: "male",
  },
  {
    icon: <AppIcon icon={appIcons.product.genderFemale} size="md" />,
    label: "Female",
    value: "female",
  },
  {
    icon: <AppIcon icon={appIcons.product.genderless} size="md" />,
    label: "Genderless",
    value: "genderless",
  },
  {
    icon: <AppIcon icon={appIcons.status.unknown} size="md" />,
    label: "Not recorded",
    value: "unknown",
  },
] as const;

/* Who: its species (fixed here), nickname, level and gender. */
export const TeamMemberEditorWhoStep = ({
  change,
  edited,
  id,
  member,
  supportsGender,
  values,
}: TeamMemberEditorStepProps & {
  member: MainlinePlayTeamMember;
  supportsGender: boolean;
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
    </div>
  </SheetSection>
);
