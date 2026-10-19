"use client";

import { useActionState, useEffect, useRef, useState } from "react";
import { useFormStatus } from "react-dom";
import { useRouter } from "next/navigation";

import { formatMilestoneRange } from "@/modules/mainline/features/plays/shared/data/play-milestones";
import { CheckboxCard } from "@/shared/components/checkbox-card";
import { Alert, AlertDescription } from "@/shared/components/ui/alert";
import {
  AlertDialogCancel,
  AlertDialogFooter,
} from "@/shared/components/ui/alert-dialog";
import { Button } from "@/shared/components/ui/button";
import { DialogClose, DialogFooter } from "@/shared/components/ui/dialog";
import {
  Field,
  FieldDescription,
  FieldGroup,
  FieldLabel,
} from "@/shared/components/ui/field";
import { SheetClose, SheetFooter } from "@/shared/components/ui/sheet";
import { Spinner } from "@/shared/components/ui/spinner";
import { Textarea } from "@/shared/components/ui/textarea";
import { cn } from "@/shared/utils/cn";

import {
  type StoryMilestoneActionIntent,
  type StoryMilestoneActionState,
  updateStoryMilestoneAction,
} from "../../server/story-milestone-action";
import type { StoryMilestone, StoryMilestoneRef } from "../../types";
import {
  getStoryMilestoneEditorCopy,
  type StoryMilestoneEditorCopy,
} from "../../utils/story-milestone-editor";
import { StoryMilestoneDecisionField } from "./story-milestone-decision-field";
import { StoryMilestoneIncompletionImpact } from "./story-milestone-incompletion-impact";
import { StoryMilestoneSnapshotPreview } from "./story-milestone-snapshot-preview";

export type StoryMilestoneEditorSurface = "alert-dialog" | "dialog" | "sheet";

/* "Brock", "Brock and Misty", or "Brock to Koga" for a longer run. */
const describeMilestoneRun = (milestones: StoryMilestoneRef[]) => {
  const first = milestones[0]?.name ?? "";
  const last = milestones.at(-1)?.name ?? "";

  return milestones.length > 2
    ? `${first} to ${last}`
    : milestones.length === 2
      ? `${first} and ${last}`
      : first;
};

const initialStoryMilestoneActionState: StoryMilestoneActionState = {
  message: null,
  status: "idle",
};

const StoryMilestoneSubmitButton = ({
  copy,
  intent,
}: {
  copy: StoryMilestoneEditorCopy;
  intent: StoryMilestoneActionIntent;
}) => {
  const { pending } = useFormStatus();

  return (
    <Button
      type="submit"
      variant={intent === "incomplete" ? "destructive" : "default"}
      disabled={pending}
      aria-busy={pending}
    >
      {pending ? <Spinner data-icon="inline-start" /> : null}
      {pending ? copy.submittingLabel : copy.submitLabel}
    </Button>
  );
};

