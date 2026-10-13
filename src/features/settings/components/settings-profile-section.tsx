"use client";

import { useActionState, useId, useState } from "react";
import { toast } from "sonner";

import { TrainerCard } from "@/features/settings/components/trainer-card";
import {
  type ProfileFormState,
  saveDisplayNameAction,
} from "@/features/settings/server/profile-actions";
import { DISPLAY_NAME_MAX_LENGTH } from "@/features/settings/utils/display-name";
import { PendingData } from "@/shared/components/pending-data";
import { UnsavedChangesFooter } from "@/shared/components/unsaved-changes-footer";
import { Field, FieldLabel } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";

type SettingsProfileSectionProps = {
  displayName: string | null;
  /* Null when your email couldn't be read right now. */
  email: string | null;
  trainerSince: string | null;
};

const initialState: ProfileFormState = { message: null, status: "idle" };

const fieldLabelClassName = "text-13 text-ink-2 font-bold";

/*
 * Settings' profile (v3 `.set-me`): the trainer card is the form. Type a name
 * and the card changes as you do; the footer offers Save and Cancel only
 * while there are unsaved changes.
 */
export const SettingsProfileSection = ({
  displayName,
  email,
  trainerSince,
}: SettingsProfileSectionProps) => {
  const nameId = useId();
  const [savedName, setSavedName] = useState(displayName ?? "");
  const [draft, setDraft] = useState(savedName);
  const [, formAction, isSaving] = useActionState(
    async (previousState: ProfileFormState, formData: FormData) => {
      const result = await saveDisplayNameAction(previousState, formData);

      if (result.status === "success") {
        const name = result.savedName ?? "";

        setSavedName(name);
        setDraft(name);
        toast.success(result.message);
      } else if (result.message) {
        toast.error(result.message);
      }

      return result;
    },
    initialState,
  );
  const previewName = draft.trim() || null;
  const isDirty = draft.trim() !== savedName;
  const initialSource = previewName ?? email;

  return (
    <form action={formAction} aria-label="Profile">
      <TrainerCard
        initial={initialSource ? initialSource.charAt(0).toUpperCase() : null}
        name={previewName}
        subtitle={
          trainerSince ? `Trainer since ${trainerSince}` : "Your trainer card"
        }
      >
        <div className="flex flex-col gap-4 border-t border-[color-mix(in_oklab,var(--t,var(--lip))_30%,var(--line))] pt-4.5">
          <div className="flex flex-col gap-2">
            <p className={fieldLabelClassName}>Your icon</p>
            {/* TODO(v3-data): a Pokémon icon on the profile (profiles.avatar_url is a URL, not a species). */}
            <PendingData variant="inline" className="w-fit" />
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
                value={draft}
                onChange={(event) => setDraft(event.target.value)}
              />
            </Field>
            <div className="flex flex-col gap-1.5">
              <p className={fieldLabelClassName}>Default trainer name</p>
              {/* TODO(v3-data): a default trainer name for new Plays on the profile. */}
              <PendingData variant="inline" className="w-fit" />
            </div>
          </div>
        </div>
        {isDirty ? (
          <UnsavedChangesFooter
            isSaving={isSaving}
            onCancel={() => setDraft(savedName)}
            className="-mx-4.5 mt-5 -mb-5 rounded-b-[28px] sm:-mx-6.5 sm:-mb-6"
          />
        ) : null}
      </TrainerCard>
    </form>
  );
};
