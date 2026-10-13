import { PokemonDetailPage } from "@/modules/codex/features/pokemon/detail/pokemon-detail-page";

type PageProps = {
  params: Promise<{
    /* A version group's slug; a game's slug redirects to its group. */
    slug: string;
    speciesSlug: string;
  }>;
  searchParams: Promise<{
    form?: string | string[];
  }>;
};

export default async function Page({ params, searchParams }: PageProps) {
  const { slug, speciesSlug } = await params;
  const { form } = await searchParams;

  return (
    <PokemonDetailPage
      form={Array.isArray(form) ? form[0] : form}
      speciesSlug={speciesSlug}
      versionGroupSlug={slug}
    />
  );
}
