"use client";

import { ChallengeRuleOptionsForm } from "@/modules/mainline/shared/components/challenge-rule-options-form";
import {
  LibraryChoiceField,
  type LibraryCreateResult,
} from "@/modules/mainline/shared/components/library-choice-field";
import {
  describeRuleConfig,
  type ChallengeRuleChoice,
  type PlayRuleSelection,
} from "@/modules/mainline/shared/data/challenge-rule-options";
import type { GameTypeChoice } from "@/modules/reference/features/games/domain/game-types";

/*
 * The challenge rules a Play keeps (Settings, New Play): the Library picker,
 * with each rule's options for this Play. Monotype names its type on the
 * chip and asks for it as soon as it's added.
 */
export const ChallengeRulesField = ({
  disabled = false,
  label,
  onChange,
  onCreate,
  rules,
  selections,
  showLibraryLink,
  types,
}: {
  disabled?: boolean;
  label: string;
  onChange: (selections: PlayRuleSelection[]) => void;
  onCreate: (name: string) => Promise<LibraryCreateResult>;
  rules: readonly ChallengeRuleChoice[];
  selections: readonly PlayRuleSelection[];
  /* "Manage in Library" at the picker's foot; off inside a dialog. */
  showLibraryLink?: boolean;
  /* The types the Play's game has, for Monotype. */
  types: readonly GameTypeChoice[];
}) => {
  const ruleById = new Map(rules.map((rule) => [rule.id, rule]));
  const configById = new Map(
    selections.map((selection) => [selection.ruleId, selection.config]),
  );
  const typeNameById = new Map(types.map((type) => [type.id, type.name]));
  const choices = rules.map((rule) => ({
    description: rule.description,
    detail: describeRuleConfig(
      rule.optionKeys,
      configById.get(rule.id) ?? rule.defaults,
      typeNameById,
    ),
    hasOptions: rule.optionKeys.length > 0,
    id: rule.id,
    name: rule.name,
  }));

  return (
    <LibraryChoiceField
      label={label}
      noun="rule"
      addLabel="Add rule"
      choices={choices}
      disabled={disabled}
      selectedIds={selections.map((selection) => selection.ruleId)}
      showLibraryLink={showLibraryLink}
      onCreate={onCreate}
      onChange={(ids) =>
        onChange(
          ids.map(
            (ruleId) =>
              selections.find((selection) => selection.ruleId === ruleId) ?? {
                config: ruleById.get(ruleId)?.defaults ?? null,
                ruleId,
              },
          ),
        )
      }
      renderOptions={(choice) => {
        const rule = ruleById.get(choice.id);

        if (!rule) return null;

        return (
          <ChallengeRuleOptionsForm
            optionKeys={rule.optionKeys}
            config={configById.get(rule.id) ?? rule.defaults}
            types={types}
            onChange={(config) =>
              onChange(
                selections.map((selection) =>
                  selection.ruleId === rule.id
                    ? { ...selection, config }
                    : selection,
                ),
              )
            }
          />
        );
      }}
    />
  );
};
