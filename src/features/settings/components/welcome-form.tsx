"use client";

import { useRouter } from "next/navigation";
import { useActionState, useId, useState, useTransition } from "react";
import { toast } from "sonner";

import { ProfileIconPicker } from "@/features/settings/components/profile-icon-picker";
import { TrainerCard } from "@/features/settings/components/trainer-card";
import type { ProfileIconChoice } from "@/features/settings/types";
import {
  finishWelcomeAction,
  type ProfileFormState,
  skipWelcomeAction,
} from "@/features/settings/server/profile-actions";
import { DISPLAY_NAME_MAX_LENGTH } from "@/features/settings/utils/display-name";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import { Card } from "@/shared/components/ui/card";
import { Input } from "@/shared/components/ui/input";
import { Spinner } from "@/shared/components/ui/spinner";

type WelcomeFormProps = {
  /* The Pokémon you can pick as your icon. */
  choices: readonly ProfileIconChoice[];
  /* Where Continue and Skip lead: your new Play's way in, or Mainline Home. */
  destination: string;
  displayName: string | null;
  /* The game picked on Start a Play, such as "Sword"; null without one. */
  gameShortName: string | null;
  iconFormId: number | null;
  trainerSince: string | null;
};

const initialState: ProfileFormState = { message: null, status: "idle" };

const questionClassName = "text-20 mb-2.5 leading-tight";

/*
 * Welcome's two halves (v3 `onboard`): the trainer card on the left changes
 * as you type, and the questions on the right. Continue saves your name and
 * icon and Skip saves nothing; either one marks Welcome done and carries on,
 * and Welcome never opens again.
 */
export const WelcomeForm = ({
  choices,
  destination,
  displayName,
  gameShortName,
  iconFormId,
  trainerSince,
}: WelcomeFormProps) => {
  const router = useRouter();
  const nameId = useId();
  const hintId = useId();
  const [draft, setDraft] = useState(displayName ?? "");
  const [pickedFormId, setPickedFormId] = useState(
    choices.some((choice) => choice.formId === iconFormId) ? iconFormId : null,
  );
  const [isSkipping, startSkipping] = useTransition();
  const [, formAction, isSaving] = useActionState(
    async (previousState: ProfileFormState, formData: FormData) => {
      const result = await finishWelcomeAction(previousState, formData);

      if (result.status === "success") {
        router.push(destination);
      } else if (result.message) {
        toast.error(result.message);
      }

      return result;
    },
    initialState,
  );
  const skip = () =>
    startSkipping(async () => {
      const result = await skipWelcomeAction();

      if (result.status === "success") {
        router.push(destination);
      } else if (result.message) {
        toast.error(result.message);
      }
    });
  const isBusy = isSaving || isSkipping;
  const previewName = draft.trim() || null;
  const pickedChoice = choices.find((choice) => choice.formId === pickedFormId);
  const continueLabel = gameShortName
    ? `Go to your ${gameShortName} Play`
    : "Continue";

  return (
    <div className="mx-auto mt-5.5 grid w-full max-w-235 items-start gap-4.5 sm:mt-7 md:grid-cols-[18.75rem_minmax(0,1fr)] md:gap-8">
      <TrainerCard
        layout="stack"
        className="md:sticky md:top-6"
        icon={
          pickedChoice?.url
            ? { name: pickedChoice.name, url: pickedChoice.url }
            : null
        }
        initial={null}
        name={previewName}
        subtitle={
          trainerSince ? `Trainer since ${trainerSince}` : "Your trainer card"
        }
      />
      <Card className="gap-0 px-5 py-0 sm:px-7.5">
        <form action={formAction} aria-label="About you">
          <div className="py-4.5">
            <h2 className={questionClassName}>
              <label htmlFor={nameId}>What should we call you?</label>
            </h2>
            <Input
              id={nameId}
              name="displayName"
              autoComplete="nickname"
              placeholder="Your name"
              maxLength={DISPLAY_NAME_MAX_LENGTH}
              aria-describedby={hintId}
              value={draft}
              onChange={(event) => setDraft(event.target.value)}
            />
            <p id={hintId} className="text-13 text-ink-2 mt-2.5 font-semibold">
              It&apos;s also the trainer name for your new Plays.
            </p>
          </div>
          <div className="py-4.5">
            <h2 className={questionClassName}>Pick your icon</h2>
            <ProfileIconPicker
              ariaLabel="Pick your icon"
              choices={choices}
              name="iconFormId"
              onChange={setPickedFormId}
              value={pickedFormId}
            />
          </div>
          <div className="flex flex-wrap items-center gap-2.5 pt-4.5 pb-6">
            <p className="text-13 text-ink-2 mr-auto font-semibold">
              You can change all of this later in Settings.
            </p>
            <Button
              type="button"
              size="sm"
              variant="secondary"
              disabled={isBusy}
              onClick={skip}
            >
              Skip for now
            </Button>
            <Button
              type="submit"
              size="sm"
              disabled={isBusy}
              aria-busy={isSaving}
            >
              {isSaving ? <Spinner data-icon="inline-start" /> : null}
              {isSaving ? "Saving..." : continueLabel}
              {isSaving ? null : (
                <AppIcon icon={appIcons.actions.continue} inline="end" />
              )}
            </Button>
          </div>
        </form>
      </Card>
    </div>
  );
};
