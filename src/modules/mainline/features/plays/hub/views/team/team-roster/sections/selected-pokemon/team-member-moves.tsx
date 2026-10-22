import { useId } from "react";

import { ExplanatoryTip } from "@/shared/components/explanatory-tip";
import { PokemonTypeBadge } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";

import type { TeamMove } from "./team-member-model";

const TeamMoveRow = ({ move }: { move: TeamMove }) => {
  const typeSlug =
    move.type && isPokemonTypeSlug(move.type.slug) ? move.type.slug : null;
  const end = move.detail ?? move.category;

  return (
    <li
      style={getPokemonTypeCssVariables(typeSlug)}
      className="flex min-h-13 min-w-0 items-center gap-2.5 rounded-md bg-[color-mix(in_oklab,var(--t)_12%,var(--surface))] px-3 py-2.5"
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
      <span className="text-15 min-w-0 flex-1 truncate font-extrabold">
        {move.name}
      </span>
      {end ? (
        <span className="text-ink-tint text-12 shrink-0 font-bold capitalize">
          {end}
        </span>
      ) : null}
      {move.effect ? (
        <ExplanatoryTip
          content={move.effect}
          triggerLabel={`About ${move.name}`}
          triggerVariant="subtle"
        />
      ) : null}
    </li>
  );
};

/*
 * The recorded moves, each on its type's tint in one line like the editor's:
 * type icon, name, and its category (or what it came from) at the end; or
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
      <p id={labelId} className="text-ink-3 text-13 mb-2.5 font-extrabold">
        {title}
      </p>
      {!moves.length && empty ? (
        <p className="text-ink-2 text-14 font-semibold">{empty}</p>
      ) : null}
      <ol aria-labelledby={labelId} className="grid gap-2 sm:grid-cols-2">
        {moves.map((move) => (
          <TeamMoveRow key={move.position} move={move} />
        ))}
      </ol>
    </div>
  );
};
