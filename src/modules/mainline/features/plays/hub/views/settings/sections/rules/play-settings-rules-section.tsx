"use client";

import { PendingData } from "@/shared/components/pending-data";

import { SettingsChoiceSection } from "../../components/settings-choice-section";
import {
  createPlayChallengeRuleAction,
  updatePlayChallengeRulesAction,
} from "../../server/play-settings-actions";
import type { MainlinePlaySettingsData } from "../../types";

/*
 * Challenge rules (v3 `settings`): Nuzlocke, Monotype and the like, shown on
 * the Play and in its History. The chips are every rule you can attach:
 * Voydex's catalogue (not seeded yet) and your own, which "Add rule" makes.
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
    options={data.rules}
    initialSelectedIds={data.selectedRuleIds}
    onSave={(ruleIds) => updatePlayChallengeRulesAction({ playId, ruleIds })}
    add={{
      label: "Add rule",
      maxLength: 80,
      onCreate: (name) => createPlayChallengeRuleAction({ name, playId }),
      placeholder: "Rule name",
    }}
    empty={
      /* TODO(v3-data): the system challenge-rule catalogue (Nuzlocke, Monotype, No battle items, Level caps, Set battle mode, Shiny hunt) seeded into `gameplay.mainline_challenge_rules`; only development seeds exist. */
      <PendingData
        className="mb-4"
        label="Voydex's challenge rules aren't in yet"
        note="Nuzlocke, Monotype, Level caps and the rest arrive with the rule catalogue. Add your own meanwhile."
      />
    }
  />
);
