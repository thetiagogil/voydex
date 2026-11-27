"use client";

import { useActionState, useState } from "react";

import { TrainerCard } from "@/features/settings/components/trainer-card";
import { TrainerProfileFields } from "@/features/settings/components/trainer-profile-fields";
import {
  type ProfileFormState,
  saveProfileAction,
} from "@/features/settings/client/profile-actions";
import type { ProfileSettings } from "@/features/settings/client/profile-settings-query";
import type { ProfileIconChoice } from "@/features/settings/types";
import {
  getTrainerDraft,
  type TrainerDraft,
} from "@/features/settings/utils/trainer-profile";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

type TrainerSetupProps = {
  choices: readonly ProfileIconChoice[];
  /* Your profile as saved: what you already have stays as it is. */
  profile: ProfileSettings;
  /*
   * Your profile is saved and has everything: the app opens once this
   * settles (Continue stays busy until then).
   */
  onDone: () => Promise<void>;
};

const initialState: ProfileFormState = { message: null, status: "idle" };

/*
 * The trainer step: before the app opens, a trainer with no display name,
 * trainer name or icon picks them. It opens filled in (Ash for both names
 * and a starter picked at random, or what you already have), so Continue
 * alone is enough. The trainer name follows the display name as you type
 * until you change it yourself.
 */
export const TrainerSetup = ({
  choices,
  onDone,
  profile,
}: TrainerSetupProps) => {
  const [draft, setDraft] = useState<TrainerDraft>(() =>
    getTrainerDraft(
      profile,
      choices.map((choice) => choice.formId),
    ),
  );
  /* Whether the trainer name still follows the display name. */
  const [follows, setFollows] = useState(
    () => draft.defaultTrainerName === draft.displayName,
  );
  const [state, formAction, isSaving] = useActionState(
    async (previousState: ProfileFormState, formData: FormData) => {
      const result = await saveProfileAction(previousState, formData);

      if (result.status === "success") await onDone();

      return result;
    },
    initialState,
  );
  const pickedChoice = choices.find(
    (choice) => choice.formId === draft.iconFormId,
  );
  const previewName = draft.displayName.trim() || null;

  const change = (next: Partial<TrainerDraft>) => {
    if (next.defaultTrainerName !== undefined) setFollows(false);

    setDraft((current) => ({
      ...current,
      ...next,
      ...(follows && next.displayName !== undefined
        ? { defaultTrainerName: next.displayName }
        : {}),
    }));
  };

  return (
    <div className="mx-auto flex w-full max-w-2xl flex-col gap-6">
      <header className="flex flex-col items-center gap-2 text-center">
        <h1 className="title-page">Your trainer</h1>
        <p className="copy-note text-ink-2">
          Pick a name and a Pokémon for your trainer card. You can change them
          any time in Settings.
        </p>
      </header>
      <form action={formAction} aria-label="Your trainer">
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
          initial={previewName ? previewName.charAt(0).toUpperCase() : null}
          name={previewName}
          subtitle="Your trainer card"
        >
          <TrainerProfileFields
            choices={choices}
            draft={draft}
            onChange={change}
          />
          <div className="flex flex-col items-stretch gap-3 pt-6 sm:flex-row sm:items-center sm:justify-end">
            {state.status === "error" && state.message ? (
              <p role="alert" className="copy-body text-danger sm:mr-auto">
                {state.message}
              </p>
            ) : null}
            <Button
              type="submit"
              size="lg"
              disabled={isSaving}
              aria-busy={isSaving}
            >
              {isSaving ? <Spinner data-icon="inline-start" /> : null}
              Continue
              {isSaving ? null : (
                <AppIcon icon={appIcons.actions.continue} inline="end" />
              )}
            </Button>
          </div>
        </TrainerCard>
      </form>
    </div>
  );
};
