"use client";

import { useActionState, useId, useState } from "react";
import { toast } from "sonner";

import { ProfileIconPicker } from "@/features/settings/components/profile-icon-picker";
import { TrainerCard } from "@/features/settings/components/trainer-card";
import type { ProfileIconChoice } from "@/features/settings/types";
import {
  type ProfileFormState,
  saveProfileAction,
} from "@/features/settings/server/profile-actions";
import {
  DISPLAY_NAME_MAX_LENGTH,
  TRAINER_NAME_MAX_LENGTH,
} from "@/features/settings/utils/display-name";
import { UnsavedChangesFooter } from "@/shared/components/unsaved-changes-footer";
import { Field, FieldLabel } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";

type SettingsProfileSectionProps = {
  /* The Pokémon you can pick as your icon. */
  choices: readonly ProfileIconChoice[];
  defaultTrainerName: string | null;
  displayName: string | null;
  /* Null when your email couldn't be read right now. */
  email: string | null;
  iconFormId: number | null;
  trainerSince: string | null;
};

const initialState: ProfileFormState = { message: null, status: "idle" };

const fieldLabelClassName = "text-13 text-ink-2 font-bold";

/*
 * Settings' profile (v3 `.set-me`): the trainer card is the form. Pick an icon
 * or type a name and the card changes as you do; the footer offers Save and
 * Cancel only while there are unsaved changes.
 */
export const SettingsProfileSection = ({
  choices,
  defaultTrainerName,
  displayName,
  email,
  iconFormId,
  trainerSince,
}: SettingsProfileSectionProps) => {
  const nameId = useId();
  const trainerNameId = useId();
  const trainerNameHintId = useId();
  const [saved, setSaved] = useState({
    defaultTrainerName: defaultTrainerName ?? "",
    displayName: displayName ?? "",
    /* An icon that is no longer offered reads as none, so Save never posts it. */
    iconFormId: choices.some((choice) => choice.formId === iconFormId)
      ? iconFormId
      : null,
  });
  const [draft, setDraft] = useState(saved);
  const [, formAction, isSaving] = useActionState(
    async (previousState: ProfileFormState, formData: FormData) => {
      const result = await saveProfileAction(previousState, formData);

      if (result.status === "success" && result.saved) {
        const next = {
          defaultTrainerName: result.saved.defaultTrainerName ?? "",
          displayName: result.saved.displayName ?? "",
          iconFormId: result.saved.iconFormId,
        };

        setSaved(next);
        setDraft(next);
        toast.success(result.message);
      } else if (result.message) {
        toast.error(result.message);
      }

      return result;
    },
    initialState,
  );
  const previewName = draft.displayName.trim() || null;
  const isDirty =
    draft.displayName.trim() !== saved.displayName ||
    draft.defaultTrainerName.trim() !== saved.defaultTrainerName ||
    draft.iconFormId !== saved.iconFormId;
  const initialSource = previewName ?? email;
  const pickedChoice = choices.find(
    (choice) => choice.formId === draft.iconFormId,
  );

  return (
    <form action={formAction} aria-label="Profile">
      <TrainerCard
        icon={
          pickedChoice?.url
            ? {
                name: pickedChoice.name,
                typeSlug: pickedChoice.typeSlug,
                url: pickedChoice.url,
              }
            : null
        }
        initial={initialSource ? initialSource.charAt(0).toUpperCase() : null}
        name={previewName}
        subtitle={
          trainerSince ? `Trainer since ${trainerSince}` : "Your trainer card"
        }
      >
        <div className="flex flex-col gap-4 pt-4.5">
          <div className="flex flex-col gap-2">
            <p className={fieldLabelClassName}>Your icon</p>
            <ProfileIconPicker
              ariaLabel="Your icon"
              choices={choices}
              name="iconFormId"
              onChange={(formId) =>
                setDraft((current) => ({ ...current, iconFormId: formId }))
              }
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
                placeholder="Your name"
                maxLength={DISPLAY_NAME_MAX_LENGTH}
                value={draft.displayName}
                onChange={(event) =>
                  setDraft((current) => ({
                    ...current,
                    displayName: event.target.value,
                  }))
                }
              />
            </Field>
            <Field>
              <FieldLabel
                htmlFor={trainerNameId}
                className={fieldLabelClassName}
              >
                Default trainer name
              </FieldLabel>
              <Input
                id={trainerNameId}
                name="defaultTrainerName"
                aria-describedby={trainerNameHintId}
                placeholder={previewName ?? "Your name"}
                maxLength={TRAINER_NAME_MAX_LENGTH}
                value={draft.defaultTrainerName}
                onChange={(event) =>
                  setDraft((current) => ({
                    ...current,
                    defaultTrainerName: event.target.value,
                  }))
                }
              />
              <p
                id={trainerNameHintId}
                className="text-13 text-ink-2 font-semibold"
              >
                New Plays start with it. Left empty, they use your display name.
              </p>
            </Field>
          </div>
        </div>
        {isDirty ? (
          <UnsavedChangesFooter
            isSaving={isSaving}
            onCancel={() => setDraft(saved)}
            className="-mx-4.5 mt-5 -mb-5 rounded-b-[28px] sm:-mx-6.5 sm:-mb-6"
          />
        ) : null}
      </TrainerCard>
    </form>
  );
};
