"use client";

import { notFound, redirect, RedirectType } from "next/navigation";
import { useMemo } from "react";

import { codexFiles } from "@/modules/codex/codex-files";
import type { CodexPokemonEntrySlots } from "@/modules/codex/codex-slots";
import { PokemonDetailShell } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-shell";
import {
  buildPokemonDetailData,
  type PokemonDetailRows,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-page-mappers";
import { resolvePokemonDetailEntryRoute } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-route";
import { resolvePokemonDetailScope } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-scope";
import { useCodexFile } from "@/modules/codex/shared/client/use-codex-file";
import { PageLoadingState } from "@/shared/components/page-loading-state";

type PokemonDetailPageProps = {
  form?: string;
  /* Pieces about your Plays the route fills: Add to a Play and In your Plays. */
  slots?: CodexPokemonEntrySlots;
  speciesSlug: string;
  versionGroupSlug: string;
};

/*
 * A Pokémon's entry read in one base version group, from the species'
 * pre-built file. An old game or expansion address, or a group from before
 * the Pokémon existed, moves on to its group; anything else unreadable is a
 * 404.
 */
export const PokemonDetailPage = ({
  form,
  slots,
  speciesSlug,
  versionGroupSlug,
}: PokemonDetailPageProps) => {
  const rows = useCodexFile<PokemonDetailRows>(
    codexFiles.pokemonEntry(speciesSlug),
  );
  const data = useMemo(() => rows && buildPokemonDetailData(rows), [rows]);

  if (!rows || !data) {
    return <PageLoadingState />;
  }

  const route = resolvePokemonDetailEntryRoute(rows, versionGroupSlug);

  if (route.status === "not-found") {
    notFound();
  }

  if (route.status === "redirect") {
    redirect(route.href, RedirectType.replace);
  }

  const scope = resolvePokemonDetailScope(data, {
    form,
    versionGroup: route.versionGroup.slug,
  });

  if (!scope) {
    notFound();
  }

  return <PokemonDetailShell data={data} scope={scope} slots={slots} />;
};
