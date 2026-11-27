import { useId } from "react";

import { ExplanatoryTip } from "@/shared/components/explanatory-tip";
import { MoveCategoryIcon } from "@/modules/reference/features/moves/components/move-category-icon";
import { MoveTip } from "@/modules/reference/features/moves/components/move-tip";
import { PokemonTypeBadge } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";

import type { TeamMove } from "./team-member-model";
import { TeamMemberSectionLabel } from "./team-member-section-label";

const TeamMoveRow = ({ move }: { move: TeamMove }) => {
  const typeSlug =
    move.type && isPokemonTypeSlug(move.type.slug) ? move.type.slug : null;

  return (
    <li
      style={getPokemonTypeCssVariables(typeSlug)}
      className="flex min-h-13 min-w-0 items-center gap-2 rounded-sm bg-[color-mix(in_oklab,var(--t)_12%,var(--surface))] px-3 py-2.5"
    >
      {typeSlug ? (
        <PokemonTypeBadge
          type={typeSlug}
          label={move.type?.name}
          display="icon"
          size="md"
        />
      ) : (
        <span
          aria-hidden
          className="empty-slot size-5.5 shrink-0 rounded-full"
        />
      )}
      <span className="copy-strong min-w-0 flex-1 truncate">{move.name}</span>
      {move.detail ? (
        <span className="text-ink-tint copy-mark shrink-0">{move.detail}</span>
      ) : (
        <MoveCategoryIcon damageClass={move.category} />
      )}
      {move.effect || move.power || move.accuracy || move.pp ? (
        <ExplanatoryTip
          content={
            <MoveTip
              move={{
                accuracy: move.accuracy,
                /* A Z-Move or Max Move reads its own way: no category of its own. */
                category: move.detail ? null : move.category,
                effect: move.effect,
                name: move.name,
                power: move.power,
                pp: move.pp,
                typeName: move.type?.name,
                typeSlug,
              }}
            />
          }
          triggerLabel={`About ${move.name}`}
          triggerVariant="subtle"
        />
      ) : null}
    </li>
  );
};

/*
 * The recorded moves, each on its type's tint in one line like the editor's:
 * type icon, name, and its category's icon (or what it came from) at the
 * end; or
 * what a battle mechanic turns them into (Z-Moves, Max Moves), under its own
 * title.
 */
export const TeamMemberMoves = ({
  empty,
  moves,
  title = "Moves",
}: {
  /* Said when no move qualifies, such as none matching a Z-Crystal. */
  empty?: string;
  moves: TeamMove[];
  title?: string;
}) => {
  const labelId = useId();

  return (
    <div className="mt-5">
      <TeamMemberSectionLabel id={labelId}>{title}</TeamMemberSectionLabel>
      {!moves.length && empty ? (
        <p className="text-ink-2 copy-note">{empty}</p>
      ) : null}
      <ol aria-labelledby={labelId} className="grid gap-2 sm:grid-cols-2">
        {moves.map((move) => (
          <TeamMoveRow key={move.position} move={move} />
        ))}
      </ol>
    </div>
  );
};
