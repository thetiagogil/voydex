import { DetailSectionCard } from "@/shared/components/detail-section-card";
import type { TeamAnalysisCoverageRow } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";
import {
  PokemonTypeBadge,
  PokemonTypeIcon,
} from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";

/*
 * One chip per type: the type's own chip with how many recorded moves hit it
 * super effectively, or a dashed chip when nothing does (a gap in coverage).
 */
const CoverageChip = ({ row }: { row: TeamAnalysisCoverageRow }) => {
  const typeSlug = isPokemonTypeSlug(row.defendingType.slug)
    ? row.defendingType.slug
    : null;
  const { moveCount } = row;
  const name = row.defendingType.name;

  if (typeSlug && moveCount > 0) {
    return (
      <>
        <span aria-hidden>
          <PokemonTypeBadge
            size="lg"
            type={typeSlug}
            label={`${name} ${moveCount}`}
            className="tabular-nums"
          />
        </span>
        <span className="sr-only">
          {name}, {moveCount} recorded {moveCount === 1 ? "move" : "moves"}
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
      {name}
      <span className="sr-only">, no recorded move</span>
    </span>
  );
};

export const TeamAnalysisMoveCoverageSection = ({
  rows,
}: {
  rows: TeamAnalysisCoverageRow[];
}) => {
  const coveredCount = rows.filter((row) => row.moveCount > 0).length;

  return (
    <DetailSectionCard
      title="Move coverage"
      headingLevel={3}
      aside={
        <>
          <b className="text-ink font-extrabold tabular-nums">
            {coveredCount} of {rows.length}
          </b>{" "}
          types hit super effectively
        </>
      }
      contentClassName="pt-2"
    >
      <ul aria-label="Move coverage by type" className="flex flex-wrap gap-2">
        {rows.map((row) => (
          <li key={row.defendingType.id}>
            <CoverageChip row={row} />
          </li>
        ))}
      </ul>
    </DetailSectionCard>
  );
};
