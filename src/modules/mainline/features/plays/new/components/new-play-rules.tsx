"use client";

import { useId } from "react";

import { createNewPlayRuleAction } from "@/modules/mainline/features/plays/new/server/new-play-rule-action";
import { ChallengeRulesField } from "@/modules/mainline/shared/components/challenge-rules-field";
import type {
  ChallengeRuleChoice,
  PlayRuleSelection,
} from "@/modules/mainline/shared/data/challenge-rule-options";
import type { GameTypeChoice } from "@/modules/reference/features/games/domain/game-types";
import { FieldLabel } from "@/shared/components/ui/field";

/*
 * Step 3's challenge rules, under its tracking and always in view: Voydex's
 * and yours to pick from, each with its options for this Play (Monotype's
 * type from the types the picked game has). Optional. The picker has no
 * way out to the Library, which would close New Play.
 */
export const NewPlayRules = ({
  onChange,
  ruleChoices,
  rules,
  types,
}: {
  onChange: (rules: PlayRuleSelection[]) => void;
  ruleChoices: ChallengeRuleChoice[];
  rules: PlayRuleSelection[];
  types: GameTypeChoice[];
}) => {
  const labelId = useId();

  return (
    <div className="flex flex-col gap-1.5">
      <FieldLabel id={labelId}>Challenge rules (optional)</FieldLabel>
      <ChallengeRulesField
        label="Challenge rules"
        rules={ruleChoices}
        selections={rules}
        types={types}
        showLibraryLink={false}
        onCreate={createNewPlayRuleAction}
        onChange={onChange}
      />
    </div>
  );
};
