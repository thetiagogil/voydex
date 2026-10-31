import {
  MoveSlotGrid,
  toMoveSlotOptions,
} from "@/modules/mainline/shared/components/move-slot-select";
import { EmptyState } from "@/shared/components/empty-state";
import { SheetSection } from "@/shared/components/sheet-section";
import { FieldError } from "@/shared/components/ui/field";
import { Spinner } from "@/shared/components/ui/spinner";

import type { PokemonBuildOptions } from "../../server/pokemon-build-options-reader";
import type { TeamMemberEditorSupport } from "../../utils/team-member-editor-model";
import {
  TeamMemberBuildFields,
  type TeamMemberBuildField,
} from "../editor/team-member-build-fields";

/* What More details picks; ids as text, empty when not recorded. */
export type AddPokemonBuild = Record<TeamMemberBuildField, string> & {
  moveIds: [string, string, string, string];
};

export const emptyAddPokemonBuild: AddPokemonBuild = {
  abilityId: "",
  heldItemId: "",
  moveIds: ["", "", "", ""],
  natureId: "",
};

/* How many of its details are picked, for the More details button. */
export const countAddPokemonBuild = (build: AddPokemonBuild) =>
  [build.abilityId, build.heldItemId, build.natureId, ...build.moveIds].filter(
    Boolean,
  ).length;

/* The picked form's choices, loaded while step 2 is open. */
export type AddPokemonBuildState =
  | { formId: number; message: string; status: "error" }
  | { formId: number; options: PokemonBuildOptions; status: "ready" };

/*
 * Step 3, More details (optional): nature, ability and held item where the
 * Play's game records them, then its four moves from what it learns here,
 * grouped by how. The same fields as Edit; Add saves them in one go.
 */
export const AddPokemonMoreStep = ({
  build,
  error,
  id,
  onBuildChange,
  onSubmit,
  state,
  supports,
}: {
  build: AddPokemonBuild;
  error: string | null;
  /* The sheet's `useId`; the form is `${id}-form`, so Add can submit it. */
  id: string;
  onBuildChange: (build: AddPokemonBuild) => void;
  onSubmit: () => void;
  /* Null while it loads. */
  state: AddPokemonBuildState | null;
  supports: Pick<
    TeamMemberEditorSupport,
    "abilities" | "heldItems" | "natures"
  >;
}) => {
  const hasDetails =
    supports.abilities || supports.heldItems || supports.natures;
  const content = !state ? (
    <div className="grid place-items-center py-6">
      <Spinner
        aria-label="Loading what it can record"
        className="text-action"
      />
    </div>
  ) : state.status === "error" ? (
    <EmptyState variant="bare" title={state.message} />
  ) : (
    <>
      {hasDetails ? (
        <SheetSection title="Details" aside="Optional">
          <div className="grid gap-4 sm:grid-cols-2">
            <TeamMemberBuildFields
              change={(field, value) =>
                onBuildChange({ ...build, [field]: value })
              }
              id={id}
              options={state.options}
              supports={supports}
              values={build}
            />
          </div>
        </SheetSection>
      ) : null}
      <SheetSection title="Moves" aside="Optional">
        {state.options.moves.length ? (
          <MoveSlotGrid
            values={build.moveIds.map((moveId) => moveId || null)}
            onValueChange={(index, value) => {
              const moveIds = [...build.moveIds] as AddPokemonBuild["moveIds"];
              moveIds[index] = value ?? "";
              onBuildChange({ ...build, moveIds });
            }}
            options={toMoveSlotOptions(state.options.moves)}
          />
        ) : (
          <p className="text-ink-2 text-14 font-semibold">
            Voydex doesn&apos;t have its moves for this game yet.
          </p>
        )}
      </SheetSection>
    </>
  );

  return (
    <form
      id={`${id}-form`}
      className="grid gap-6"
      onSubmit={(event) => {
        event.preventDefault();
        onSubmit();
      }}
    >
      {content}
      {error ? <FieldError>{error}</FieldError> : null}
    </form>
  );
};
