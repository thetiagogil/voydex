import { notFound } from "next/navigation";

import { PokemonDetailShell } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-shell";
import { getPokemonDetailData } from "@/modules/codex/features/pokemon/detail/server/pokemon-detail-page-query";
import { resolvePokemonDetailScope } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-scope";
import type { PokemonDetailScopeParams } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-scope";

type PokemonDetailPageProps = {
  gameSlug?: string;
  searchParams?: PokemonDetailPageSearchParams;
  speciesSlug: string;
};

type PokemonDetailPageSearchParams = {
  form?: string | string[];
  game?: string | string[];
  generation?: string | string[];
  versionGroup?: string | string[];
};

const getSingleSearchParam = (value?: string | string[]) => {
  return Array.isArray(value) ? value[0] : value;
};

const normalizePokemonDetailSearchParams = (
  searchParams: PokemonDetailPageSearchParams = {},
): PokemonDetailScopeParams => {
  return {
    form: getSingleSearchParam(searchParams.form),
    game: getSingleSearchParam(searchParams.game),
    generation: getSingleSearchParam(searchParams.generation),
    versionGroup: getSingleSearchParam(searchParams.versionGroup),
  };
};

export const PokemonDetailPage = async ({
  gameSlug,
  searchParams,
  speciesSlug,
}: PokemonDetailPageProps) => {
  const data = await getPokemonDetailData(speciesSlug);

  if (!data) {
    notFound();
  }

  const scope = resolvePokemonDetailScope(data, {
    ...normalizePokemonDetailSearchParams(searchParams),
    game: gameSlug ?? getSingleSearchParam(searchParams?.game),
  });

  if (!scope) {
    notFound();
  }

  return <PokemonDetailShell data={data} scope={scope} />;
};
