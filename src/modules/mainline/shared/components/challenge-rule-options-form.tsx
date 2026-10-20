"use client";

import { useId } from "react";

import type {
  ChallengeRuleConfig,
  ChallengeRuleOptionKey,
} from "@/modules/mainline/shared/data/challenge-rule-options";
import type { GameTypeChoice } from "@/modules/reference/features/games/domain/game-types";
import { PokemonTypeMark } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { CheckboxCard } from "@/shared/components/checkbox-card";
import { SelectControl } from "@/shared/components/select-control";
import { Field, FieldLabel } from "@/shared/components/ui/field";

/*
 * A rule's options for one Play: Monotype's type, from the types the Play's
 * game has, and First catch per area's shiny exception.
 */
export const ChallengeRuleOptionsForm = ({
  config,
  onChange,
  optionKeys,
  types,
}: {
  config: ChallengeRuleConfig;
  onChange: (config: ChallengeRuleConfig) => void;
  optionKeys: readonly ChallengeRuleOptionKey[];
  /* The types the Play's game has (`getGameTypes`). */
  types: readonly GameTypeChoice[];
}) => {
  const id = useId();

  return (
    <div className="grid gap-4">
      {optionKeys.includes("type_id") ? (
        <Field>
          <FieldLabel htmlFor={`${id}-type`}>Type</FieldLabel>
          <SelectControl
            id={`${id}-type`}
            ariaLabel="Type"
            placeholder="Pick a type"
            searchable={false}
            value={
              typeof config.type_id === "number" ? String(config.type_id) : ""
            }
            onValueChange={(value) =>
              onChange({ ...config, type_id: value ? Number(value) : null })
            }
            options={types.map((type) => ({
              icon: isPokemonTypeSlug(type.slug) ? (
                <PokemonTypeMark
                  type={type.slug}
                  className="size-6"
                  iconClassName="size-3.5"
                />
              ) : undefined,
              label: type.name,
              value: String(type.id),
            }))}
          />
        </Field>
      ) : null}
      {optionKeys.includes("shinies_always_catchable") ? (
        <CheckboxCard
          id={`${id}-shinies`}
          title="Shinies can always be caught"
          description="A shiny doesn't use up the area's catch."
          checked={config.shinies_always_catchable ?? false}
          onCheckedChange={(checked) =>
            onChange({ ...config, shinies_always_catchable: checked === true })
          }
        />
      ) : null}
    </div>
  );
};
