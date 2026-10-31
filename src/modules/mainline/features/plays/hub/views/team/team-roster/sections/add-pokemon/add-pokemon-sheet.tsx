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

import {
  checkPokemonRules,
  emptyRuleCheckContext,
  type RuleCheckContext,
  type RuleCheckPokemon,
} from "@/modules/mainline/features/plays/hub/views/team/team-roster/data/rule-checks";
import { pokemonSheetHead } from "@/modules/mainline/shared/components/pokemon-sheet-head";
import {
  gameMechanics,
  supportsGameMechanic,
  type GameMechanicsProfile,
} from "@/modules/reference/features/games/domain/game-mechanics";
import { OverlaySheet } from "@/shared/components/overlay-sheet";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { SearchControl } from "@/shared/components/search-control";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

import { addMainlinePlayPokemonAction } from "../../server/add-team-member-action";
import { loadPokemonBuildOptionsAction } from "../../server/pokemon-build-options-action";
import { loadMainlinePlayPokemonChoicesAction } from "../../server/pokemon-choices-action";
import {
  removeMainlinePlayPokemonAction,
  replaceMainlinePlayPokemonAction,
} from "../../server/team-member-mutation-actions";
import {
  filterPokemonChoices,
  formatPokemonChoiceNumber,
  getPokemonChoiceTypes,
  type PokemonChoice,
} from "../../utils/pokemon-choices";
import {
  AddPokemonChoiceStep,
  type AddPokemonLoadState,
} from "./add-pokemon-choice-step";
import {
  AddPokemonDetailsStep,
  type AddPokemonPlacement,
} from "./add-pokemon-details-step";
import {
  AddPokemonMoreStep,
  emptyAddPokemonBuild,
  hasAddPokemonBuild,
  type AddPokemonBuild,
  type AddPokemonBuildState,
} from "./add-pokemon-more-step";

/*
 * A Pokémon to pick as the Play's rule checks read it; its shininess isn't
 * known yet, and its nickname and level only once they're typed.
 */
const toChoiceRuleCheck = (
  choice: PokemonChoice,
  { level, nickname }: { level: number | null; nickname: string | null },
): RuleCheckPokemon => ({
  formId: choice.formId,
  isShiny: null,
  /* Only a level the save would take: a whole number from 1 to 100. */
  level:
    level !== null && Number.isInteger(level) && level >= 1 && level <= 100
      ? level
      : null,
  name: choice.speciesName,
  nickname,
  speciesId: choice.speciesId,
  typeIds: getPokemonChoiceTypes(choice).map((type) => type.id),
});

export type AddPokemonPreset = {
  formSlug: string | null;
  speciesSlug: string;
};

/* Adding to the roster, or choosing who replaces one of your Pokémon. */
export type AddPokemonMode =
  | { kind: "add" }
  | { kind: "replace"; name: string; playPokemonId: string };

/* The list grows as you scroll, so a whole Pokédex opens at once. */
const choiceBatchSize = 48;

/* A More details pick as the add action takes it; null when not recorded. */
const toBuildId = (value: string, supported: boolean) =>
  supported && value ? Number(value) : null;

/*
 * Add Pokémon (v3 `addMonSheet`): first which Pokémon, from the whole of the
 * Play's Pokédex in order or searched by name or number, then its nickname,
 * level and where it goes, and, if you like, More details: its nature,
 * ability, held item and moves, which load while step 2 is open. A bottom
 * sheet on phones, v3's side sheet wider. Once added, the toast offers Undo.
 * It also picks who replaces a Pokémon, from the editor.
 */
