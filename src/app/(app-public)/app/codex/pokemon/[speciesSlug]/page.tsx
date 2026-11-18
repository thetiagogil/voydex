import type { Metadata } from "next";

import {
  getCodexPokemonPageMetadata,
  getCodexPokemonPageParams,
} from "@/modules/codex/codex-pages";

import { PokemonEntryRoute } from "./pokemon-entry-route";

type PageProps = {
  params: Promise<{ speciesSlug: string }>;
};

/* One ready page per species; every other species is not found. */
export const dynamicParams = false;

export const generateStaticParams = getCodexPokemonPageParams;

export const generateMetadata = async ({
  params,
}: PageProps): Promise<Metadata> =>
  getCodexPokemonPageMetadata((await params).speciesSlug);

/*
 * A Pokémon's entry. The game it is read in (`?game=`) and the form
 * (`?form=`) are read in the browser, so one page serves every game.
 */
export default async function Page({ params }: PageProps) {
  const { speciesSlug } = await params;

  return <PokemonEntryRoute speciesSlug={speciesSlug} />;
}
