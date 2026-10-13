"use client";

import {
  useEffect,
  useId,
  useState,
  useTransition,
  type ReactNode,
} from "react";
import { useRouter } from "next/navigation";
import { toast } from "sonner";

import { PlayFormOverlay } from "@/modules/mainline/features/plays/hub/components/play-form-overlay";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import {
  getPlayTeamMemberImageUrl,
  getPlayTeamMemberName,
} from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import {
  gameMechanics,
  supportsGameMechanic,
  type GameMechanicsProfile,
} from "@/modules/reference/features/games/domain/game-mechanics";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { EmptyState } from "@/shared/components/empty-state";
import { PendingData } from "@/shared/components/pending-data";
import { SearchSelect } from "@/shared/components/search-select";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SelectControl } from "@/shared/components/select-control";
import { Button } from "@/shared/components/ui/button";
import { Field, FieldError, FieldLabel } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";
import { Spinner } from "@/shared/components/ui/spinner";
import { Switch } from "@/shared/components/ui/switch";
import { Textarea } from "@/shared/components/ui/textarea";

import { loadTeamMemberEditorOptionsAction } from "../../server/team-member-editor-options-action";
import { updateMainlinePlayPokemonAction } from "../../server/team-member-mutation-actions";
import {
  getTeamMemberEditorChanges,
  getTeamMemberEditorValues,
  toUpdateTeamMemberInput,
  type TeamMemberEditorField,
  type TeamMemberEditorOptions,
  type TeamMemberEditorValues,
} from "../../utils/team-member-editor-model";
import { TeamMemberEditorActions } from "./team-member-editor-actions";

type OptionsState =
  | { status: "loading" }
  | { message: string; status: "error" }
  | { options: TeamMemberEditorOptions; status: "ready" };

const noneValue = "none";

const genderOptions = [
  { label: "Male", value: "male" },
  { label: "Female", value: "female" },
  { label: "Genderless", value: "genderless" },
  { label: "Not recorded", value: "unknown" },
] as const;

/* v3 `.step`: one part of the editor under its Fredoka heading. */
const EditorStep = ({
  aside,
  children,
  title,
}: {
  aside?: ReactNode;
  children: ReactNode;
  title: string;
}) => (
  <section className="border-line grid gap-4 border-t pt-5 first:border-t-0 first:pt-0">
    <div className="flex items-baseline gap-3">
      <h3 className="text-20">{title}</h3>
      {aside ? (
        <span className="text-ink-3 text-13 font-semibold">{aside}</span>
      ) : null}
    </div>
    {children}
  </section>
);

/* A field's label, saying "Edited" (not with colour) once it changed. */
const EditorLabel = ({
  children,
  edited,
  htmlFor,
}: {
  children: ReactNode;
  edited: boolean;
  htmlFor?: string;
}) => (
  <FieldLabel htmlFor={htmlFor}>
    {children}
    {edited ? <span className="text-game-deep">· Edited</span> : null}
  </FieldLabel>
);

const toSelectOptions = (options: { id: number; name: string }[]) => [
  { label: "Not recorded", value: noneValue },
  ...options.map((option) => ({
    label: option.name,
    value: String(option.id),
  })),
];

/*
 * Edit Pokémon (v3 `editor`): a side sheet over the Roster (a bottom sheet
 * on phones). Who, Where, Build and Met, then Review changes before Save.
 * Only what the Play's game records is offered. Evolve, Change form, Replace
 * and Retire act straight away from the head; Delete record is for mistakes.
 */
