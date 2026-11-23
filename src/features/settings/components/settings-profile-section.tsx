"use client";

import { useActionState, useState } from "react";
import { toast } from "sonner";

import { TrainerCard } from "@/features/settings/components/trainer-card";
import { TrainerProfileFields } from "@/features/settings/components/trainer-profile-fields";
import type { ProfileIconChoice } from "@/features/settings/types";
import {
  type ProfileFormState,
  saveProfileAction,
} from "@/features/settings/client/profile-actions";
import type { TrainerDraft } from "@/features/settings/utils/trainer-profile";
import { UnsavedChangesFooter } from "@/shared/components/unsaved-changes-footer";

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

type ProfileValues = TrainerDraft;

const sameProfile = (left: ProfileValues, right: ProfileValues) =>
  left.defaultTrainerName === right.defaultTrainerName &&
  left.displayName === right.displayName &&
  left.iconFormId === right.iconFormId;

const initialState: ProfileFormState = { message: null, status: "idle" };

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
  const incoming = {
    defaultTrainerName: defaultTrainerName ?? "",
    displayName: displayName ?? "",
    /* An icon that is no longer offered reads as none, so Save never posts it. */
    iconFormId: choices.some((choice) => choice.formId === iconFormId)
      ? iconFormId
      : null,
  };
  const [saved, setSaved] = useState(incoming);
  const [draft, setDraft] = useState(saved);
  const [served, setServed] = useState(incoming);

  /*
   * The saved profile changed under the form (another device's backup,
   * taken): follow it, unless you have unsaved changes of your own.
   */
  if (!sameProfile(served, incoming)) {
    setServed(incoming);
    setSaved(incoming);

    if (sameProfile(draft, saved)) setDraft(incoming);
  }
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
        <TrainerProfileFields
          choices={choices}
          draft={draft}
          onChange={(change) =>
            setDraft((current) => ({ ...current, ...change }))
          }
        />
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
