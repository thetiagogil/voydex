"use client";

import {
  useCallback,
  useEffect,
  useId,
  useRef,
  useState,
  useTransition,
} from "react";
import { useRouter } from "next/navigation";
import { toast } from "sonner";

import { PlayFormOverlay } from "@/modules/mainline/features/plays/hub/components/play-form-overlay";
import { PokemonCard } from "@/modules/reference/features/pokemon/components/pokemon-card";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { EmptyState } from "@/shared/components/empty-state";
import { LoadMoreTrigger } from "@/shared/components/load-more-trigger";
import { PendingData } from "@/shared/components/pending-data";
import { SearchControl } from "@/shared/components/search-control";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { Button } from "@/shared/components/ui/button";
import { Field, FieldError, FieldLabel } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";
import { Spinner } from "@/shared/components/ui/spinner";

import { addMainlinePlayPokemonAction } from "../../server/add-team-member-action";
import { loadMainlinePlayPokemonChoicesAction } from "../../server/pokemon-choices-action";
import {
  removeMainlinePlayPokemonAction,
  replaceMainlinePlayPokemonAction,
} from "../../server/team-member-mutation-actions";
import {
  filterPokemonChoices,
  type PokemonChoice,
} from "../../utils/pokemon-choices";

export type AddPokemonPreset = {
  formSlug: string | null;
  speciesSlug: string;
};

/* Adding to the roster, or choosing who replaces one of your Pokémon. */
export type AddPokemonMode =
  | { kind: "add" }
  | { kind: "replace"; name: string; playPokemonId: string };

type LoadState =
  | { status: "idle" }
  | { message: string; status: "error" }
  | {
      choices: PokemonChoice[];
      pokedexName: string | null;
      status: "ready";
    };

/* The list grows as you scroll, so a whole Pokédex opens at once. */
const choiceBatchSize = 48;

const getChoiceTypes = (choice: PokemonChoice) =>
  [choice.primaryType, choice.secondaryType].filter((type) => type !== null);

const formatNumber = (number: number) => `#${String(number).padStart(3, "0")}`;

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
      aria-label={`${choice.speciesName}${choice.formName ? `, ${choice.formName}` : ""}, ${formatNumber(choice.number)}`}
      className="focus-visible:outline-focus block w-full rounded-lg outline-offset-2 focus-visible:outline-3 focus-visible:outline-solid"
    >
      <PokemonCard
        state="plain"
        size="sm"
        imageAlt=""
        imageUrl={choice.imageUrl}
        name={choice.speciesName}
        number={formatNumber(choice.number)}
        subtitle={choice.formName}
        types={getChoiceTypes(choice)}
      />
    </button>
  </li>
);

/*
 * Add Pokémon (v3 `addMonSheet`): first which Pokémon, from the whole of the
 * Play's Pokédex in order or searched by name or number, then its nickname, level and where it goes.
 * A bottom sheet on phones, v3's side sheet wider. Once added, the toast
 * offers Undo. It also picks who replaces a Pokémon, from the editor.
 */
