import { redirect } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { PokedexPage } from "@/modules/codex/features/pokemon/browse/pokedex-page";

type PageProps = {
  searchParams: Promise<Record<string, string | string[] | undefined>>;
};

export default async function Page({ searchParams }: PageProps) {
  const params = await searchParams;

  if (Object.keys(params).length > 0) {
    redirect(appRoutes.codexPokemon);
  }

  return <PokedexPage />;
}
