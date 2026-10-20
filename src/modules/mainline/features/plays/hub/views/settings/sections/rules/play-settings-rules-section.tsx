"use client";

import { ChallengeRulesField } from "@/modules/mainline/shared/components/challenge-rules-field";
import {
  getRuleSelectionError,
  isSameRuleSelection,
} from "@/modules/mainline/shared/data/challenge-rule-options";

import { SettingsChoiceSection } from "../../components/settings-choice-section";
import {
  createPlayChallengeRuleAction,
  updatePlayChallengeRulesAction,
} from "../../server/play-settings-actions";
import type { MainlinePlaySettingsData } from "../../types";

/*
 * Challenge rules (v3 `settings`): First catch per area, Monotype and the
 * like, shown on the Play and in its History. The chips are the rules this
 * Play keeps, with their options; "Add rule" picks from your Library
 * (Voydex's and yours) or makes one.
 */
export const PlaySettingsRulesSection = ({
  data,
  playId,
}: {
  data: MainlinePlaySettingsData;
  playId: string;
}) => (
  <SettingsChoiceSection
    id="rules"
    title="Challenge rules"
    aside="Shown on the Play and in its History"
    initialValue={data.selectedRules}
    isEqual={isSameRuleSelection}
    validate={(rules) => getRuleSelectionError(data.rules, rules)}
    onSave={(rules) => updatePlayChallengeRulesAction({ playId, rules })}
    renderField={({ disabled, onChange, value }) => (
      <ChallengeRulesField
        label="Challenge rules"
        rules={data.rules}
        selections={value}
        types={data.types}
        disabled={disabled}
        onCreate={(name) => createPlayChallengeRuleAction({ name, playId })}
        onChange={onChange}
      />
    )}
  />
);
