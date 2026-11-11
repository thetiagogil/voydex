import { PokemonSpeciesPage } from "@/modules/codex/features/pokemon/detail/pokemon-species-page";

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
  const [{ slug }, { form, game, generation, versionGroup }] =
    await Promise.all([params, searchParams]);

  return (
    <PokemonSpeciesPage
      legacyScope={{
        form: getSingleSearchParam(form),
        game: getSingleSearchParam(game),
        generation: getSingleSearchParam(generation),
        versionGroup: getSingleSearchParam(versionGroup),
      }}
      speciesSlug={slug}
    />
  );
}