export const AddPokemonSheet = ({
  mode = { kind: "add" },
  onAdded,
  onOpenChange,
  open,
  playId,
  playLabel,
  preset = null,
  reserveCount,
  teamCount,
}: {
  mode?: AddPokemonMode;
  /* The new Pokémon, so the Roster can select it. */
  onAdded?: (playPokemonId: string) => void;
  onOpenChange: (open: boolean) => void;
  open: boolean;
  playId: string;
  /* The kicker, such as "Sword". */
  playLabel: string;
  preset?: AddPokemonPreset | null;
  reserveCount: number;
  teamCount: number;
}) => {
  const router = useRouter();
  const id = useId();
  const [loadState, setLoadState] = useState<LoadState>({ status: "idle" });
  const [presetMissing, setPresetMissing] = useState(false);
  const [query, setQuery] = useState("");
  const [shownCount, setShownCount] = useState(choiceBatchSize);
  const [picked, setPicked] = useState<PokemonChoice | null>(null);
  const [nickname, setNickname] = useState("");
  const [level, setLevel] = useState("");
  const teamIsFull = teamCount >= 6;
  const reserveIsFull = reserveCount >= 6;
  const [placement, setPlacement] = useState<"reserve" | "team">(
    teamIsFull ? "reserve" : "team",
  );
  const [error, setError] = useState<string | null>(null);
  const [isSaving, startSaving] = useTransition();
  const isReplace = mode.kind === "replace";
  const rosterIsFull = !isReplace && teamIsFull && reserveIsFull;

  /* The choices load once, the first time the sheet opens. */
  const isLoadingRef = useRef(false);

  useEffect(() => {
    if (!open || loadState.status !== "idle" || isLoadingRef.current) {
      return;
    }

    isLoadingRef.current = true;
    void loadMainlinePlayPokemonChoicesAction({
      formSlug: preset?.formSlug ?? null,
      playId,
      speciesSlug: preset?.speciesSlug ?? null,
    }).then((result) => {
      isLoadingRef.current = false;

      if (result.status === "error") {
        setLoadState({ message: result.message, status: "error" });
        return;
      }

      setLoadState({
        choices: result.choices,
        pokedexName: result.pokedexName,
        status: "ready",
      });

      if (preset) {
        if (result.preset) {
          setPicked(result.preset);
        } else {
          setPresetMissing(true);
        }
      }
    });
  }, [loadState.status, open, playId, preset]);

  const search = (nextQuery: string) => {
    setQuery(nextQuery);
    setShownCount(choiceBatchSize);
  };

  const showMore = useCallback(
    () => setShownCount((count) => count + choiceBatchSize),
    [],
  );

  const reset = () => {
    search("");
    setPicked(null);
    setNickname("");
    setLevel("");
    setError(null);
    setPresetMissing(false);
    setPlacement(teamIsFull ? "reserve" : "team");
  };

  const changeOpen = (nextOpen: boolean) => {
    if (isSaving) {
      return;
    }

    onOpenChange(nextOpen);

    if (!nextOpen) {
      reset();
    }
  };

  const parsedLevel = level.trim() ? Number(level) : null;

  const undoAdd = (playPokemonId: string, eventId: string | null) => {
    void removeMainlinePlayPokemonAction({
      addEventId: eventId,
      playId,
      playPokemonId,
    }).then((result) => {
      if (result.status === "error") {
        toast.error(result.message);
        return;
      }

      if (result.warning) {
        toast.warning(result.warning);
      } else {
        toast.success("Taken off again");
      }

      router.refresh();
    });
  };

  const save = () => {
    if (!picked) {
      return;
    }

    startSaving(async () => {
      const name = nickname.trim() || picked.speciesName;

      if (mode.kind === "replace") {
        const result = await replaceMainlinePlayPokemonAction({
          level: parsedLevel,
          nickname: nickname.trim() || null,
          playId,
          playPokemonId: mode.playPokemonId,
          replacementFormId: picked.formId,
          replacementSpeciesId: picked.speciesId,
        });

        if (result.status === "error") {
          setError(result.message);
          return;
        }

        onOpenChange(false);
        reset();
        toast.success(`${name} replaced ${mode.name}`);
        router.refresh();
        return;
      }

      const result = await addMainlinePlayPokemonAction({
        formId: picked.formId,
        level: parsedLevel,
        nickname: nickname.trim() || null,
        placement,
        playId,
        speciesId: picked.speciesId,
      });

      if (result.status === "error") {
        setError(result.message);
        return;
      }

      onOpenChange(false);
      reset();

      if (result.playPokemonId) {
        const playPokemonId = result.playPokemonId;
        onAdded?.(playPokemonId);
        toast.success(`${name} added · ${result.message}`, {
          action: {
            label: "Undo",
            onClick: () => undoAdd(playPokemonId, result.eventId ?? null),
          },
        });
      }

      router.refresh();
    });
  };

  const choices = loadState.status === "ready" ? loadState.choices : [];
  const pokedexName =
    loadState.status === "ready" ? (loadState.pokedexName ?? "Pokédex") : "";
  const results = query.trim() ? filterPokemonChoices(choices, query) : choices;
  const step = picked ? 2 : 1;

  const searchControl = (
    <SearchControl
      id={`${id}-search`}
      ariaLabel="Search Pokémon"
      value={query}
      onValueChange={search}
      placeholder={
        pokedexName
          ? `Search by name or ${pokedexName} number`
          : "Search by name or number"
      }
      autoComplete="off"
    />
  );

  const stepOne = (
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
            <Button
              type="button"
              variant="outline"
              onClick={() => setLoadState({ status: "idle" })}
            >
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
                onPick={setPicked}
              />
            ))}
          </ul>
          {results.length > shownCount ? (
            <LoadMoreTrigger label="Show more Pokémon" onLoadMore={showMore} />
          ) : null}
        </div>
      )}
    </div>
  );

  const stepTwo = picked ? (
    <form
      id={`${id}-form`}
      className="grid gap-5"
      onSubmit={(event) => {
        event.preventDefault();
        save();
      }}
    >
      <div className="grid gap-4 sm:grid-cols-[minmax(0,1fr)_120px]">
        <Field>
          <FieldLabel htmlFor={`${id}-nickname`}>Nickname</FieldLabel>
          <Input
            id={`${id}-nickname`}
            maxLength={100}
            autoComplete="off"
            placeholder={picked.speciesName}
            value={nickname}
            onChange={(event) => setNickname(event.target.value)}
          />
        </Field>
        <Field>
          <FieldLabel htmlFor={`${id}-level`}>Level</FieldLabel>
          <Input
            id={`${id}-level`}
            type="number"
            inputMode="numeric"
            min={1}
            max={100}
            placeholder="Not recorded"
            value={level}
            onChange={(event) => setLevel(event.target.value)}
          />
        </Field>
      </div>
      {isReplace ? (
        <p className="text-ink-2 text-14 font-semibold">
          It takes {mode.name}&apos;s place, and {mode.name} is kept in History.
        </p>
      ) : (
        <div className="border-line flex flex-col gap-3 border-t pt-4 sm:flex-row sm:items-center sm:justify-between">
          <div className="grid gap-0.5">
            <p id={`${id}-where`} className="text-15 font-extrabold">
              Where it goes
            </p>
            <p className="text-ink-2 text-13 font-semibold">
              {rosterIsFull
                ? "Your team and reserve are both full"
                : teamIsFull
                  ? "Your team is full, so it joins the reserve"
                  : `The team has ${6 - teamCount} open ${6 - teamCount === 1 ? "slot" : "slots"}`}
            </p>
          </div>
          <SegmentedControl
            ariaLabel="Where it goes"
            variant="segment"
            value={placement}
            onValueChange={setPlacement}
            options={[
              {
                disabled: teamIsFull,
                disabledReason: teamIsFull ? "Your team is full" : undefined,
                label: "Team",
                value: "team",
              },
              {
                disabled: reserveIsFull,
                disabledReason: reserveIsFull
                  ? "The reserve is full"
                  : undefined,
                label: "Reserve",
                value: "reserve",
              },
            ]}
          />
        </div>
      )}
      <p className="text-ink-3 text-13 font-semibold">
        Nature, ability and moves can be added from Edit once it&apos;s on your
        team.
      </p>
      {error ? <FieldError>{error}</FieldError> : null}
    </form>
  ) : null;

  return (
    <PlayFormOverlay
      open={open}
      onOpenChange={changeOpen}
      presentation="side"
      kicker={`${isReplace ? `Replace ${mode.name}` : "Add"} · ${playLabel}`}
      title={step === 1 ? "Which Pokémon?" : (picked?.speciesName ?? "")}
      toolbar={step === 1 ? searchControl : undefined}
      hero={
        picked
          ? {
              imageUrl: picked.imageUrl,
              meta: (
                <div className="grid gap-2">
                  <p className="text-ink-2 text-14 font-semibold tabular-nums">
                    {[formatNumber(picked.number), picked.formName]
                      .filter(Boolean)
                      .join(" · ")}
                  </p>
                  <PokemonTypeList
                    types={getChoiceTypes(picked)}
                    badgeDisplay="icon-label"
                    badgeSize="sm"
                    className="flex gap-1.5"
                  />
                </div>
              ),
              type:
                picked.primaryType && isPokemonTypeSlug(picked.primaryType.slug)
                  ? picked.primaryType.slug
                  : null,
            }
          : undefined
      }
      footer={
        step === 1 ? (
          <>
            <span className="text-ink-3 text-13 mr-auto font-bold">
              Step 1 of 2
            </span>
            <Button
              type="button"
              variant="outline"
              size="sm"
              onClick={() => changeOpen(false)}
            >
              Cancel
            </Button>
          </>
        ) : (
          <>
            <Button
              type="button"
              variant="outline"
              size="sm"
              disabled={isSaving}
              onClick={() => {
                setPicked(null);
                setError(null);
              }}
            >
              Back
            </Button>
            <Button
              type="submit"
              size="sm"
              form={`${id}-form`}
              disabled={isSaving || rosterIsFull}
              aria-busy={isSaving}
            >
              {isSaving ? (
                <Spinner data-icon="inline-start" />
              ) : (
                <AppIcon icon={appIcons.actions.create} inline="start" />
              )}
              {isReplace
                ? `Replace with ${picked?.speciesName ?? ""}`
                : `Add ${picked?.speciesName ?? ""}`}
            </Button>
          </>
        )
      }
    >
      {step === 1 ? stepOne : stepTwo}
    </PlayFormOverlay>
  );
};
