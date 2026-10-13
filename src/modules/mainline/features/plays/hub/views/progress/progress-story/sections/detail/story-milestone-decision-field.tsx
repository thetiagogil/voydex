import { useState } from "react";

import {
  Field,
  FieldContent,
  FieldDescription,
  FieldLegend,
  FieldLabel,
  FieldSet,
} from "@/shared/components/ui/field";
import { RadioGroup, RadioGroupItem } from "@/shared/components/ui/radio-group";
import { cn } from "@/shared/utils/cn";

import type { StoryMilestone } from "../../types";
import { getStoryDecisionOptionSpanClassName } from "../../utils/story-decision-layout";
import { StoryPokemonEvidence } from "./story-pokemon-evidence";

/*
 * The decision as choice cards, each with its radio ring showing, so the
 * choice reads without relying on the card's tint.
 */
const StoryMilestoneDecisionRadioGroup = ({
  initialValue,
  milestone,
}: {
  initialValue: string;
  milestone: StoryMilestone;
}) => {
  const [decisionValue, setDecisionValue] = useState(initialValue);

  return (
    <FieldSet>
      <FieldLegend variant="label">Decision</FieldLegend>
      <RadioGroup
        aria-label={`Decision for ${milestone.name}`}
        className="grid-cols-1 sm:grid-cols-6"
        name="decisionOptionId"
        onValueChange={setDecisionValue}
        value={decisionValue}
      >
        {milestone.decisionOptions.map((option, optionIndex) => (
          <FieldLabel
            key={option.id}
            className={cn(
              "h-full cursor-pointer",
              getStoryDecisionOptionSpanClassName(
                milestone.decisionOptions.length,
                optionIndex,
              ),
            )}
          >
            <Field
              orientation="horizontal"
              className="min-h-16 gap-3 has-[>[data-slot=field-content]]:items-center"
            >
              <RadioGroupItem value={String(option.id)} />
              <FieldContent>
                {option.speciesName ? (
                  <StoryPokemonEvidence
                    imageUrl={option.imageUrl}
                    name={option.speciesName}
                  />
                ) : (
                  <span className="text-15 font-extrabold">{option.label}</span>
                )}
              </FieldContent>
            </Field>
          </FieldLabel>
        ))}

        <FieldLabel className="col-span-full cursor-pointer">
          <Field orientation="horizontal" className="gap-3">
            <RadioGroupItem value="" />
            <FieldContent>
              <span className="text-15 font-extrabold">Not recorded</span>
              <FieldDescription>
                Keep the milestone without choosing an option.
              </FieldDescription>
            </FieldContent>
          </Field>
        </FieldLabel>
      </RadioGroup>
    </FieldSet>
  );
};

export const StoryMilestoneDecisionField = ({
  milestone,
}: {
  milestone: StoryMilestone;
}) => {
  const selectedDecisionValue = milestone.selectedDecisionId
    ? String(milestone.selectedDecisionId)
    : "";

  return (
    <StoryMilestoneDecisionRadioGroup
      key={`${milestone.id}:${selectedDecisionValue}`}
      initialValue={selectedDecisionValue}
      milestone={milestone}
    />
  );
};
