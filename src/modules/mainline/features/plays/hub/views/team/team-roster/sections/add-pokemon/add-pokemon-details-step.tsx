import { SegmentedControl } from "@/shared/components/segmented-control";
import { Field, FieldError, FieldLabel } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";

import type { RuleWarning } from "@/modules/mainline/features/plays/hub/views/team/team-roster/data/rule-checks";

import type { PokemonChoice } from "../../utils/pokemon-choices";
import { RuleWarningsNote } from "../roster/rule-warnings-note";

export type AddPokemonPlacement = "reserve" | "team";

/*
 * Step 2, its details: what the Play's rules say about it (a warning that
 * blocks nothing), nickname and level, and where it goes (the team or the
 * reserve), or whose place it takes when it replaces one.
 */
export const AddPokemonDetailsStep = ({
  error,
  id,
  level,
  nickname,
  onLevelChange,
  onNicknameChange,
  onPlacementChange,
  onSubmit,
  picked,
  placement,
  replacesName,
  reserveIsFull,
  teamCount,
  warnings,
}: {
  error: string | null;
  /* The sheet's `useId`; the form is `${id}-form`, so Save can submit it. */
  id: string;
  level: string;
  nickname: string;
  onLevelChange: (level: string) => void;
  onNicknameChange: (nickname: string) => void;
  onPlacementChange: (placement: AddPokemonPlacement) => void;
  onSubmit: () => void;
  picked: PokemonChoice;
  placement: AddPokemonPlacement;
  /* The Pokémon it replaces; null when it is added. */
  replacesName: string | null;
  reserveIsFull: boolean;
  teamCount: number;
  /* What the Play's rules say about this pick; it can still be added. */
  warnings: (RuleWarning & { key: string })[];
}) => {
  const teamIsFull = teamCount >= 6;

  return (
    <form
      id={`${id}-form`}
      className="grid gap-5"
      onSubmit={(event) => {
        event.preventDefault();
        onSubmit();
      }}
    >
      <RuleWarningsNote warnings={warnings}>
        <p className="mt-1">
          {replacesName !== null
            ? "You can still pick it."
            : "You can still add it."}
        </p>
      </RuleWarningsNote>
      <div className="grid gap-4 sm:grid-cols-[minmax(0,1fr)_120px]">
        <Field>
          <FieldLabel htmlFor={`${id}-nickname`}>Nickname</FieldLabel>
          <Input
            id={`${id}-nickname`}
            maxLength={100}
            autoComplete="off"
            placeholder={picked.speciesName}
            value={nickname}
            onChange={(event) => onNicknameChange(event.target.value)}
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
            onChange={(event) => onLevelChange(event.target.value)}
          />
        </Field>
      </div>
      {replacesName !== null ? (
        <p className="text-ink-2 text-14 font-semibold">
          It takes {replacesName}&apos;s place, and {replacesName} is kept in
          History.
        </p>
      ) : (
        <div className="flex flex-col gap-3 pt-4 sm:flex-row sm:items-center sm:justify-between">
          <div className="grid gap-0.5">
            <p id={`${id}-where`} className="text-15 font-extrabold">
              Where it goes
            </p>
            <p className="text-ink-2 text-13 font-semibold">
              {teamIsFull && reserveIsFull
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
            onValueChange={onPlacementChange}
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
  );
};
