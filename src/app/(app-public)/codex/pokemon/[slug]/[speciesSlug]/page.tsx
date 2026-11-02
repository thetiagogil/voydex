import { appRoutes } from "@/config/routes";
import { getSignedInAccount } from "@/features/app-shell/server/signed-in-account-query";
import { getAuthPageHref } from "@/features/auth/auth-mode";
import type {
  CodexPokemonEntrySlotContext,
  CodexPokemonEntrySlots,
} from "@/modules/codex/codex-slots";
import { PokemonDetailPage } from "@/modules/codex/features/pokemon/detail/pokemon-detail-page";
import {
  CodexFavouriteButton,
  CodexFavouriteSignIn,
  CodexInYourPlays,
  CodexYourPlaysLink,
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

/* This entry's own address, where signing in from its heart comes back to. */
const getEntryPath = (entry: CodexPokemonEntrySlotContext) => {
  const path = appRoutes.codexPokemonEntry(
    entry.versionGroupSlug,
    entry.speciesSlug,
  );

  return entry.formSlug
    ? `${path}?${new URLSearchParams({ form: entry.formSlug })}`
    : path;
};

/*
 * Mainline's signed-in pieces: Your Plays (a jump to the end), the heart and
 * In your Plays.
 */
const signedInSlots: CodexPokemonEntrySlots = {
  favourite: (entry) => (
    <CodexFavouriteButton
      formId={entry.formId}
      name={entry.pokemonName}
      speciesId={entry.speciesId}
    />
  ),
  heroActions: (entry) => (
    <CodexYourPlaysLink speciesSlug={entry.speciesSlug} />
  ),
  inYourPlays: (entry) => (
    <CodexInYourPlays
      formSlug={entry.formSlug}
      speciesSlug={entry.speciesSlug}
    />
  ),
};

/* A visitor's heart asks them to sign in, then returns to the entry. */
const signedOutSlots: CodexPokemonEntrySlots = {
  favourite: (entry) => (
    <CodexFavouriteSignIn
      href={getAuthPageHref({ mode: "log-in", next: getEntryPath(entry) })}
    />
  ),
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
      slots={account ? signedInSlots : signedOutSlots}
      speciesSlug={speciesSlug}
      versionGroupSlug={slug}
    />
  );
}
