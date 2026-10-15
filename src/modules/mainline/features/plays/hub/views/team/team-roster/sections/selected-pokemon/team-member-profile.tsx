import type { ReactNode } from "react";

import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { getPlayTeamMemberImageUrl } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

import {
  getTeamMemberFacts,
  getTeamMemberMeta,
  getTeamMoves,
} from "./team-member-model";
import { TeamMemberMoves } from "./team-member-moves";

/* The name is the panel's heading: an h3 on the page, the title in a sheet. */
export const teamMemberNameClassName =
  "text-32 leading-[1.1] tracking-[-0.02em] break-words";

/*
 * The selected Pokémon: its art on the type's tint (lively), with the shiny
 * tag top left and its actions top right, then a quiet record of who it is,
 * what it knows and where you met it.
 */
export const TeamMemberProfile = ({
  actions,
  actionsBesideClose = false,
  mechanics,
  member,
  title,
}: {
  /* Icon buttons in the art's top right corner (Edit, Open in Codex). */
  actions?: ReactNode;
  /* A sheet's close button sits over the corner, so the actions step left. */
  actionsBesideClose?: boolean;
  mechanics: GameMechanicsProfile;
  member: MainlinePlayTeamMember;
  title: ReactNode;
}) => {
  const imageUrl = getPlayTeamMemberImageUrl(member);
  const primaryType =
    member.primaryType && isPokemonTypeSlug(member.primaryType.slug)
      ? member.primaryType.slug
      : null;
  const facts = getTeamMemberFacts(member, mechanics);
  const moves = getTeamMoves(member.moves);

  return (
    <div style={getPokemonTypeCssVariables(primaryType)} className="min-w-0">
      <div className="relative -mx-2 -mt-1.5 mb-[18px] grid h-[200px] place-items-center overflow-hidden rounded-xl bg-[color-mix(in_oklab,var(--t)_18%,white)] sm:h-[250px]">
        <span
          aria-hidden
          className="absolute size-[210px] rounded-full bg-[color-mix(in_oklab,var(--t)_28%,white)]"
        />
        {member.is_shiny ? (
          <span className="type-ink text-13 absolute top-3.5 left-3.5 z-10 inline-flex items-center gap-1.5 rounded-full bg-white px-2.5 py-[5px] font-extrabold">
            <AppIcon icon={appIcons.product.shiny} size="sm" />
            Shiny
          </span>
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
        {imageUrl ? (
          // eslint-disable-next-line @next/next/no-img-element
          <img
            src={imageUrl}
            alt=""
            className="relative size-[170px] sm:size-[220px]"
          />
        ) : (
          <span
            aria-hidden
            className="empty-slot relative size-[150px] rounded-full sm:size-[190px]"
          />
        )}
      </div>

      {title}
      <p className="text-ink-2 mt-1 mb-3 font-semibold">
        {getTeamMemberMeta(member, mechanics)}
      </p>
      <PokemonTypeList
        primaryType={member.primaryType}
        secondaryType={member.secondaryType}
        badgeDisplay="icon-label"
        badgeSize="lg"
        className="flex-wrap gap-2"
      />

      {facts.length ? (
        <dl className="mt-5 grid gap-x-[18px] gap-y-3.5 pt-[18px] sm:grid-cols-2">
          {facts.map((fact) => (
            <div key={fact.label} className="min-w-0">
              <dt className="text-ink-2 text-13 font-bold">{fact.label}</dt>
              <dd
                className={cn(
                  "text-16 mt-0.5 break-words",
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

      {moves.length ? <TeamMemberMoves moves={moves} /> : null}

      {member.personal_notes ? (
        <p className="bg-surface-2 text-ink-2 text-15 mt-[18px] rounded-md px-4 py-3 leading-[1.55]">
          “{member.personal_notes}”
        </p>
      ) : null}
    </div>
  );
};