export const AddPokemonSheet = ({
  mechanics,
  mode = { kind: "add" },
  onAdded,
  onOpenChange,
  open,
  playId,
  preset = null,
  reserveCount,
  ruleChecks = emptyRuleCheckContext,
  teamCount,
}: {
  /* The Play's game: More details offers only what it records. */
  mechanics: GameMechanicsProfile;
  mode?: AddPokemonMode;
  /* The new Pokémon, so the Roster can select it. */
  onAdded?: (playPokemonId: string) => void;
  onOpenChange: (open: boolean) => void;
  open: boolean;
  playId: string;
  preset?: AddPokemonPreset | null;
  reserveCount: number;
  /* What the Play's rules check, to warn about a pick before it's added. */
  ruleChecks?: RuleCheckContext;
  teamCount: number;
}) => {
  const router = useRouter();
  const id = useId();
  const [loadState, setLoadState] = useState<AddPokemonLoadState>({
    status: "idle",
  });
  const [presetMissing, setPresetMissing] = useState(false);
  const [query, setQuery] = useState("");
  const [shownCount, setShownCount] = useState(choiceBatchSize);
  const [rulesOnly, setRulesOnly] = useState(false);
  const [picked, setPicked] = useState<PokemonChoice | null>(null);
  const [nickname, setNickname] = useState("");
  const [level, setLevel] = useState("");
  const [detailsOpen, setDetailsOpen] = useState(false);
  const [build, setBuild] = useState<AddPokemonBuild>(emptyAddPokemonBuild);
  const [buildState, setBuildState] = useState<AddPokemonBuildState | null>(
    null,
  );
  const teamIsFull = teamCount >= 6;
  const reserveIsFull = reserveCount >= 6;
  const [placement, setPlacement] = useState<AddPokemonPlacement>(
    teamIsFull ? "reserve" : "team",
  );
  const [error, setError] = useState<string | null>(null);
  const [isSaving, startSaving] = useTransition();
  const isReplace = mode.kind === "replace";
  const rosterIsFull = !isReplace && teamIsFull && reserveIsFull;
  const supports = {
    abilities: supportsGameMechanic(mechanics, gameMechanics.abilities),
    heldItems: supportsGameMechanic(mechanics, gameMechanics.heldItems),
    natures: supportsGameMechanic(mechanics, gameMechanics.natures),
  };
  const pickedFormId = picked?.formId ?? null;

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

  /* More details' choices load once a Pokémon is picked to add. */
  useEffect(() => {
    if (!open || isReplace || pickedFormId === null) {
      return;
    }

    let isCurrent = true;

    void loadPokemonBuildOptionsAction({ formId: pickedFormId, playId }).then(
      (result) => {
        if (!isCurrent) {
          return;
        }

        setBuildState(
          result.status === "error"
            ? { formId: pickedFormId, message: result.message, status: "error" }
            : {
                formId: pickedFormId,
                options: result.options,
                status: "ready",
              },
        );
      },
    );

    return () => {
      isCurrent = false;
    };
  }, [isReplace, open, pickedFormId, playId]);

  /* Another Pokémon, or another of its patterns, starts its details over. */
  const pick = (choice: PokemonChoice | null) => {
    setPicked(choice);
    setBuild(emptyAddPokemonBuild);
    setDetailsOpen(false);
  };

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
    pick(null);
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

  /* Undo takes the Pokémon off again with its "added" moment, together. */
  const undoAdd = (playPokemonId: string) => {
    void removeMainlinePlayPokemonAction({
      playId,
      playPokemonId,
      undoAdd: true,
    }).then((result) => {
      if (result.status === "error") {
        toast.error(result.message);
        return;
      }

      toast.success("Taken off again");
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
        abilityId: toBuildId(build.abilityId, supports.abilities),
        formId: picked.formId,
        heldItemId: toBuildId(build.heldItemId, supports.heldItems),
        level: parsedLevel,
        moveIds: build.moveIds.filter(Boolean).map(Number),
        natureId: toBuildId(build.natureId, supports.natures),
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
            onClick: () => undoAdd(playPokemonId),
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
  const step = picked ? (detailsOpen ? 3 : 2) : 1;

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

  /*
   * The rules a Pokémon would break as it stands. Its nickname and level are
   * chosen in the next step, so Nickname everything and Level caps wait for
   * them.
   */
  const getBrokenRules = (choice: PokemonChoice) =>
    checkPokemonRules(
      toChoiceRuleCheck(choice, { level: null, nickname: null }),
      ruleChecks,
    )
      .filter((warning) => warning.ruleKind !== "nickname_everything")
      .map((warning) => warning.ruleName);

  const stepOne = (
    <AddPokemonChoiceStep
      getBrokenRules={getBrokenRules}
      rulesOnly={rulesOnly}
      onRulesOnlyChange={setRulesOnly}
      loadState={loadState}
      onPick={pick}
      onRetry={() => setLoadState({ status: "idle" })}
      onShowMore={showMore}
      pokedexName={pokedexName}
      presetMissing={presetMissing}
      query={query}
      results={results}
      shownCount={shownCount}
    />
  );

  const warnings = picked
    ? checkPokemonRules(
        toChoiceRuleCheck(picked, {
          level: parsedLevel,
          nickname: nickname.trim() || null,
        }),
        ruleChecks,
      ).map((warning) => ({ ...warning, key: warning.ruleId }))
    : [];

  const stepTwo = picked ? (
    <AddPokemonDetailsStep
      error={error}
      id={id}
      level={level}
      moreDetails={
        isReplace
          ? null
          : {
              onOpen: () => setDetailsOpen(true),
              picked: hasAddPokemonBuild(build),
            }
      }
      nickname={nickname}
      onLevelChange={setLevel}
      onNicknameChange={setNickname}
      onPatternChange={(pattern) =>
        pick({ ...pattern, patterns: picked.patterns })
      }
      onPlacementChange={setPlacement}
      onSubmit={save}
      picked={picked}
      placement={placement}
      replacesName={isReplace ? mode.name : null}
      reserveIsFull={reserveIsFull}
      teamCount={teamCount}
      warnings={warnings}
    />
  ) : null;

  const stepThree = (
    <AddPokemonMoreStep
      build={build}
      error={error}
      id={id}
      onBuildChange={setBuild}
      onSubmit={save}
      state={buildState?.formId === pickedFormId ? buildState : null}
      supports={supports}
    />
  );

  return (
    <OverlaySheet
      open={open}
      onOpenChange={changeOpen}
      description={isReplace ? `Replace ${mode.name}` : undefined}
      title={step === 1 ? "Which Pokémon?" : (picked?.speciesName ?? "")}
      toolbar={step === 1 ? searchControl : undefined}
      headBleed={Boolean(picked)}
      meta={
        picked ? (
          <div className="grid gap-2">
            <p className="text-ink-2 text-14 font-semibold tabular-nums">
              {[formatPokemonChoiceNumber(picked.number), picked.formName]
                .filter(Boolean)
                .join(" · ")}
            </p>
            <PokemonTypeList
              types={getPokemonChoiceTypes(picked)}
              badgeDisplay="icon-label"
              badgeSize="sm"
              className="flex gap-1.5"
            />
          </div>
        ) : undefined
      }
      head={
        picked
          ? pokemonSheetHead({
              imageUrl: picked.imageUrl,
              name: picked.speciesName,
              type:
                picked.primaryType && isPokemonTypeSlug(picked.primaryType.slug)
                  ? picked.primaryType.slug
                  : null,
            })
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
              variant="secondary"
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
              variant="secondary"
              size="sm"
              disabled={isSaving}
              onClick={() => {
                if (step === 3) {
                  setDetailsOpen(false);
                } else {
                  pick(null);
                }

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
      {step === 1 ? stepOne : step === 2 ? stepTwo : stepThree}
    </OverlaySheet>
  );
};
