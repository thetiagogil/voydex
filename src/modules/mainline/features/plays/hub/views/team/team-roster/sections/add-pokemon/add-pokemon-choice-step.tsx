import { useId } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  Alert,
  AlertDescription,
  AlertTitle,
} from "@/shared/components/ui/alert";
import { cn } from "@/shared/utils/cn";
import { PokemonCard } from "@/modules/reference/features/pokemon/components/pokemon-card";
import { formatShortFormName } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";
import { EmptyState } from "@/shared/components/empty-state";
import { LoadMoreTrigger } from "@/shared/components/load-more-trigger";
import { PendingData } from "@/shared/components/pending-data";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";
import { Switch } from "@/shared/components/ui/switch";

import {
  formatPokemonChoiceNumber,
  getPokemonChoiceTypes,
  type PokemonChoice,
} from "../../utils/pokemon-choices";
import { IconTip } from "@/shared/components/icon-tip";

export type AddPokemonLoadState =
  | { status: "idle" }
  | { message: string; status: "error" }
  | {
      choices: PokemonChoice[];
      pokedexName: string | null;
      status: "ready";
    };

/*
 * One Pokémon to pick: the plain card, as a button. One that breaks the
 * Play's rules is faded, and says which; it can still be picked.
 */
const ChoiceButton = ({
  brokenRules,
  choice,
  onPick,
}: {
  brokenRules: string[];
  choice: PokemonChoice;
  onPick: (choice: PokemonChoice) => void;
}) => (
  <li className="min-w-0">
    <IconTip
      label={
        brokenRules.length
          ? `Breaks this Play's rules: ${brokenRules.join(", ")}`
          : undefined
      }
      trigger={
        <button
          type="button"
          onClick={() => onPick(choice)}
          aria-label={[
            choice.speciesName,
            choice.formName,
            formatPokemonChoiceNumber(choice.number),
            brokenRules.length
              ? `breaks this Play's rules: ${brokenRules.join(", ")}`
              : null,
          ]
            .filter(Boolean)
            .join(", ")}
          className={cn(
            "focus-ring block w-full rounded-lg outline-offset-2",
            brokenRules.length &&
              "opacity-40 transition-opacity hover:opacity-70 focus-visible:opacity-100",
          )}
        >
          <PokemonCard
            state="plain"
            size="sm"
            imageAlt=""
            imageUrl={choice.imageUrl}
            name={choice.speciesName}
            number={formatPokemonChoiceNumber(choice.number)}
            subtitle={
              choice.formName
                ? formatShortFormName(choice.formName, choice.speciesName)
                : null
            }
            types={getPokemonChoiceTypes(choice)}
          />
        </button>
      }
    />
  </li>
);

/*
 * Step 1, which Pokémon: the whole of the Play's Pokédex in order, or what
 * the search finds, drawn in batches as you scroll. When some break the
 * Play's rules, a note says the faded ones do, with a switch to show only
 * the ones that follow them.
 */
export const AddPokemonChoiceStep = ({
  getBrokenRules,
  loadState,
  onPick,
  onRetry,
  onShowMore,
  pokedexName,
  presetMissing,
  query,
  results,
  rulesOnly,
  onRulesOnlyChange,
  shownCount,
}: {
  /* The Play's rules a Pokémon would break, by name; none to fade it. */
  getBrokenRules: (choice: PokemonChoice) => string[];
  /* Shows only the Pokémon that follow the Play's rules. */
  rulesOnly: boolean;
  onRulesOnlyChange: (rulesOnly: boolean) => void;
  loadState: AddPokemonLoadState;
  onPick: (choice: PokemonChoice) => void;
  onRetry: () => void;
  onShowMore: () => void;
  pokedexName: string;
  presetMissing: boolean;
  query: string;
  results: PokemonChoice[];
  shownCount: number;
}) => {
  const switchId = useId();
  const checked = results.map((choice) => ({
    brokenRules: getBrokenRules(choice),
    choice,
  }));
  const someBreak = checked.some((item) => item.brokenRules.length);
  const listed = rulesOnly
    ? checked.filter((item) => !item.brokenRules.length)
    : checked;
  const shown = listed.slice(0, shownCount);

  return (
    <div className="grid gap-4">
      {presetMissing ? (
        <p role="status" className="text-ink-2 text-14 font-semibold">
          That Pokémon isn&apos;t in this Play&apos;s Pokédex. Search for
          another.
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
          {someBreak ? (
            <Alert role="status" variant="warning">
              <AppIcon icon={appIcons.status.warning} />
              <AlertTitle>
                Faded Pokémon break this Play&apos;s rules
              </AlertTitle>
              <AlertDescription className="mt-1.5 flex items-center justify-between gap-3">
                <label htmlFor={switchId}>
                  Only show the ones that follow them
                </label>
                <Switch
                  id={switchId}
                  checked={rulesOnly}
                  onCheckedChange={onRulesOnlyChange}
                />
              </AlertDescription>
            </Alert>
          ) : null}
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
          {listed.length ? null : (
            <EmptyState
              variant="bare"
              title="None of these follow this Play's rules."
            />
          )}
          <ul className="grid grid-cols-3 gap-2.5 sm:grid-cols-4">
            {shown.map(({ brokenRules, choice }) => (
              <ChoiceButton
                key={`${choice.speciesId}-${choice.formId}`}
                brokenRules={brokenRules}
                choice={choice}
                onPick={onPick}
              />
            ))}
          </ul>
          {listed.length > shownCount ? (
            <LoadMoreTrigger
              label="Show more Pokémon"
              onLoadMore={onShowMore}
            />
          ) : null}
        </div>
      )}
    </div>
  );
};
