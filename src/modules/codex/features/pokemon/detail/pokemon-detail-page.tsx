import { notFound } from "next/navigation";

import { PokemonDetailShell } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-shell";
import { resolvePokemonDetailScope } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-scope";
import { getPokemonDetailData } from "@/modules/codex/features/pokemon/detail/server/pokemon-detail-page-query";
import { getCodexVersionGroupRoute } from "@/modules/codex/shared/server/version-group-route-query";

type PokemonDetailPageProps = {
  form?: string;
  speciesSlug: string;
  versionGroupSlug: string;
};

/*
 * A Pokémon's entry read in one base version group. The route's layout has
 * already redirected an old game or expansion address and a group from
 * before the Pokémon existed, so anything else unreadable is a 404.
 */
export const PokemonDetailPage = async ({
  form,
  speciesSlug,
  versionGroupSlug,
}: PokemonDetailPageProps) => {
  const [route, data] = await Promise.all([
    getCodexVersionGroupRoute(versionGroupSlug),
    getPokemonDetailData(speciesSlug),
  ]);
  const scope =
    route?.isCanonical && data
      ? resolvePokemonDetailScope(data, {
          form,
          versionGroup: route.versionGroup.slug,
        })
      : null;

  if (!data || !scope) {
    notFound();
  }

  return <PokemonDetailShell data={data} scope={scope} />;
};
