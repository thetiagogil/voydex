import { toItemOptions } from "@/modules/mainline/shared/components/item-options";
import { toNatureOptions } from "@/modules/reference/features/pokemon/components/nature-options";
import { ItemIcon } from "@/shared/components/item-icon";
import {
  SelectControl,
  type SelectControlOption,
} from "@/shared/components/select-control";
import { Field } from "@/shared/components/ui/field";

import type { PokemonBuildOptions } from "../../server/pokemon-build-options-reader";
import type { TeamMemberEditorSupport } from "../../utils/team-member-editor-model";
import {
  EditorLabel,
  fromSelect,
  noneValue,
  selectValue,
} from "./team-member-editor-fields";

export type TeamMemberBuildField = "abilityId" | "heldItemId" | "natureId";

/*
 * Nature, ability and held item, each only where the Play's game records it.
 * Edit lays them out beside its Poké Ball and Tera Type; Add Pokémon's More
 * details shows them before the moves. Each starts at Not recorded.
 */
export const TeamMemberBuildFields = ({
  change,
  edited = () => false,
  id,
  keptHeldItem = [],
  options,
  supports,
  values,
}: {
  change: (field: TeamMemberBuildField, value: string) => void;
  edited?: (field: TeamMemberBuildField) => boolean;
  /* The sheet's `useId`, the prefix of every field id. */
  id: string;
  /* An item it already holds that the game's list doesn't offer. */
  keptHeldItem?: SelectControlOption[];
  options: PokemonBuildOptions;
  supports: Pick<
    TeamMemberEditorSupport,
    "abilities" | "heldItems" | "natures"
  >;
  /* Ids as text; empty when not recorded. */
  values: Record<TeamMemberBuildField, string>;
}) => (
  <>
    {supports.natures ? (
      <Field>
        <EditorLabel edited={edited("natureId")}>Nature</EditorLabel>
        <SelectControl
          ariaLabel="Nature"
          placeholder="Not recorded"
          value={selectValue(values.natureId)}
          onValueChange={(value) => change("natureId", fromSelect(value))}
          options={[
            { label: "Not recorded", value: noneValue },
            ...toNatureOptions(options.natures),
          ]}
        />
      </Field>
    ) : null}
    {supports.abilities ? (
      <Field>
        <EditorLabel edited={edited("abilityId")}>Ability</EditorLabel>
        <SelectControl
          ariaLabel="Ability"
          placeholder="Not recorded"
          value={selectValue(values.abilityId)}
          onValueChange={(value) => change("abilityId", fromSelect(value))}
          options={[
            { label: "Not recorded", value: noneValue },
            ...options.abilities.map((ability) => ({
              info: ability.effect ?? undefined,
              label: ability.name,
              value: String(ability.id),
            })),
          ]}
        />
      </Field>
    ) : null}
    {supports.heldItems ? (
      <Field>
        <EditorLabel htmlFor={`${id}-item`} edited={edited("heldItemId")}>
          Held item
        </EditorLabel>
        <SelectControl
          id={`${id}-item`}
          ariaLabel="Held item"
          placeholder="Not recorded"
          value={selectValue(values.heldItemId)}
          onValueChange={(value) => change("heldItemId", fromSelect(value))}
          options={[
            {
              icon: <ItemIcon kind="held" name="Not recorded" />,
              label: "Not recorded",
              value: noneValue,
            },
            ...toItemOptions(options.heldItems, "held"),
            ...keptHeldItem,
          ]}
        />
      </Field>
    ) : null}
  </>
);
