import { PokemonCard } from "@/modules/reference/features/pokemon/components/pokemon-card";
import { EmptyState } from "@/shared/components/empty-state";
import { LoadMoreTrigger } from "@/shared/components/load-more-trigger";
import { PendingData } from "@/shared/components/pending-data";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

import {
  formatPokemonChoiceNumber,
  getPokemonChoiceTypes,
  type PokemonChoice,
} from "../../utils/pokemon-choices";

export type AddPokemonLoadState =
  | { status: "idle" }
  | { message: string; status: "error" }
  | {
      choices: PokemonChoice[];
      pokedexName: string | null;
      status: "ready";
    };

/* One Pokémon to pick: the plain card, as a button. */
const ChoiceButton = ({
  choice,
  onPick,
}: {
  choice: PokemonChoice;
  onPick: (choice: PokemonChoice) => void;
}) => (
  <li className="min-w-0">
    <button
      type="button"
      onClick={() => onPick(choice)}
      aria-label={`${choice.speciesName}${choice.formName ? `, ${choice.formName}` : ""}, ${formatPokemonChoiceNumber(choice.number)}`}
      className="focus-ring block w-full rounded-lg outline-offset-2"
    >
      <PokemonCard
        state="plain"
        size="sm"
        imageAlt=""
        imageUrl={choice.imageUrl}
        name={choice.speciesName}
        number={formatPokemonChoiceNumber(choice.number)}
        subtitle={choice.formName}
        types={getPokemonChoiceTypes(choice)}
      />
    </button>
  </li>
);

/*
 * Step 1, which Pokémon: the whole of the Play's Pokédex in order, or what
 * the search finds, drawn in batches as you scroll.
 */
export const AddPokemonChoiceStep = ({
  loadState,
  onPick,
  onRetry,
  onShowMore,
  pokedexName,
  presetMissing,
  query,
  results,
  shownCount,
}: {
  loadState: AddPokemonLoadState;
  onPick: (choice: PokemonChoice) => void;
  onRetry: () => void;
  onShowMore: () => void;
  pokedexName: string;
  presetMissing: boolean;
  query: string;
  results: PokemonChoice[];
  shownCount: number;
}) => (
  <div className="grid gap-4">
    {presetMissing ? (
      <p role="status" className="text-ink-2 text-14 font-semibold">
        That Pokémon isn&apos;t in this Play&apos;s Pokédex. Search for another.
      </p>
    ) : null}
    {loadState.status === "idle" ? (
      <div className="grid place-items-center py-10">
        <Spinner aria-label="Loading Pokémon" className="text-action" />
      </div>
    ) : loadState.status === "error" ? (
      <EmptyState
        variant="bare"
        title={loadState.message}
        action={
          <Button type="button" variant="secondary" onClick={onRetry}>
            Try again
          </Button>
        }
      />
    ) : query.trim() && !results.length ? (
      <EmptyState
        variant="bare"
        title={`Nothing in the ${pokedexName} matches “${query.trim()}”.`}
      />
    ) : (
      <div className="grid gap-2">
        {query.trim() ? null : (
          <>
            <p className="text-ink-3 text-13 flex flex-wrap items-center gap-2 font-extrabold">
              Around the first routes
              {/* TODO(v3-data): route and encounter locations, to suggest the Pokémon found on the first routes. */}
              <PendingData variant="inline" label="Not in Voydex yet" />
            </p>
            <p className="text-ink-3 text-13 font-extrabold">
              The whole {pokedexName}
            </p>
          </>
        )}
        <ul className="grid grid-cols-3 gap-2.5 sm:grid-cols-4">
          {results.slice(0, shownCount).map((choice) => (
            <ChoiceButton
              key={`${choice.speciesId}-${choice.formId}`}
              choice={choice}
              onPick={onPick}
            />
          ))}
        </ul>
        {results.length > shownCount ? (
          <LoadMoreTrigger label="Show more Pokémon" onLoadMore={onShowMore} />
        ) : null}
      </div>
    )}
  </div>
);
