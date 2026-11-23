"use client";

import { useId } from "react";

import { ProfileIconPicker } from "@/features/settings/components/profile-icon-picker";
import type { ProfileIconChoice } from "@/features/settings/types";
import { TRAINER_NAME_MAX_LENGTH } from "@/config/trainer-name";
import { DISPLAY_NAME_MAX_LENGTH } from "@/features/settings/utils/display-name";
import type { TrainerDraft } from "@/features/settings/utils/trainer-profile";
import { Field, FieldLabel } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";

type TrainerProfileFieldsProps = {
  choices: readonly ProfileIconChoice[];
  draft: TrainerDraft;
  /* One change at a time: the icon, or one of the names as typed. */
  onChange: (change: Partial<TrainerDraft>) => void;
};

const fieldLabelClassName = "copy-label text-ink-2";

/*
 * Your trainer profile's fields, inside the trainer card: the icon picker,
 * your display name and the trainer name a new Play starts with. All three
 * are needed, so the names are required fields. Settings and the trainer
 * step both use them, and send them as `iconFormId`, `displayName` and
 * `defaultTrainerName`.
 */
export const TrainerProfileFields = ({
  choices,
  draft,
  onChange,
}: TrainerProfileFieldsProps) => {
  const nameId = useId();
  const trainerNameId = useId();
  const trainerNameHintId = useId();

  return (
    <div className="flex flex-col gap-4 pt-4.5">
      <div className="flex flex-col gap-2">
        <p className={fieldLabelClassName}>Your icon</p>
        <ProfileIconPicker
          ariaLabel="Your icon"
          choices={choices}
          name="iconFormId"
          onChange={(formId) => onChange({ iconFormId: formId })}
          value={draft.iconFormId}
        />
      </div>
      <div className="grid gap-4 sm:grid-cols-2">
        <Field>
          <FieldLabel htmlFor={nameId} className={fieldLabelClassName}>
            Display name
          </FieldLabel>
          <Input
            id={nameId}
            name="displayName"
            autoComplete="nickname"
            required
            maxLength={DISPLAY_NAME_MAX_LENGTH}
            value={draft.displayName}
            onChange={(event) => onChange({ displayName: event.target.value })}
          />
        </Field>
        <Field>
          <FieldLabel htmlFor={trainerNameId} className={fieldLabelClassName}>
            Default trainer name
          </FieldLabel>
          <Input
            id={trainerNameId}
            name="defaultTrainerName"
            aria-describedby={trainerNameHintId}
            required
            maxLength={TRAINER_NAME_MAX_LENGTH}
            value={draft.defaultTrainerName}
            onChange={(event) =>
              onChange({ defaultTrainerName: event.target.value })
            }
          />
          <p id={trainerNameHintId} className="copy-meta text-ink-2">
            New Plays start with it.
          </p>
        </Field>
      </div>
    </div>
  );
};
