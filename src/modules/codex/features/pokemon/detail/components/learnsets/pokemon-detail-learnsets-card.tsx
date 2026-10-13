"use client";

import { useMemo, useState } from "react";

import {
  formatPokemonDetailLearnsetDamageClass,
  formatPokemonDetailLearnsetValue,
  getFilteredPokemonDetailLearnsets,
  getPokemonDetailLearnsetAddedContentName,
  getPokemonDetailLearnsetMethodDetail,
  getPokemonDetailLearnsetMethodOptions,
  POKEMON_DETAIL_LEARNSET_ALL_METHODS,
  type PokemonDetailLearnsetMethodFilter,
} from "@/modules/codex/features/pokemon/detail/components/learnsets/pokemon-detail-learnset-table-model";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { PokemonTypeBadge } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import type { PokemonLearnsetSummary } from "@/modules/reference/types";
import { SearchControl } from "@/shared/components/search-control";
import { SegmentedControl } from "@/shared/components/segmented-control";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/shared/components/ui/table";

type PokemonDetailLearnsetsCardProps = {
  learnsets: PokemonLearnsetSummary[];
  scopeName: string | null;
};

/* On phones a row folds into v3's card: how on the left, the figures labelled. */
const figureCellClassName =
  "text-right font-bold tabular-nums max-md:p-0 max-md:text-left max-md:text-13 max-md:text-ink-2 max-md:before:mr-1 max-md:before:font-semibold max-md:before:text-ink-3 max-md:before:content-[attr(data-label)]";

/* What a cell shows when the move has no such value. */
const MissingValue = () => {
  return (
    <>
      <span aria-hidden>-</span>
      <span className="sr-only">None</span>
    </>
  );
};

const LearnsetRow = ({ learnset }: { learnset: PokemonLearnsetSummary }) => {
  const addedContentName = getPokemonDetailLearnsetAddedContentName(learnset);
  const category = formatPokemonDetailLearnsetDamageClass(
    learnset.attributes?.damage_class,
  );

  return (
    <TableRow className="max-md:relative max-md:flex max-md:flex-wrap max-md:items-center max-md:gap-x-3 max-md:gap-y-1.5 max-md:py-2.5 max-md:pl-16.5 max-md:hover:bg-transparent">
      <TableCell className="text-ink-2 font-extrabold tabular-nums max-md:absolute max-md:top-3 max-md:left-0 max-md:w-15 max-md:p-0 max-md:leading-tight max-md:break-words max-md:whitespace-normal">
        {getPokemonDetailLearnsetMethodDetail(learnset)}
      </TableCell>
      <TableCell className="whitespace-normal max-md:basis-full max-md:p-0">
        <span className="flex flex-wrap items-center gap-x-2.5 gap-y-1">
          <span className="inline-flex items-center gap-2.5 font-extrabold">
            {learnset.type && isPokemonTypeSlug(learnset.type.slug) ? (
              <PokemonTypeBadge
                type={learnset.type.slug}
                label={learnset.type.name}
                display="icon"
                size="md"
              />
            ) : null}
            {learnset.move.name}
          </span>
          {addedContentName ? (
            <span className="bg-surface-2 text-12 text-ink-2 rounded-full px-2 py-0.5 font-bold">
              <span className="sr-only">Added in </span>
              {addedContentName}
            </span>
          ) : null}
        </span>
      </TableCell>
      <TableCell className="max-md:p-0">
        {category ? (
          <span className="bg-surface-2 text-12 text-ink-2 rounded-full px-2.5 py-[3px] font-bold">
            {category}
          </span>
        ) : (
          <MissingValue />
        )}
      </TableCell>
      <TableCell data-label="Power" className={figureCellClassName}>
        {formatPokemonDetailLearnsetValue(learnset.attributes?.power) ?? (
          <MissingValue />
        )}
      </TableCell>
      <TableCell data-label="Acc." className={figureCellClassName}>
        {formatPokemonDetailLearnsetValue(
          learnset.attributes?.accuracy,
          "%",
        ) ?? <MissingValue />}
      </TableCell>
      <TableCell data-label="PP" className={figureCellClassName}>
        {formatPokemonDetailLearnsetValue(learnset.attributes?.pp) ?? (
          <MissingValue />
        )}
      </TableCell>
    </TableRow>
  );
};

export const PokemonDetailLearnsetsCard = ({
  learnsets,
  scopeName,
}: PokemonDetailLearnsetsCardProps) => {
  const [query, setQuery] = useState("");
  const [method, setMethod] = useState<PokemonDetailLearnsetMethodFilter>(
    POKEMON_DETAIL_LEARNSET_ALL_METHODS,
  );
  const methodOptions = useMemo(() => {
    return getPokemonDetailLearnsetMethodOptions(learnsets);
  }, [learnsets]);
  const filteredLearnsets = useMemo(() => {
    return getFilteredPokemonDetailLearnsets({
      learnsets,
      method,
      query,
    });
  }, [learnsets, method, query]);

  return (
    <DetailSectionCard title="Learnset" aside={scopeName}>
      {learnsets.length ? (
        <>
          <div className="mb-2.5 flex flex-wrap items-center justify-between gap-3">
            <SegmentedControl
              ariaLabel="Filter moves by how they're learned"
              value={method}
              onValueChange={setMethod}
              options={methodOptions}
              className="no-scrollbar max-sm:w-full max-sm:flex-nowrap max-sm:overflow-x-auto"
            />
            <SearchControl
              value={query}
              onValueChange={setQuery}
              placeholder="Search moves"
              ariaLabel="Search moves"
              className="w-full sm:w-64"
            />
          </div>

          {query ? (
            <p
              aria-live="polite"
              className="text-13 text-ink-2 mb-2 font-semibold"
            >
              {filteredLearnsets.length} of {learnsets.length} moves match
            </p>
          ) : null}

          {filteredLearnsets.length ? (
            <Table className="max-md:block md:min-w-155">
              <TableHeader className="max-md:hidden">
                <TableRow>
                  <TableHead>How</TableHead>
                  <TableHead>Move</TableHead>
                  <TableHead>Category</TableHead>
                  <TableHead className="text-right">Power</TableHead>
                  <TableHead className="text-right">Accuracy</TableHead>
                  <TableHead className="text-right">PP</TableHead>
                </TableRow>
              </TableHeader>
              <TableBody className="max-md:block">
                {filteredLearnsets.map((learnset) => (
                  <LearnsetRow
                    key={[
                      learnset.learnset.id,
                      learnset.learnset.move_id,
                      learnset.learnset.learn_method_id,
                      learnset.learnset.target_version_group_id,
                    ].join("-")}
                    learnset={learnset}
                  />
                ))}
              </TableBody>
            </Table>
          ) : (
            <p className="text-14 text-ink-2 py-4 font-semibold">
              No moves match.
            </p>
          )}
        </>
      ) : (
        <p className="text-14 text-ink-2 font-semibold">
          {scopeName
            ? `The moves it learns in ${scopeName} aren't recorded yet.`
            : "The moves it learns aren't recorded yet."}
        </p>
      )}
    </DetailSectionCard>
  );
};
