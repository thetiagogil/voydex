import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { PokemonAvatar } from "@/modules/reference/features/pokemon/components/pokemon-avatar";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

import type {
  StoryHandover,
  StoryPlacePokemon,
  StoryPlacePokemonGroup,
} from "../../data/story-place-pokemon";

const imageOf = (pokemon: { name: string; slug: string }) =>
  getPokemonFormImageUrl({ name: pokemon.name, slug: pokemon.slug }, "sm");

/* "A boy in the trade house" reads on after a verb as "a boy in the trade house". */
const afterVerb = (giver: string) =>
  /^(A|An|The) /.test(giver)
    ? giver.charAt(0).toLowerCase() + giver.slice(1)
    : giver;

/*
 * Who hands a Pokémon over, in a line: "Trade your Abra with Kyle", "Sold
 * by the Magikarp salesman", "From Professor Oak". Null when nobody does
 * (a Poké Ball on a table says how in its condition).
 */
export const getStoryHandoverSource = (
  waySlug: string,
  handover: StoryHandover,
): string | null => {
  const { giver, tradeFor } = handover;

  if (waySlug === "trade") {
    const ask = tradeFor ? `Trade your ${tradeFor.name}` : "Trade";

    return giver ? `${ask} with ${afterVerb(giver)}` : tradeFor ? ask : null;
  }

  if (!giver) return null;

  if (waySlug === "fossil") return `Revived by ${afterVerb(giver)}`;
  if (waySlug === "bought") return `Sold by ${afterVerb(giver)}`;

  return `From ${afterVerb(giver)}`;
};

/* Its levels, nickname, held item and price, in one quiet line. */
const getStoryPokemonFacts = (pokemon: StoryPlacePokemon) =>
  [
    pokemon.levels,
    pokemon.handover?.nickname ? `“${pokemon.handover.nickname}”` : null,
    pokemon.handover?.heldItem ? `Holds ${pokemon.handover.heldItem}` : null,
    pokemon.handover?.price,
  ]
    .filter(Boolean)
    .join(" · ");

/*
 * Each way's Pokémon as one line apiece: name and levels, and for one
 * handed over (#322), who gives it and when, a trade's ask beside it.
 */
export const StoryPokemonRows = ({
  groups,
}: {
  groups: StoryPlacePokemonGroup[];
}) => (
  <div className="grid gap-4">
    {groups.map((group) => (
      <section key={group.way} aria-label={group.way} className="grid gap-2">
        <h4 className="text-ink-2 copy-label">{group.way}</h4>
        <ul className="grid gap-2">
          {group.pokemon.map((pokemon) => {
            const facts = getStoryPokemonFacts(pokemon);
            const source = pokemon.handover
              ? getStoryHandoverSource(group.waySlug, pokemon.handover)
              : null;
            const tradeFor = pokemon.handover?.tradeFor ?? null;

            return (
              <li
                key={pokemon.formId}
                className="tile flex min-h-14 items-center gap-3 px-3 py-2"
              >
                {tradeFor ? (
                  <span className="text-ink-3 flex shrink-0 items-center gap-1">
                    <PokemonAvatar
                      className="size-8"
                      decorative
                      imageUrl={imageOf(tradeFor)}
                      name={tradeFor.name}
                      typeSlug={null}
                    />
                    <AppIcon icon={appIcons.product.trade} size="sm" />
                  </span>
                ) : null}
                <PokemonAvatar
                  className="size-10 shrink-0"
                  decorative
                  imageUrl={imageOf(pokemon)}
                  name={pokemon.name}
                  typeSlug={null}
                />
                <span className="grid min-w-0">
                  <b className="text-ink copy-strong truncate">
                    {pokemon.name}
                  </b>
                  {facts ? (
                    <span className="text-ink-3 copy-meta">{facts}</span>
                  ) : null}
                  {source ? (
                    <span className="text-ink-2 copy-meta">{source}</span>
                  ) : null}
                  {pokemon.handover?.condition ? (
                    <span className="text-ink-3 copy-meta">
                      {pokemon.handover.condition}
                    </span>
                  ) : null}
                </span>
              </li>
            );
          })}
        </ul>
      </section>
    ))}
  </div>
);

/* Each way's Pokémon as a row of small sprites, to read at a glance. */
export const StoryPokemonSprites = ({
  groups,
}: {
  groups: StoryPlacePokemonGroup[];
}) => (
  <div className="grid gap-4">
    {groups.map((group) => (
      <section key={group.way} aria-label={group.way} className="grid gap-2">
        <h4 className="text-ink-2 copy-label">{group.way}</h4>
        <ul className="flex flex-wrap gap-2">
          {group.pokemon.map((pokemon) => (
            <li key={pokemon.formId}>
              <PokemonAvatar
                className="size-11"
                imageUrl={imageOf(pokemon)}
                name={pokemon.name}
                typeSlug={null}
              />
            </li>
          ))}
        </ul>
      </section>
    ))}
  </div>
);
