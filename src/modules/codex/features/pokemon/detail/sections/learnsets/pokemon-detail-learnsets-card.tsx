"use client";

import { Badge } from "@/shared/components/ui/badge";
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
} from "@/modules/codex/features/pokemon/detail/sections/learnsets/pokemon-detail-learnset-table-model";
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

/* One base group's learnset: the moves differ between a generation's games. */
export type PokemonDetailLearnsetGroup = {
  /* Shown but not offered: the Pokémon (or this form) isn't found there. */
  disabled: boolean;
  label: string;
  learnsets: PokemonLearnsetSummary[];
  slug: string;
};

type PokemonDetailLearnsetsCardProps = {
  /* The generation's groups, in order; one alone has no switch. */
  groups: PokemonDetailLearnsetGroup[];
  /* The group the page's address names, picked first. */
  initialSlug: string;
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
      <TableCell className="text-ink-2 font-extrabold tabular-nums max-md:absolute max-md:top-3 max-md:left-0 max-md:w-15 max-md:p-0 max-md:leading-tight max-md:wrap-break-word max-md:whitespace-normal">
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
            <Badge>
              {learnset.game ? null : (
                <span className="sr-only">Added in </span>
              )}
              {addedContentName}
            </Badge>
          ) : null}
        </span>
      </TableCell>
      <TableCell className="max-md:p-0">
        {category ? <Badge>{category}</Badge> : <MissingValue />}
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

/*
 * v3's Learnset: the game switch in the head when the generation has several
 * groups (a switch on the page, every group's moves already here), then one
 * line of search and the how-it's-learned filter, then the table.
 */
export const PokemonDetailLearnsetsCard = ({
  groups,
  initialSlug,
}: PokemonDetailLearnsetsCardProps) => {
  const [groupSlug, setGroupSlug] = useState(initialSlug);
  const group =
    groups.find((candidate) => candidate.slug === groupSlug) ?? groups[0];
  const learnsets = useMemo(() => group?.learnsets ?? [], [group]);
  const scopeName = group?.label ?? "";
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
    <DetailSectionCard
      id="learnset"
      title="Learnset"
      aside={groups.length > 1 ? undefined : scopeName}
      headerClassName="flex-wrap [&>div:last-child]:max-w-full [&>div:last-child]:shrink"
      action={
        groups.length > 1 ? (
          <SegmentedControl
            ariaLabel="Game"
            size="sm"
            variant="segment"
            selectedTone="strong"
            className="no-scrollbar max-w-full max-sm:flex-nowrap max-sm:overflow-x-auto max-sm:*:shrink-0"
            options={groups.map((candidate) => ({
              disabled: candidate.disabled,
              label: candidate.label,
              value: candidate.slug,
            }))}
            value={group?.slug ?? null}
            onValueChange={(slug) => {
              setGroupSlug(slug);
              setMethod(POKEMON_DETAIL_LEARNSET_ALL_METHODS);
            }}
          />
        ) : null
      }
    >
      {learnsets.length ? (
        <>
          <div className="mb-2.5 flex flex-wrap items-center gap-3">
            <SearchControl
              value={query}
              onValueChange={setQuery}
              placeholder="Search moves"
              ariaLabel="Search moves"
              className="min-w-0 flex-[1_1_100%] sm:flex-[1_1_220px]"
            />
            <SegmentedControl
              ariaLabel="Filter moves by how they're learned"
              value={method}
              onValueChange={setMethod}
              options={methodOptions}
              className="no-scrollbar max-w-full max-sm:flex-nowrap max-sm:overflow-x-auto max-sm:*:shrink-0"
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
          {`The moves it learns in ${scopeName} aren't recorded yet.`}
        </p>
      )}
    </DetailSectionCard>
  );
};
