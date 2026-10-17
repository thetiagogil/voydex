import { useId } from "react";

import { PokemonTypeBadge } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";

import type { TeamMove } from "./team-member-model";

const TeamMoveRow = ({ move }: { move: TeamMove }) => {
  const typeSlug =
    move.type && isPokemonTypeSlug(move.type.slug) ? move.type.slug : null;
  const category = [
    move.type?.name ?? "Type not recorded",
    move.isStatus ? "Status" : null,
  ]
    .filter(Boolean)
    .join(" · ");

  return (
    <li
      style={getPokemonTypeCssVariables(typeSlug)}
      className="flex min-h-15 min-w-0 items-center gap-2.5 rounded-md bg-[color-mix(in_oklab,var(--t)_12%,var(--surface))] px-3 py-2.5"
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
      <span className="min-w-0">
        <span className="text-15 block truncate font-extrabold">
          {move.name}
        </span>
        <span className="text-ink-tint text-12 block truncate font-bold">
          {category}
        </span>
      </span>
    </li>
  );
};

/* The recorded moves, each on its type's tint. */
export const TeamMemberMoves = ({ moves }: { moves: TeamMove[] }) => {
  const labelId = useId();

  return (
    <div className="mt-5">
      <p id={labelId} className="text-ink-3 text-13 mb-2.5 font-extrabold">
        Moves
      </p>
      <ol aria-labelledby={labelId} className="grid gap-2 sm:grid-cols-2">
        {moves.map((move) => (
          <TeamMoveRow key={move.position} move={move} />
        ))}
      </ol>
    </div>
  );
};
