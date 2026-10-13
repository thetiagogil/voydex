import type { CSSProperties } from "react";

import type { AuthMode } from "@/features/auth/auth-mode";
import type { AuthArt, AuthPokemonForm } from "@/features/auth/types";
import { cn } from "@/shared/utils/cn";

type PeekingPokemon = AuthPokemonForm & {
  /* Each render sits differently in its square, so each gets its own height. */
  offset: number;
};

/* Kanto's first partners peek over Log in, Paldea's over Sign up. */
const peekingPokemon: Record<AuthMode, readonly PeekingPokemon[]> = {
  "log-in": [
    { name: "Bulbasaur", offset: -24, sprite_slug: "bulbasaur" },
    { name: "Charmander", offset: 16, sprite_slug: "charmander" },
    { name: "Squirtle", offset: -6, sprite_slug: "squirtle" },
  ],
  "sign-up": [
    { name: "Sprigatito", offset: -28, sprite_slug: "sprigatito" },
    { name: "Fuecoco", offset: -6, sprite_slug: "fuecoco" },
    { name: "Quaxly", offset: -18, sprite_slug: "quaxly" },
  ],
};

type AuthPeekProps = {
  art: AuthArt;
  mode: AuthMode;
};

/* Three first partners peeking over the top of the card, half hidden by it. */
export const AuthPeek = ({ art, mode }: AuthPeekProps) => (
  <div
    aria-hidden
    className="pointer-events-none absolute inset-x-0 -top-[68px] flex items-end justify-center gap-2.5 sm:-top-[84px]"
  >
    {peekingPokemon[mode].map((pokemon, index) => {
      const src = art.pokemon(pokemon);

      return src ? (
        // Renders sit differently in their squares, so each keeps its own size and offset.
        // eslint-disable-next-line @next/next/no-img-element
        <img
          key={pokemon.sprite_slug}
          src={src}
          alt=""
          style={{ "--dy": `${pokemon.offset}px` } as CSSProperties}
          className={cn(
            "max-w-none translate-y-(--dy) object-contain",
            index === 1
              ? "mb-1.5 size-[100px] sm:size-[124px]"
              : "size-[90px] sm:size-28",
          )}
        />
      ) : null;
    })}
  </div>
);
