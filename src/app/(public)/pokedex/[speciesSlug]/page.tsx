import { redirect } from "next/navigation";

import { appRoutes } from "@/config/routes";

type PageProps = {
  params: Promise<{
    speciesSlug: string;
  }>;
};

export default async function Page({ params }: PageProps) {
  const { speciesSlug } = await params;

  redirect(appRoutes.codexPokemonSpecies(speciesSlug));
}
