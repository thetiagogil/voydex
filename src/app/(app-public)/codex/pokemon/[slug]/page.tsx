import { notFound, redirect } from "next/navigation";

import { getDefaultPokemonDetailGameSlug } from "@/modules/codex/features/pokemon/detail/server/pokemon-detail-default-game-query";
import { getPokemonDetailScopeHref } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-routes";

type PageProps = {
  params: Promise<{
    slug: string;
  }>;
  searchParams: Promise<{
    form?: string | string[];
    game?: string | string[];
    generation?: string | string[];
    versionGroup?: string | string[];
  }>;
};

export default async function Page({ params, searchParams }: PageProps) {
  const { slug: speciesSlug } = await params;
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
