"use client";

import { notFound, redirect, RedirectType } from "next/navigation";

import { codexFiles } from "@/modules/codex/codex-files";
import type { PokemonDetailRows } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-page-mappers";
import {
  getDefaultPokemonDetailVersionGroupSlug,
  type PokemonDetailLegacyScope,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-route";
import { getPokemonDetailScopeHref } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-routes";
import { useCodexFile } from "@/modules/codex/shared/client/use-codex-file";
import { PageLoadingState } from "@/shared/components/page-loading-state";

type PokemonSpeciesPageProps = {
  legacyScope: PokemonDetailLegacyScope;
  speciesSlug: string;
};

/*
 * A species alone (`/codex/pokemon/{species}`) opens its entry in a version
 * group; old query addresses keep their group, and `?form=` its form.
 */
export const PokemonSpeciesPage = ({
  legacyScope,
  speciesSlug,
}: PokemonSpeciesPageProps) => {
  const rows = useCodexFile<PokemonDetailRows>(
    codexFiles.pokemonEntry(speciesSlug),
  );

  if (!rows) {
    return <PageLoadingState />;
  }

  const versionGroupSlug = getDefaultPokemonDetailVersionGroupSlug(
    rows,
    legacyScope,
  );

  if (!versionGroupSlug) {
    notFound();
  }

  redirect(
    getPokemonDetailScopeHref(speciesSlug, {
      form: legacyScope.form,
      versionGroup: versionGroupSlug,
    }),
    RedirectType.replace,
  );
};