export const TeamMemberEditorSheet = ({
  mechanics,
  member,
  onOpenChange,
  onReplace,
  open,
  playId,
}: {
  mechanics: GameMechanicsProfile;
  member: MainlinePlayTeamMember;
  onOpenChange: (open: boolean) => void;
  /* Opens the species picker to choose who takes its place. */
  onReplace: () => void;
  open: boolean;
  playId: string;
}) => {
  const router = useRouter();
  const id = useId();
  const initial = getTeamMemberEditorValues(member);
  const [values, setValues] = useState(initial);
  const [optionsState, setOptionsState] = useState<OptionsState>({
    status: "loading",
  });
  const [isReviewing, setIsReviewing] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [isSaving, startSaving] = useTransition();
  const playPokemonId = member.play_pokemon_id ?? "";
  const name = getPlayTeamMemberName(member);
  const options = optionsState.status === "ready" ? optionsState.options : null;
  const supports = {
    abilities: supportsGameMechanic(mechanics, gameMechanics.abilities),
    gender: supportsGameMechanic(mechanics, gameMechanics.pokemonGender),
    heldItems: supportsGameMechanic(mechanics, gameMechanics.heldItems),
    natures: supportsGameMechanic(mechanics, gameMechanics.natures),
  };

  useEffect(() => {
    if (!open || !playPokemonId) {
      return;
    }

    let isCurrent = true;

    void loadTeamMemberEditorOptionsAction({ playId, playPokemonId }).then(
      (result) => {
        if (!isCurrent) {
          return;
        }

        setOptionsState(
          result.status === "error"
            ? { message: result.message, status: "error" }
            : { options: result.options, status: "ready" },
        );
      },
    );

    return () => {
      isCurrent = false;
    };
  }, [open, playId, playPokemonId]);

  const nameOf = (field: TeamMemberEditorField, value: string) => {
    const lists: Partial<
      Record<TeamMemberEditorField, { id: number; name: string }[]>
    > = {
      abilityId: options?.abilities,
      ballItemId: options?.balls,
      heldItemId: options?.heldItems,
      moveIds: [
        ...(options?.moves ?? []),
        ...member.moves.map((move) => ({ id: move.id, name: move.name })),
      ],
      natureId: options?.natures,
    };
    const fromMember: Partial<Record<TeamMemberEditorField, string | null>> = {
      abilityId: member.ability_name,
      ballItemId: member.ball_item_name,
      heldItemId: member.held_item_name,
      natureId: member.nature_name,
    };

    return (
      lists[field]?.find((option) => String(option.id) === value)?.name ??
      (value === initial[field] ? fromMember[field] : null) ??
      value
    );
  };

  const changes = getTeamMemberEditorChanges(initial, values, nameOf);
  const edited = (field: TeamMemberEditorField) =>
    changes.some((change) => change.field === field);

  const change = <TField extends TeamMemberEditorField>(
    field: TField,
    value: TeamMemberEditorValues[TField],
  ) => {
    setValues((current) => ({ ...current, [field]: value }));
    setError(null);
  };

  const revert = (field: TeamMemberEditorField) => {
    setValues((current) => ({ ...current, [field]: initial[field] }));
  };

  const close = (nextOpen: boolean) => {
    if (isSaving) {
      return;
    }

    onOpenChange(nextOpen);

    if (!nextOpen) {
      setValues(initial);
      setIsReviewing(false);
      setError(null);
    }
  };

  const save = () => {
    startSaving(async () => {
      try {
        const result = await updateMainlinePlayPokemonAction({
          changes: toUpdateTeamMemberInput(values, supports),
          playId,
          playPokemonId,
        });

        if (result.status === "error") {
          setError(result.message);
          return;
        }

        onOpenChange(false);
        setIsReviewing(false);
        toast.success(`${values.nickname.trim() || member.species_name} saved`);
        router.refresh();
      } catch (saveError) {
        setError(
          saveError instanceof Error
            ? saveError.message
            : "Unable to save those changes.",
        );
      }
    });
  };

  const selectValue = (value: string) => value || noneValue;
  const fromSelect = (value: string) => (value === noneValue ? "" : value);
  const moveOptions = [
    ...(options?.moves ?? []).map((move) => ({
      detail: [move.typeName, move.damageClass].filter(Boolean).join(" · "),
      label: move.name,
      value: String(move.id),
    })),
    /* Moves it knows that its learnset here doesn't list stay pickable. */
    ...member.moves
      .filter(
        (move) =>
          !(options?.moves ?? []).some((option) => option.id === move.id),
      )
      .map((move) => ({ label: move.name, value: String(move.id) })),
  ];
  const placeLabel =
    member.roster_state_slug === "active"
      ? `On the team · Slot ${member.slot ?? "?"}`
      : "In reserve";
  const primaryTypeSlug =
    member.primaryType && isPokemonTypeSlug(member.primaryType.slug)
      ? member.primaryType.slug
      : null;

  const details = (
    <form
      id={`${id}-form`}
      className="grid gap-6"
      onSubmit={(event) => {
        event.preventDefault();
        save();
      }}
    >
      <EditorStep title="Who">
        <div className="grid gap-4 sm:grid-cols-2">
          <Field>
            <FieldLabel>Species</FieldLabel>
            <p className="text-15 flex h-12 items-center font-extrabold">
              {member.species_name}
              {member.form_name && member.form_name !== member.species_name ? (
                <span className="text-ink-3 ml-2 font-semibold">
                  {member.form_name}
                </span>
              ) : null}
            </p>
          </Field>
          <Field>
            <EditorLabel htmlFor={`${id}-nickname`} edited={edited("nickname")}>
              Nickname
            </EditorLabel>
            <Input
              id={`${id}-nickname`}
              maxLength={100}
              autoComplete="off"
              placeholder={member.species_name ?? undefined}
              value={values.nickname}
              onChange={(event) => change("nickname", event.target.value)}
            />
          </Field>
          <Field>
            <EditorLabel htmlFor={`${id}-level`} edited={edited("level")}>
              Level
            </EditorLabel>
            <Input
              id={`${id}-level`}
              type="number"
              inputMode="numeric"
              min={1}
              max={100}
              placeholder="Not recorded"
              value={values.level}
              onChange={(event) => change("level", event.target.value)}
            />
          </Field>
          <Field
            orientation="horizontal"
            className="items-center gap-3 self-end pb-3"
          >
            <Switch
              id={`${id}-shiny`}
              checked={values.isShiny}
              onCheckedChange={(checked) => change("isShiny", checked)}
            />
            <EditorLabel htmlFor={`${id}-shiny`} edited={edited("isShiny")}>
              Shiny
            </EditorLabel>
          </Field>
        </div>
        {supports.gender ? (
          <Field>
            <EditorLabel edited={edited("gender")}>
              <span id={`${id}-gender`}>Gender</span>
            </EditorLabel>
            <SegmentedControl
              ariaLabel="Gender"
              value={values.gender}
              onValueChange={(value) => change("gender", value)}
              options={genderOptions}
            />
          </Field>
        ) : null}
      </EditorStep>

      <EditorStep title="Where" aside={placeLabel}>
        {/* TODO(v3-data): moving between the team and the reserve, or to another slot, needs an atomic roster-placement RPC (swaps break the per-slot unique index mid-update). */}
        <PendingData
          label="Moving it isn't in Voydex yet"
          note="Swapping slots or moving between team and reserve waits for a safe roster move."
        />
      </EditorStep>

      <EditorStep title="Build" aside="Optional">
        {options ? (
          <>
            <div className="grid gap-4 sm:grid-cols-2">
              {supports.natures ? (
                <Field>
                  <EditorLabel edited={edited("natureId")}>Nature</EditorLabel>
                  <SelectControl
                    ariaLabel="Nature"
                    placeholder="Not recorded"
                    value={selectValue(values.natureId)}
                    onValueChange={(value) =>
                      change("natureId", fromSelect(value))
                    }
                    options={[
                      { label: "Not recorded", value: noneValue },
                      ...options.natures.map((nature) => ({
                        description:
                          nature.increased && nature.decreased
                            ? `+${nature.increased} · −${nature.decreased}`
                            : undefined,
                        label: nature.name,
                        value: String(nature.id),
                      })),
                    ]}
                  />
                </Field>
              ) : null}
              {supports.abilities ? (
                <Field>
                  <EditorLabel edited={edited("abilityId")}>
                    Ability
                  </EditorLabel>
                  <SelectControl
                    ariaLabel="Ability"
                    placeholder="Not recorded"
                    value={selectValue(values.abilityId)}
                    onValueChange={(value) =>
                      change("abilityId", fromSelect(value))
                    }
                    options={toSelectOptions(options.abilities)}
                  />
                </Field>
              ) : null}
              {supports.heldItems ? (
                <Field>
                  <EditorLabel
                    htmlFor={`${id}-item`}
                    edited={edited("heldItemId")}
                  >
                    Held item
                  </EditorLabel>
                  <SearchSelect
                    id={`${id}-item`}
                    value={values.heldItemId || null}
                    onValueChange={(value) => change("heldItemId", value ?? "")}
                    options={options.heldItems.map((item) => ({
                      label: item.name,
                      value: String(item.id),
                    }))}
                  />
                </Field>
              ) : null}
              <Field>
                <EditorLabel edited={edited("ballItemId")}>
                  Poké Ball
                </EditorLabel>
                <SelectControl
                  ariaLabel="Poké Ball"
                  placeholder="Not recorded"
                  value={selectValue(values.ballItemId)}
                  onValueChange={(value) =>
                    change("ballItemId", fromSelect(value))
                  }
                  options={toSelectOptions(options.balls)}
                />
              </Field>
            </div>
            <fieldset className="grid gap-2.5">
              <legend className="text-14 mb-2 font-extrabold">
                Moves
                {edited("moveIds") ? (
                  <span className="text-game-deep"> · Edited</span>
                ) : null}
              </legend>
              <div className="grid gap-2.5 sm:grid-cols-2">
                {values.moveIds.map((moveId, index) => (
                  <SearchSelect
                    key={index}
                    ariaLabel={`Move ${index + 1}`}
                    placeholder={`Move ${index + 1}: empty`}
                    value={moveId || null}
                    onValueChange={(value) => {
                      const next = [
                        ...values.moveIds,
                      ] as TeamMemberEditorValues["moveIds"];
                      next[index] = value ?? "";
                      change("moveIds", next);
                    }}
                    options={moveOptions.filter(
                      (option) =>
                        option.value === moveId ||
                        !values.moveIds.includes(option.value),
                    )}
                  />
                ))}
              </div>
            </fieldset>
          </>
        ) : optionsState.status === "error" ? (
          <EmptyState variant="bare" title={optionsState.message} />
        ) : (
          <div className="grid place-items-center py-6">
            <Spinner
              aria-label="Loading what it can record"
              className="text-action"
            />
          </div>
        )}
      </EditorStep>

      <EditorStep title="Met" aside="Optional">
        <div className="grid gap-4 sm:grid-cols-[minmax(0,1fr)_120px]">
          <Field>
            <EditorLabel htmlFor={`${id}-met`} edited={edited("metLocation")}>
              Location
            </EditorLabel>
            <Input
              id={`${id}-met`}
              maxLength={200}
              placeholder="Not recorded"
              value={values.metLocation}
              onChange={(event) => change("metLocation", event.target.value)}
            />
          </Field>
          <Field>
            <EditorLabel
              htmlFor={`${id}-met-level`}
              edited={edited("metLevel")}
            >
              Level
            </EditorLabel>
            <Input
              id={`${id}-met-level`}
              type="number"
              inputMode="numeric"
              min={1}
              max={100}
              placeholder="Not recorded"
              value={values.metLevel}
              onChange={(event) => change("metLevel", event.target.value)}
            />
          </Field>
        </div>
        <Field>
          <EditorLabel htmlFor={`${id}-notes`} edited={edited("notes")}>
            Notes
          </EditorLabel>
          <Textarea
            id={`${id}-notes`}
            maxLength={5000}
            rows={3}
            value={values.notes}
            onChange={(event) => change("notes", event.target.value)}
          />
        </Field>
      </EditorStep>
    </form>
  );

  const review = (
    <section aria-labelledby={`${id}-review`} className="grid gap-4">
      <div className="grid gap-1">
        <h3 id={`${id}-review`} className="text-20">
          Review changes{" "}
          <span className="text-ink-3 tabular-nums">{changes.length}</span>
        </h3>
        <p className="text-ink-2 text-14 font-semibold">
          Nothing is saved until you press Save. Revert anything you didn&apos;t
          mean to change.
        </p>
      </div>
      {changes.length ? (
        <ul className="divide-line grid divide-y">
          {changes.map((item) => (
            <li key={item.field} className="grid gap-2 py-3.5">
              <div className="flex items-center justify-between gap-3">
                <b className="text-15 font-extrabold">{item.label}</b>
                <Button
                  type="button"
                  variant="ghost"
                  size="sm"
                  onClick={() => revert(item.field)}
                >
                  <AppIcon icon={appIcons.actions.retry} inline="start" />
                  Revert
                </Button>
              </div>
              <dl className="grid gap-2 sm:grid-cols-2">
                <div className="bg-surface-2 rounded-md px-3 py-2">
                  <dt className="text-ink-3 text-12 font-extrabold">Was</dt>
                  <dd className="text-14 font-semibold break-words">
                    {item.previous}
                  </dd>
                </div>
                <div className="bg-select-soft text-select-ink rounded-md px-3 py-2">
                  <dt className="text-12 font-extrabold">Will be</dt>
                  <dd className="text-14 font-bold break-words">{item.next}</dd>
                </div>
              </dl>
            </li>
          ))}
        </ul>
      ) : (
        <EmptyState variant="bare" title="No changes left to review." />
      )}
    </section>
  );

  return (
    <PlayFormOverlay
      open={open}
      onOpenChange={close}
      presentation="side"
      kicker={placeLabel}
      title={name}
      head={
        <div className="mb-3 flex items-center gap-4">
          <PokemonPortrait
            alt=""
            className="size-20 shrink-0"
            fallbackOnError
            imageUrl={getPlayTeamMemberImageUrl(member)}
            sizes="80px"
            type={primaryTypeSlug}
          />
          <div className="grid min-w-0 gap-1.5">
            <p className="text-ink-2 text-14 font-semibold">
              {[
                member.species_name,
                values.level.trim() ? `Lv. ${values.level.trim()}` : null,
              ]
                .filter(Boolean)
                .join(" · ")}
            </p>
            <PokemonTypeList
              primaryType={member.primaryType}
              secondaryType={member.secondaryType}
              badgeDisplay="icon-label"
              badgeSize="sm"
              className="flex gap-1.5"
            />
          </div>
        </div>
      }
      footer={
        <>
          <Button
            type="button"
            variant="ghost"
            size="sm"
            className="mr-auto"
            disabled={!changes.length}
            aria-pressed={isReviewing}
            onClick={() => setIsReviewing((current) => !current)}
          >
            {changes.length
              ? `${changes.length} ${changes.length === 1 ? "change" : "changes"} · ${isReviewing ? "hide" : "review"}`
              : "No changes yet"}
          </Button>
          <Button
            type="button"
            variant="outline"
            size="sm"
            disabled={isSaving}
            onClick={() => close(false)}
          >
            Cancel
          </Button>
          <Button
            type="submit"
            size="sm"
            form={`${id}-form`}
            disabled={isSaving || !changes.length}
            aria-busy={isSaving}
          >
            {isSaving ? (
              <Spinner data-icon="inline-start" />
            ) : (
              <AppIcon icon={appIcons.status.active} inline="start" />
            )}
            Save {values.nickname.trim() || member.species_name}
          </Button>
        </>
      }
    >
      <TeamMemberEditorActions
        member={member}
        options={options}
        onDone={() => close(false)}
        onReplace={onReplace}
        playId={playId}
      />
      <div className="mt-6">
        {/* Review hides the form, but Save still submits it. */}
        <div hidden={isReviewing}>{details}</div>
        {isReviewing ? review : null}
      </div>
      {error ? <FieldError className="mt-4">{error}</FieldError> : null}
    </PlayFormOverlay>
  );
};
