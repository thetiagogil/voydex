"use client";

import { type CSSProperties, useActionState, useEffect, useRef } from "react";
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
  type StoryMilestoneEditorCopy,
} from "../../utils/story-milestone-editor";
import { StoryMilestoneDecisionField } from "./story-milestone-decision-field";
import { StoryMilestoneIncompletionImpact } from "./story-milestone-incompletion-impact";
import { StoryMilestoneSnapshotPreview } from "./story-milestone-snapshot-preview";

export type StoryMilestoneEditorSurface = "alert-dialog" | "dialog" | "sheet";

const initialStoryMilestoneActionState: StoryMilestoneActionState = {
  message: null,
  status: "idle",
};

/*
 * In a form the only colour is the action green, so the form re-scopes the
 * context colour to it: a chosen decision takes the green selected tint, not
 * the game's.
 */
const actionScopeStyle = {
  "--game": "var(--action)",
  "--game-strong": "var(--action)",
  "--gt": "17%",
} as CSSProperties;

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
  recordsTeam = false,
  surface,
}: {
  intent: StoryMilestoneActionIntent;
  milestone: StoryMilestone;
  onSaved: (message: string | null) => void;
  playId: string;
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
  const copy = getStoryMilestoneEditorCopy(intent, milestone);

  useEffect(() => {
    if (state.status !== "success" || handledStateRef.current === state) {
      return;
    }

    handledStateRef.current = state;
    onSaved(state.message);
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
    <form
      action={formAction}
      className="game-scope flex min-h-0 flex-1 flex-col"
      style={actionScopeStyle}
    >
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

          {canRecordStoryMoment ? (
            <CheckboxCard
              id="story-milestone-record-moment"
              defaultChecked={recordsTeam}
              name="recordStoryMoment"
              title="Record team snapshot"
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
