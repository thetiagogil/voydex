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
              "has-focus-visible:ring-ring/50 h-full cursor-pointer has-focus-visible:ring-3",
              getStoryDecisionOptionSpanClassName(
                milestone.decisionOptions.length,
                optionIndex,
              ),
            )}
          >
            <Field orientation="horizontal" className="min-h-16">
              <RadioGroupItem className="sr-only" value={String(option.id)} />
              <FieldContent>
                {option.speciesName ? (
                  <StoryPokemonEvidence
                    imageUrl={option.imageUrl}
                    name={option.speciesName}
                  />
                ) : (
                  <span className="text-sm font-semibold">{option.label}</span>
                )}
              </FieldContent>
            </Field>
          </FieldLabel>
        ))}

        <FieldLabel className="has-focus-visible:ring-ring/50 col-span-full cursor-pointer has-focus-visible:ring-3">
          <Field orientation="horizontal">
            <RadioGroupItem className="sr-only" value="" />
            <FieldContent>
              <span className="text-sm font-semibold">Not recorded</span>
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
