import { notFound, redirect } from "next/navigation";

import { getDefaultPokemonDetailVersionGroupSlug } from "@/modules/codex/features/pokemon/detail/server/pokemon-detail-route-query";
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

const getSingleSearchParam = (value?: string | string[]) => {
  return Array.isArray(value) ? value[0] : value;
};

/* A species alone opens its entry in a version group; old query addresses keep their group. */
export default async function Page({ params, searchParams }: PageProps) {
  const { slug: speciesSlug } = await params;
  const { form, game, generation, versionGroup } = await searchParams;
  const versionGroupSlug = await getDefaultPokemonDetailVersionGroupSlug(
    speciesSlug,
    {
      game: getSingleSearchParam(game),
      generation: getSingleSearchParam(generation),
      versionGroup: getSingleSearchParam(versionGroup),
    },
  );

  if (!versionGroupSlug) {
    notFound();
  }

  redirect(
    getPokemonDetailScopeHref(speciesSlug, {
      form: getSingleSearchParam(form),
      versionGroup: versionGroupSlug,
    }),
  );
}
