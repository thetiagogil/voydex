import {
  PokemonTypeBadge,
  PokemonTypeIcon,
} from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";

/*
 * One type in a team's coverage, the same in a Play's Team analysis and the
 * Planner's Team check: the type's own chip when the team hits it super
 * effectively (with `count`, how many ways), or a dashed chip when nothing
 * does, a gap in coverage. `spoken` says what the chip shows in words.
 */
export const TypeCoverageChip = ({
  count,
  covered,
  spoken,
  type,
}: {
  count?: number;
  covered: boolean;
  spoken: string;
  type: { name: string; slug: string };
}) => {
  const typeSlug = isPokemonTypeSlug(type.slug) ? type.slug : null;

  if (typeSlug && covered) {
    return (
      <>
        <span aria-hidden>
          <PokemonTypeBadge
            size="lg"
            type={typeSlug}
            label={count === undefined ? type.name : `${type.name} ${count}`}
            className="tabular-nums"
          />
        </span>
        <span className="sr-only">
          {type.name}, {spoken}
        </span>
      </>
    );
  }

  return (
    <span className="empty-slot text-ink-2 text-14 inline-flex h-8.5 items-center gap-1.75 rounded-full pr-3.25 pl-1 leading-none font-extrabold whitespace-nowrap">
      <span
        aria-hidden
        className="bg-surface-2 grid size-6 place-items-center rounded-full"
      >
        {typeSlug ? (
          <PokemonTypeIcon
            type={typeSlug}
            className="size-3.5 opacity-50 invert-0"
          />
        ) : null}
      </span>
      {type.name}
      <span className="sr-only">, {spoken}</span>
    </span>
  );
};
