import type { CSSProperties } from "react";

import type { PublicArt, PublicPokemonForm } from "@/config/public-art";
import type { StartIntentPreview } from "@/config/start-intent";
import type { AuthMode } from "@/features/auth/auth-mode";
import { FallbackImage } from "@/shared/components/fallback-image";
import { cn } from "@/shared/utils/cn";

export type PeekingPokemon = {
  imageUrl: string | null;
  key: string;
  name: string;
  /* Each render sits differently in its square, so each gets its own height. */
  offset?: number;
};

type PeekPreset = PublicPokemonForm & { offset: number };

/* Kanto's first partners peek over Log in and the recovery pages, Paldea's over Sign up. */
const peekPresets: Record<AuthMode, readonly PeekPreset[]> = {
  "log-in": [
    { name: "Bulbasaur", offset: -24, slug: "bulbasaur" },
    { name: "Charmander", offset: 16, slug: "charmander" },
    { name: "Squirtle", offset: -6, slug: "squirtle" },
  ],
  "sign-up": [
    { name: "Sprigatito", offset: -28, slug: "sprigatito" },
    { name: "Fuecoco", offset: -6, slug: "fuecoco" },
    { name: "Quaxly", offset: -18, slug: "quaxly" },
  ],
};

/*
 * Who peeks over the card. Coming from Start a Play, the card wears the
 * pick: the partner alone, or the game's first partners while the partner is
 * still to choose; otherwise the page's own trio.
 */
export const getAuthPeekCast = (
  art: Pick<PublicArt, "pokemon">,
  mode: AuthMode,
  intent: StartIntentPreview | null = null,
): readonly PeekingPokemon[] => {
  const picked = intent?.partner
    ? [intent.partner]
    : (intent?.starters.slice(0, 3) ?? []);

  if (picked.length > 0) {
    return picked.map((pokemon) => ({
      imageUrl: pokemon.imageUrl,
      key: pokemon.speciesSlug,
      name: pokemon.name,
    }));
  }

  return peekPresets[mode].map((pokemon) => ({
    imageUrl: art.pokemon(pokemon),
    key: pokemon.slug,
    name: pokemon.name,
    offset: pokemon.offset,
  }));
};

/* First partners peeking over the top of the card, half hidden by it; a lone partner stands taller. */
export const AuthPeek = ({ cast }: { cast: readonly PeekingPokemon[] }) => {
  const solo = cast.length === 1;

  return (
    <div
      aria-hidden
      className="pointer-events-none absolute inset-x-0 -top-17 flex items-end justify-center gap-2.5 sm:-top-21"
    >
      {cast.map((pokemon, index) => (
        // Renders sit differently in their squares, so each keeps its own size and offset.
        <FallbackImage
          key={pokemon.key}
          src={pokemon.imageUrl}
          name={pokemon.name}
          fallback="badge"
          style={{ "--dy": `${pokemon.offset ?? 0}px` } as CSSProperties}
          className={cn(
            "max-w-none object-contain",
            solo
              ? "size-30 translate-y-[calc(var(--dy)-28px)] sm:size-36 sm:translate-y-[calc(var(--dy)-34px)]"
              : "translate-y-(--dy)",
            !solo &&
              (index === 1
                ? "mb-1.5 size-25 sm:size-31"
                : "size-22.5 sm:size-28"),
          )}
        />
      ))}
    </div>
  );
};
