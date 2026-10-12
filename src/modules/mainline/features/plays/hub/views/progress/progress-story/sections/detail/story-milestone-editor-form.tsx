"use client";

import { useActionState, useEffect } from "react";
import { useFormStatus } from "react-dom";
import { useRouter } from "next/navigation";

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
import type { StoryMilestone } from "../../types";
import {
  getStoryMilestoneEditorCopy,
  getStoryMilestoneSubmitVariant,
  type StoryMilestoneEditorCopy,
} from "../../utils/story-milestone-editor";
import { StoryMilestoneDecisionField } from "./story-milestone-decision-field";
import { StoryMilestoneEditorContext } from "./story-milestone-editor-context";
import { StoryMilestoneIncompletionImpact } from "./story-milestone-incompletion-impact";
import { StoryMilestoneSnapshotPreview } from "./story-milestone-snapshot-preview";

export type StoryMilestoneEditorSurface = "alert-dialog" | "dialog" | "sheet";

const initialStoryMilestoneActionState: StoryMilestoneActionState = {
  message: null,
  status: "idle",
};

const StoryMilestoneSubmitButton = ({
  copy,
  variant,
}: {
  copy: StoryMilestoneEditorCopy;
  variant: "default" | "destructive" | "outline";
}) => {
  const { pending } = useFormStatus();

  return (
    <Button
      type="submit"
      variant={variant}
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
  onCompleted,
  playId,
  surface,
}: {
  intent: StoryMilestoneActionIntent;
  milestone: StoryMilestone;
  onCompleted: () => void;
  playId: string;
  surface: StoryMilestoneEditorSurface;
}) => {
  const router = useRouter();
  const [state, formAction] = useActionState(
    updateStoryMilestoneAction,
    initialStoryMilestoneActionState,
  );
  const showsDecision =
    (intent === "complete" || intent === "decision") &&
    milestone.decisionOptions.length > 0;
  const showsNote = intent === "complete" || intent === "note";
  const canRecordStoryMoment =
    intent === "complete" && milestone.snapshotPolicySlug !== "none";
  const copy = getStoryMilestoneEditorCopy(intent, milestone);
  const submitVariant = getStoryMilestoneSubmitVariant(intent, milestone);

  useEffect(() => {
    if (state.status !== "success") {
      return;
    }

    onCompleted();
    router.refresh();
  }, [onCompleted, router, state.status]);

  const footerActions = (
    <>
      {surface === "alert-dialog" ? (
        <AlertDialogCancel type="button">Cancel</AlertDialogCancel>
      ) : surface === "dialog" ? (
        <DialogClose render={<Button type="button" variant="outline" />}>
          Cancel
        </DialogClose>
      ) : (
        <SheetClose render={<Button type="button" variant="outline" />}>
          Cancel
        </SheetClose>
      )}
      <StoryMilestoneSubmitButton copy={copy} variant={submitVariant} />
    </>
  );

  return (
    <form action={formAction} className="flex min-h-0 flex-1 flex-col">
      <input type="hidden" name="intent" value={intent} />
      <input type="hidden" name="playId" value={playId} />
      <input type="hidden" name="milestoneId" value={milestone.id} />

      <div
        className={cn(
          "flex min-h-0 flex-1 flex-col gap-5 overflow-y-auto",
          surface === "sheet" ? "px-4 py-4" : "px-5 pb-5",
        )}
      >
        <StoryMilestoneEditorContext milestone={milestone} />

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

          {canRecordStoryMoment ? (
            <CheckboxCard
              id="story-milestone-record-moment"
              name="recordStoryMoment"
              title="Record snapshot"
              description="Add this milestone to History and save the current Active Team."
              value="true"
            />
          ) : null}

          {intent === "story-moment" ? (
            <StoryMilestoneSnapshotPreview milestone={milestone} />
          ) : null}

          {intent === "incomplete" ? (
            <StoryMilestoneIncompletionImpact milestone={milestone} />
          ) : null}

          {state.status === "error" ? (
            <Alert variant="destructive">
              <AlertDescription>{state.message}</AlertDescription>
            </Alert>
          ) : null}
        </FieldGroup>
      </div>

      {surface === "alert-dialog" ? (
        <AlertDialogFooter className="mx-0 mb-0 px-5 py-4">
          {footerActions}
        </AlertDialogFooter>
      ) : surface === "dialog" ? (
        <DialogFooter className="mx-0 mb-0 px-5 py-4">
          {footerActions}
        </DialogFooter>
      ) : (
        <SheetFooter className="border-line bg-muted/30 flex-row justify-end border-t">
          {footerActions}
        </SheetFooter>
      )}
    </form>
  );
};
