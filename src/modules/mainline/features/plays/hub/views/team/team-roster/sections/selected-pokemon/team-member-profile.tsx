import type { ReactNode } from "react";

import { Badge } from "@/shared/components/ui/badge";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import {
  getPlayTeamMemberImageUrl,
  getPlayTeamMemberName,
} from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";
import type {
  MemberBattle,
  MemberBattleForm,
} from "@/modules/reference/features/pokemon/data/battle-mechanics";
import { GenderIcon } from "@/modules/reference/features/pokemon/components/gender-icon";
import { NatureEffect } from "@/modules/reference/features/pokemon/components/nature-effect";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { ExplanatoryTip } from "@/shared/components/explanatory-tip";
import { FallbackImage } from "@/shared/components/fallback-image";
import { ItemIcon } from "@/shared/components/item-icon";
import { Alert, AlertDescription } from "@/shared/components/ui/alert";
import { cn } from "@/shared/utils/cn";

import {
  getBattleMoves,
  getTeamMemberFacts,
  getTeamMemberGender,
  getTeamMemberMeta,
  getTeamMoves,
} from "./team-member-model";
import { TeamMemberMoves } from "./team-member-moves";

/* The name is the panel's heading: an h3 on the page, the title in a sheet. */
export const teamMemberNameClassName = "title-page wrap-break-word";

/*
 * The selected Pokémon: its art on the type's tint (lively), with the shiny
 * tag top left and its actions top right, then a quiet record of who it is,
 * what it knows and where you met it. Where the game has battle forms, a
 * form menu on its art shows one (Mega, Primal, Gigantamax): the art, types,
 * ability and moves become the form's, with a note when what it holds or
 * knows can't reach it. The member itself stays its stored form.
 */
export const TeamMemberProfile = ({
  actions,
  battle = null,
  battleForm = null,
  formMenu,
  mechanics,
  member,
  notice,
  title,
  toolbar,
}: {
  /* Icon buttons in the art's top right corner (Edit, Open in Codex). */
  actions?: ReactNode;
  /* Its battle forms and Z-Moves in this game; null when it has none. */
  battle?: MemberBattle | null;
  /* The battle form it shows (`useBattleFormPick`); null for its own. */
  battleForm?: MemberBattleForm | null;
  /* The form menu, in the art's bottom right corner. */
  formMenu?: ReactNode;
  /*
   * Under the art in place of `actions` and `formMenu`, such as in a phone's
   * sheet, where the close button sits over the art's corner.
   */
  toolbar?: ReactNode;
  mechanics: GameMechanicsProfile;
  member: MainlinePlayTeamMember;
  /* A note under its types, such as the rules it breaks. */
  notice?: ReactNode;
  title: ReactNode;
}) => {
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
  const gender = getTeamMemberGender(member, mechanics);
  const moves = battleForm?.maxMoves
    ? getBattleMoves(battleForm.maxMoves)
    : getTeamMoves(member.moves);
  const zMoves = battle?.zCrystal && !battleForm ? battle.zMoves : null;

  return (
    <div style={getPokemonTypeCssVariables(primaryType)} className="min-w-0">
      <div
        className={cn(
          "type-tint relative -mx-2 -mt-1.5 grid h-62.5 place-items-center overflow-hidden rounded-xl",
          toolbar ? "mb-3" : "mb-4.5",
        )}
      >
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
          <div className="absolute top-3 right-3 z-10">{actions}</div>
        ) : null}
        {formMenu ? (
          <div className="absolute right-3 bottom-3 z-10">{formMenu}</div>
        ) : null}
        <FallbackImage
          src={imageUrl}
          name={getPlayTeamMemberName(member)}
          fallback="badge"
          className="relative size-42.5 sm:size-55"
        />
      </div>
      {toolbar ? (
        <div className="mb-4.5 flex flex-wrap items-center justify-between gap-2">
          {toolbar}
        </div>
      ) : null}

      {title}
      <p className="text-ink-2 mt-1 mb-3 flex flex-wrap items-center gap-x-1.5 font-semibold">
        <span>{getTeamMemberMeta(shown)}</span>
        {gender ? (
          <>
            <span aria-hidden>·</span>
            <GenderIcon gender={gender} labelled />
          </>
        ) : null}
      </p>
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

      {[
        facts.filter((fact) => fact.section !== "met"),
        facts.filter((fact) => fact.section === "met"),
      ].map((group, index) =>
        group.length ? (
          <dl
            key={index === 0 ? "details" : "met"}
            className={cn(
              "grid gap-x-4.5 gap-y-3.5 sm:grid-cols-2",
              index === 0 ? "mt-5 pt-4.5" : "mt-3.5",
            )}
          >
            {group.map((fact) => (
              <div key={fact.label} className="min-w-0">
                <dt className="text-ink-2 text-13 flex h-5 items-center gap-1.5 font-bold">
                  {fact.label}
                </dt>
                <dd
                  className={cn(
                    "text-16 mt-0.5 flex min-h-6 items-center gap-2 wrap-break-word",
                    fact.empty ? "text-ink-3 font-semibold" : "font-extrabold",
                  )}
                >
                  {fact.item ? (
                    <ItemIcon kind={fact.item} name={fact.value} />
                  ) : null}
                  <span className="min-w-0">{fact.value}</span>
                  {fact.detail ? (
                    <ExplanatoryTip
                      content={fact.detail}
                      triggerLabel={`About ${fact.value}`}
                      triggerVariant="subtle"
                    />
                  ) : null}
                </dd>
                {fact.nature ? (
                  <dd className="mt-0.5">
                    <NatureEffect
                      increased={fact.nature.increased}
                      decreased={fact.nature.decreased}
                      size="label"
                    />
                  </dd>
                ) : null}
                {/* One line, so a long effect never moves the rows below; the "i" has it all. */}
                {fact.detail ? (
                  <dd className="text-ink-2 text-13 h-5 truncate leading-5 font-semibold">
                    {fact.detail}
                  </dd>
                ) : null}
              </div>
            ))}
          </dl>
        ) : null,
      )}

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
