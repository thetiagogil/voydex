"use client";

import { useState } from "react";
import { useFormStatus } from "react-dom";

import { formatMilestoneRange } from "@/modules/mainline/features/plays/shared/data/play-milestones";
import { CheckboxCard } from "@/shared/components/checkbox-card";
import { Alert, AlertDescription } from "@/shared/components/ui/alert";
import { Button } from "@/shared/components/ui/button";
import {
  Field,
  FieldDescription,
  FieldGroup,
  FieldLabel,
} from "@/shared/components/ui/field";
import { Spinner } from "@/shared/components/ui/spinner";
import { Textarea } from "@/shared/components/ui/textarea";

import type {
  StoryMilestoneActionIntent,
  StoryMilestoneActionState,
} from "../../server/story-milestone-action";
import type { StoryMilestone, StoryMilestoneRef } from "../../types";
import type { StoryMilestoneEditorCopy } from "../../utils/story-milestone-editor";
import { StoryMilestoneDecisionField } from "./story-milestone-decision-field";
import { StoryMilestoneIncompletionImpact } from "./story-milestone-incompletion-impact";
import { StoryMilestoneSnapshotPreview } from "./story-milestone-snapshot-preview";

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

export const StoryMilestoneSubmitButton = ({
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

/*
 * What the editor asks for, inside its form: the hidden ids, then the
 * decision, note and what else to record or clear. The overlay owns the
 * form, its action and its footer.
 */
export const StoryMilestoneEditorFields = ({
  intent,
  milestone,
  playId,
  recordsEarlier = true,
  recordsTeam = false,
  state,
}: {
  intent: StoryMilestoneActionIntent;
  milestone: StoryMilestone;
  playId: string;
  recordsEarlier?: boolean;
  recordsTeam?: boolean;
  /* The save's last result, to show its error. */
  state: StoryMilestoneActionState;
}) => {
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
  /* Ticked: a later milestone shouldn't stay recorded on its own. */
  const [clearsLater, setClearsLater] = useState(true);

  return (
    <>
      <input type="hidden" name="intent" value={intent} />
      <input type="hidden" name="playId" value={playId} />
      <input type="hidden" name="milestoneId" value={milestone.id} />

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
    </>
  );
};
