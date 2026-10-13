import { getSignedInAccount } from "@/features/app-shell/server/signed-in-account-query";
import type { CodexPokemonEntrySlots } from "@/modules/codex/codex-slots";
import { PokemonDetailPage } from "@/modules/codex/features/pokemon/detail/pokemon-detail-page";
import {
  CodexAddToPlay,
  CodexInYourPlays,
} from "@/modules/mainline/public-codex";

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

/* Mainline's signed-in pieces: Add to a Play and In your Plays. */
const signedInSlots: CodexPokemonEntrySlots = {
  heroActions: (entry) => (
    <CodexAddToPlay
      formSlug={entry.formSlug ?? undefined}
      speciesSlug={entry.speciesSlug}
    />
  ),
  inYourPlays: (entry) => <CodexInYourPlays speciesSlug={entry.speciesSlug} />,
};

export default async function Page({ params, searchParams }: PageProps) {
  const [{ slug, speciesSlug }, { form }, account] = await Promise.all([
    params,
    searchParams,
    /* The public shell's own read, cached per request: no extra auth work. */
    getSignedInAccount(),
  ]);

  return (
    <PokemonDetailPage
      form={Array.isArray(form) ? form[0] : form}
      slots={account ? signedInSlots : undefined}
      speciesSlug={speciesSlug}
      versionGroupSlug={slug}
    />
  );
}
