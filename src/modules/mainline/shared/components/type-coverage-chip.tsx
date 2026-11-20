import {
  PokemonTypeBadge,
  PokemonTypeIcon,
} from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { IconDisc } from "@/shared/components/icon-disc";

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
    <span className="empty-slot text-ink-2 copy-strong inline-flex h-9 items-center gap-2 rounded-full pr-3.5 pl-1.5 leading-none whitespace-nowrap">
      <IconDisc size="xs">
        {typeSlug ? (
          <PokemonTypeIcon type={typeSlug} className="size-3.5 opacity-60" />
        ) : null}
      </IconDisc>
      {type.name}
      <span className="sr-only">, {spoken}</span>
    </span>
  );
};
