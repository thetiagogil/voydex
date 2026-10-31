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
import { OverlaySheet } from "@/shared/components/overlay-sheet";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { SearchControl } from "@/shared/components/search-control";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

import { addMainlinePlayPokemonAction } from "../../server/add-team-member-action";
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
  ruleChecks = emptyRuleCheckContext,
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
  const teamIsFull = teamCount >= 6;
  const reserveIsFull = reserveCount >= 6;
  const [placement, setPlacement] = useState<AddPokemonPlacement>(
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
      onPick={setPicked}
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
      nickname={nickname}
      onLevelChange={setLevel}
      onNicknameChange={setNickname}
      onPatternChange={(pattern) =>
        setPicked({ ...pattern, patterns: picked.patterns })
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

  return (
    <OverlaySheet
      open={open}
      onOpenChange={changeOpen}
      description={`${isReplace ? `Replace ${mode.name}` : "Add"} · ${playLabel}`}
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
    </OverlaySheet>
  );
};
