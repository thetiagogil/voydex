import { useState } from "react";

import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import {
  getPlayTeamMemberImageUrl,
  getPlayTeamMemberName,
} from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import {
  PokemonFormMenu,
  toPokemonFormOption,
} from "@/modules/reference/features/pokemon/components/pokemon-form-menu";
import {
  battleFormMechanicNames,
  type MemberBattle,
  type MemberBattleForm,
} from "@/modules/reference/features/pokemon/data/battle-mechanics";

const baseFormValue = "base";

/*
 * Which battle form a member's profile shows, and the form menu that picks
 * it. The pick belongs to one member: selecting another shows its stored
 * form. The caller places the menu: on the art in the wide panel, in the
 * sheet's top bar on phones. Null menu when it has no battle form here.
 */
export const useBattleFormPick = (
  member: MainlinePlayTeamMember | null,
  battle: MemberBattle | null,
): {
  battleForm: MemberBattleForm | null;
  renderFormMenu: (className?: string) => React.ReactNode;
} => {
  const [picked, setPicked] = useState<{
    formSlug: string;
    memberId: string | null;
  } | null>(null);
  const battleForm =
    member && picked?.memberId === member.play_pokemon_id
      ? (battle?.forms.find((form) => form.slug === picked.formSlug) ?? null)
      : null;

  const renderFormMenu = (className?: string) =>
    member && battle?.forms.length ? (
      <PokemonFormMenu
        ariaLabel="Battle form"
        className={className}
        value={battleForm?.slug ?? baseFormValue}
        onValueChange={(formSlug) =>
          setPicked({ formSlug, memberId: member.play_pokemon_id })
        }
        options={[
          toPokemonFormOption({
            description: getPlayTeamMemberName(member),
            imageUrl: getPlayTeamMemberImageUrl(member, "sm"),
            label: "Base",
            name: getPlayTeamMemberName(member),
            typeSlug: member.primaryType?.slug ?? null,
            value: baseFormValue,
          }),
          ...battle.forms.map((form) =>
            toPokemonFormOption({
              description: `In battle · ${battleFormMechanicNames[form.mechanic]}`,
              imageUrl: getPlayTeamMemberImageUrl(
                { ...member, form_name: form.name, form_slug: form.slug },
                "sm",
              ),
              label: form.label,
              name: form.name,
              typeSlug: form.primaryType?.slug ?? null,
              value: form.slug,
            }),
          ),
        ]}
      />
    ) : null;

  return { battleForm, renderFormMenu };
};
