"use client";

import { createNewPlayRuleAction } from "@/modules/mainline/features/plays/new/server/new-play-rule-action";
import { ChallengeRulesField } from "@/modules/mainline/shared/components/challenge-rules-field";
import type {
  ChallengeRuleChoice,
  PlayRuleSelection,
} from "@/modules/mainline/shared/data/challenge-rule-options";
import type { GameTypeChoice } from "@/modules/reference/features/games/domain/game-types";

/*
 * Step 3's challenge rules, under its tracking and always in view: Voydex's
 * and yours to pick from, each with its options for this Play (Monotype's
 * type from the types the picked game has). Optional.
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
}) => (
  <div className="grid gap-3">
    <div className="min-w-0">
      <b className="text-ink text-15 block font-extrabold">Challenge rules</b>
      <span className="text-ink-2 text-13 font-semibold">
        Optional. Shown on the Play and its history
      </span>
    </div>
    <ChallengeRulesField
      label="Challenge rules"
      rules={ruleChoices}
      selections={rules}
      types={types}
      onCreate={createNewPlayRuleAction}
      onChange={onChange}
    />
  </div>
);
