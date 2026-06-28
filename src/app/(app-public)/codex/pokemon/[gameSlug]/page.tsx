import { notFound, redirect } from "next/navigation";

import { getDefaultPokemonDetailGameSlug } from "@/modules/codex/data/pokemon-detail-query";
import { getPokemonDetailScopeHref } from "@/modules/codex/utils/pokemon-detail-routes";

type PageProps = {
  params: Promise<{
    gameSlug: string;
  }>;
  searchParams: Promise<{
    form?: string | string[];
    game?: string | string[];
    generation?: string | string[];
    versionGroup?: string | string[];
  }>;
};

export default async function Page({ params, searchParams }: PageProps) {
  const { gameSlug: speciesSlug } = await params;
  const resolvedSearchParams = await searchParams;
  const requestedGameSlug = getSingleSearchParam(resolvedSearchParams.game);
  const defaultGameSlug =
    requestedGameSlug ?? (await getDefaultPokemonDetailGameSlug(speciesSlug));

  if (!defaultGameSlug) {
    notFound();
  }

  redirect(
    getPokemonDetailScopeHref(speciesSlug, {
      form: getSingleSearchParam(resolvedSearchParams.form),
      game: defaultGameSlug,
    }),
  );
}

const getSingleSearchParam = (value?: string | string[]) => {
  return Array.isArray(value) ? value[0] : value;
};
