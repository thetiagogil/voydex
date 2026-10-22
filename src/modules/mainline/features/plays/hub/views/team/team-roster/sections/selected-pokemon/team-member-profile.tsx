import { useState, type ReactNode } from "react";

import { Badge } from "@/shared/components/ui/badge";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import {
  getPlayTeamMemberImageUrl,
  getPlayTeamMemberName,
} from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";
import type { MemberBattle } from "@/modules/reference/features/pokemon/data/battle-mechanics";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { FallbackImage } from "@/shared/components/fallback-image";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { Alert, AlertDescription } from "@/shared/components/ui/alert";
import { cn } from "@/shared/utils/cn";

import {
  getBattleMoves,
  getTeamMemberFacts,
  getTeamMemberMeta,
  getTeamMoves,
} from "./team-member-model";
import { TeamMemberMoves } from "./team-member-moves";

/* The name is the panel's heading: an h3 on the page, the title in a sheet. */
export const teamMemberNameClassName = "title-page wrap-break-word";

const baseFormValue = "base";

/*
 * The selected Pokémon: its art on the type's tint (lively), with the shiny
 * tag top left and its actions top right, then a quiet record of who it is,
 * what it knows and where you met it. Where the game has battle forms, a
 * switch under its name shows one (Mega, Primal, Gigantamax): the art, types,
 * ability and moves become the form's, with a note when what it holds or
 * knows can't reach it. The member itself stays its stored form.
 */
export const TeamMemberProfile = ({
  actions,
  actionsBesideClose = false,
  battle = null,
  mechanics,
  member,
  notice,
  title,
}: {
  /* Icon buttons in the art's top right corner (Edit, Open in Codex). */
  actions?: ReactNode;
  /* A sheet's close button sits over the corner, so the actions step left. */
  actionsBesideClose?: boolean;
  /* Its battle forms and Z-Moves in this game; null when it has none. */
  battle?: MemberBattle | null;
  mechanics: GameMechanicsProfile;
  member: MainlinePlayTeamMember;
  /* A note under its types, such as the rules it breaks. */
  notice?: ReactNode;
  title: ReactNode;
}) => {
  // The pick belongs to one member: selecting another shows its stored form.
  const [picked, setPicked] = useState<{
    formSlug: string;
    memberId: string | null;
  } | null>(null);
  const battleForm =
    picked?.memberId === member.play_pokemon_id
      ? (battle?.forms.find((form) => form.slug === picked.formSlug) ?? null)
      : null;
  // In a battle form it reads as that form, say "Mega Venusaur · Lv. 50".
  const shown: MainlinePlayTeamMember = battleForm
    ? {
        ...member,
        form_name: battleForm.name,
        form_slug: battleForm.slug,
        is_default_form: false,
      }
    : member;
  const types = battleForm ?? member;
  const imageUrl = getPlayTeamMemberImageUrl(shown, "art");
  const primaryType =
    types.primaryType && isPokemonTypeSlug(types.primaryType.slug)
      ? types.primaryType.slug
      : null;
  const facts = getTeamMemberFacts(member, mechanics, battleForm);
  const moves = battleForm?.maxMoves
    ? getBattleMoves(battleForm.maxMoves)
    : getTeamMoves(member.moves);
  const zMoves = battle?.zCrystal && !battleForm ? battle.zMoves : null;

  return (
    <div style={getPokemonTypeCssVariables(primaryType)} className="min-w-0">
      <div className="type-tint relative -mx-2 -mt-1.5 mb-4.5 grid h-50 place-items-center overflow-hidden rounded-xl sm:h-62.5">
        <span
          aria-hidden
          className="absolute size-52.5 rounded-full bg-white/55"
        />
        {member.is_shiny ? (
          <Badge
            variant="paper"
            size="md"
            className="type-ink absolute top-3.5 left-3.5 z-10"
          >
            <AppIcon icon={appIcons.product.shiny} />
            Shiny
          </Badge>
        ) : null}
        {actions ? (
          <div
            className={cn(
              "absolute top-3 z-10",
              actionsBesideClose ? "right-14" : "right-3",
            )}
          >
            {actions}
          </div>
        ) : null}
        <FallbackImage
          src={imageUrl}
          name={getPlayTeamMemberName(member)}
          fallback="badge"
          className="relative size-42.5 sm:size-55"
        />
      </div>

      {title}
      <p className="text-ink-2 mt-1 mb-3 font-semibold">
        {getTeamMemberMeta(shown, mechanics)}
      </p>
      {battle?.forms.length ? (
        <SegmentedControl
          ariaLabel="Battle form"
          variant="segment"
          className="mb-3.5"
          value={battleForm?.slug ?? baseFormValue}
          onValueChange={(formSlug) =>
            setPicked({ formSlug, memberId: member.play_pokemon_id })
          }
          options={[
            { label: "Base", value: baseFormValue },
            ...battle.forms.map((form) => ({
              label: form.label,
              value: form.slug,
            })),
          ]}
        />
      ) : null}
      <PokemonTypeList
        primaryType={types.primaryType}
        secondaryType={types.secondaryType}
        badgeDisplay="icon-label"
        badgeSize="lg"
        className="flex-wrap gap-2"
      />
      {battleForm?.warning ? (
        <Alert role="status" variant="warning" className="mt-4.5">
          <AppIcon icon={appIcons.status.warning} />
          <AlertDescription className="text-pretty">
            {battleForm.warning}
          </AlertDescription>
        </Alert>
      ) : null}
      {notice}

      {facts.length ? (
        <dl className="mt-5 grid gap-x-4.5 gap-y-3.5 pt-4.5 sm:grid-cols-2">
          {facts.map((fact) => (
            <div key={fact.label} className="min-w-0">
              <dt className="text-ink-2 text-13 font-bold">{fact.label}</dt>
              <dd
                className={cn(
                  "text-16 mt-0.5 wrap-break-word",
                  fact.empty ? "text-ink-3 font-semibold" : "font-extrabold",
                )}
              >
                {fact.value}
              </dd>
              {fact.detail ? (
                <dd className="text-ink-2 text-13 font-semibold">
                  {fact.detail}
                </dd>
              ) : null}
            </div>
          ))}
        </dl>
      ) : null}

      {moves.length ? (
        <TeamMemberMoves
          moves={moves}
          title={battleForm?.maxMoves ? "Max Moves" : "Moves"}
        />
      ) : null}

      {zMoves && battle?.zCrystal ? (
        <TeamMemberMoves
          empty={`None of its moves can use ${battle.zCrystal.name}.`}
          moves={getBattleMoves(zMoves)}
          title={`Z-Moves · ${battle.zCrystal.name}`}
        />
      ) : null}

      {member.personal_notes ? (
        <p className="bg-surface-2 text-ink-2 text-15 mt-4.5 rounded-md px-4 py-3 leading-relaxed">
          “{member.personal_notes}”
        </p>
      ) : null}
    </div>
  );
};
