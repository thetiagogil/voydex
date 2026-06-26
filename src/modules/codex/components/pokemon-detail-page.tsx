import { notFound } from "next/navigation";

import { PokemonDetailReference } from "@/modules/codex/components/pokemon-detail/pokemon-detail-reference";
import { getPokemonDetailData } from "@/modules/codex/data/pokemon-detail-query";
import {
  resolvePokemonDetailScope,
  type PokemonDetailScopeParams,
} from "@/modules/codex/data/pokemon-detail-scope";

type PokemonDetailPageProps = {
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
  searchParams,
  speciesSlug,
}: PokemonDetailPageProps) => {
  const data = await getPokemonDetailData(speciesSlug);

  if (!data) {
    notFound();
  }

  const scope = resolvePokemonDetailScope(
    data,
    normalizePokemonDetailSearchParams(searchParams),
  );

  if (!scope) {
    notFound();
  }

  return <PokemonDetailReference data={data} scope={scope} />;
};