export const StoryMilestoneEditorForm = ({
  intent,
  milestone,
  onSaved,
  playId,
  recordsEarlier = true,
  recordsTeam = false,
  surface,
}: {
  intent: StoryMilestoneActionIntent;
  milestone: StoryMilestone;
  /* The save's message and the milestones it recorded or cleared. */
  onSaved: (message: string | null, milestoneIds: number[]) => void;
  playId: string;
  recordsEarlier?: boolean;
  recordsTeam?: boolean;
  surface: StoryMilestoneEditorSurface;
}) => {
  const router = useRouter();
  const [state, formAction] = useActionState(
    updateStoryMilestoneAction,
    initialStoryMilestoneActionState,
  );
  const handledStateRef = useRef<StoryMilestoneActionState | null>(null);
  const showsDecision =
    (intent === "complete" || intent === "decision") &&
    milestone.decisionOptions.length > 0;
  const showsNote = intent === "complete" || intent === "note";
  const canRecordStoryMoment =
    intent === "complete" && milestone.snapshotPolicySlug !== "none";
  const earlierCount =
    intent === "complete" ? milestone.earlierToRecord.length : 0;
  /* Clearing later ones too, which changes what the preview lists. */
  const laterCount =
    intent === "incomplete"
      ? milestone.incompletionImpactWithLater.affectedMilestones.length -
        milestone.incompletionImpact.affectedMilestones.length
      : 0;
  /* Ticked by default: a later milestone can't stay recorded on its own. */
  const [clearsLater, setClearsLater] = useState(true);
  const copy = getStoryMilestoneEditorCopy(intent, milestone);

  useEffect(() => {
    if (state.status !== "success" || handledStateRef.current === state) {
      return;
    }

    handledStateRef.current = state;
    onSaved(state.message, state.milestoneIds ?? []);
    router.refresh();
  }, [onSaved, router, state]);

  const footerActions = (
    <>
      {surface === "alert-dialog" ? (
        <AlertDialogCancel type="button">Cancel</AlertDialogCancel>
      ) : surface === "dialog" ? (
        <DialogClose render={<Button type="button" variant="secondary" />}>
          Cancel
        </DialogClose>
      ) : (
        <SheetClose render={<Button type="button" variant="secondary" />}>
          Cancel
        </SheetClose>
      )}
      <StoryMilestoneSubmitButton copy={copy} intent={intent} />
    </>
  );

  return (
    <form action={formAction} className="flex min-h-0 flex-1 flex-col">
      <input type="hidden" name="intent" value={intent} />
      <input type="hidden" name="playId" value={playId} />
      <input type="hidden" name="milestoneId" value={milestone.id} />

      <div
        className={cn(
          "flex min-h-0 flex-1 flex-col overflow-y-auto",
          surface === "sheet" ? "px-5 pt-2 pb-5" : "px-6 pb-6",
        )}
      >
        <FieldGroup>
          {showsDecision ? (
            <StoryMilestoneDecisionField milestone={milestone} />
          ) : null}

          {showsNote ? (
            <Field>
              <FieldLabel htmlFor="story-milestone-note">Note</FieldLabel>
              <Textarea
                className="min-h-28"
                defaultValue={milestone.notes ?? ""}
                id="story-milestone-note"
                maxLength={4000}
                name="notes"
                placeholder="Add useful context for this Play..."
              />
              <FieldDescription>
                Keep this concise and specific to what happened in this Play.
              </FieldDescription>
            </Field>
          ) : null}

          {earlierCount ? (
            <>
              {milestone.earlierToRecord.map(({ id }) => (
                <input
                  key={id}
                  type="hidden"
                  name="earlierMilestoneId"
                  value={id}
                />
              ))}
              <CheckboxCard
                id="story-milestone-record-earlier"
                defaultChecked={recordsEarlier}
                name="recordEarlier"
                title={`Also record ${formatMilestoneRange(earlierCount, "before")}`}
                description={`${describeMilestoneRun(milestone.earlierToRecord)}, without a moment or decision of their own.`}
                value="true"
              />
            </>
          ) : null}

          {canRecordStoryMoment ? (
            <CheckboxCard
              id="story-milestone-record-moment"
              defaultChecked={recordsTeam}
              name="recordStoryMoment"
              title="Record team snapshot"
              description="Save the current Active Team with this milestone's moment in History."
              value="true"
            />
          ) : null}

          {intent === "story-moment" ? (
            <StoryMilestoneSnapshotPreview milestone={milestone} />
          ) : null}

          {laterCount ? (
            <>
              {clearsLater
                ? milestone.laterRecorded.map(({ id }) => (
                    <input
                      key={id}
                      type="hidden"
                      name="alsoClearMilestoneId"
                      value={id}
                    />
                  ))
                : null}
              <CheckboxCard
                id="story-milestone-clear-later"
                checked={clearsLater}
                onCheckedChange={setClearsLater}
                title={`Also clear ${formatMilestoneRange(laterCount, "after")}`}
                description="Every milestone recorded after this one in the story."
              />
            </>
          ) : null}

          {intent === "incomplete" ? (
            <StoryMilestoneIncompletionImpact
              impact={
                clearsLater
                  ? milestone.incompletionImpactWithLater
                  : milestone.incompletionImpact
              }
              milestone={milestone}
            />
          ) : null}

          {state.status === "error" ? (
            <Alert variant="destructive">
              <AlertDescription>{state.message}</AlertDescription>
            </Alert>
          ) : null}
        </FieldGroup>
      </div>

      {surface === "alert-dialog" ? (
        <AlertDialogFooter className="mx-0 mb-0">
          {footerActions}
        </AlertDialogFooter>
      ) : surface === "dialog" ? (
        <DialogFooter className="mx-0 mb-0">{footerActions}</DialogFooter>
      ) : (
        <SheetFooter className="border-line flex-row justify-end border-t px-5 py-3 pb-[calc(0.75rem+env(safe-area-inset-bottom,0px))] *:flex-1">
          {footerActions}
        </SheetFooter>
      )}
    </form>
  );
};
