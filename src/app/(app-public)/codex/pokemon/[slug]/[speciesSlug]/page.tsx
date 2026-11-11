import { PokemonEntryRoute } from "./pokemon-entry-route";

type PageProps = {
  params: Promise<{
    /* A version group's slug; a game's slug moves on to its group. */
    slug: string;
    speciesSlug: string;
  }>;
  searchParams: Promise<{
    form?: string | string[];
  }>;
};

export default async function Page({ params, searchParams }: PageProps) {
  const [{ slug, speciesSlug }, { form }] = await Promise.all([
    params,
    searchParams,
  ]);

  return (
    <PokemonEntryRoute
      form={Array.isArray(form) ? form[0] : form}
      speciesSlug={speciesSlug}
      versionGroupSlug={slug}
    />
  );
}
