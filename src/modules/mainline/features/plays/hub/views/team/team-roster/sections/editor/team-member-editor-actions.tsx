"use client";

import { useState, useTransition } from "react";
import { useRouter } from "next/navigation";
import { toast } from "sonner";

import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  AlertDialog,
  AlertDialogCancel,
  AlertDialogContent,
  AlertDialogDescription,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogTitle,
} from "@/shared/components/ui/alert-dialog";
import { toPokemonFormOption } from "@/modules/reference/features/pokemon/components/pokemon-form-menu";
import { SelectControl } from "@/shared/components/select-control";
import { Button, buttonVariants } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

import type {
  EditorFormOption,
  TeamMemberEditorOptions,
} from "../../utils/team-member-editor-model";
import {
  changeMainlinePlayPokemonFormAction,
  evolveMainlinePlayPokemonAction,
  removeMainlinePlayPokemonAction,
  retireMainlinePlayPokemonAction,
} from "../../server/team-member-mutation-actions";
import { IconTip } from "@/shared/components/icon-tip";

type Confirm = "delete" | "retire" | null;

/*
 * Evolve… and Change form: a head action that opens the list of forms, each
 * with its art, name and types; one a held item selects shows why it can't
 * be picked. Picking one acts straight away.
 */
const FormActionSelect = ({
  disabled,
  icon,
  label,
  onPick,
  targets,
}: {
  disabled: boolean;
  icon: React.ReactNode;
  label: string;
  onPick: (target: EditorFormOption) => void;
  targets: EditorFormOption[];
}) => (
  <SelectControl
    ariaLabel={label}
    className={buttonVariants({ size: "sm", variant: "tint" })}
    disabled={disabled}
    onValueChange={(value) => {
      const target = targets.find((item) => String(item.formId) === value);

      if (target) {
        onPick(target);
      }
    }}
    options={targets.map((target) =>
      toPokemonFormOption({
        description: target.heldItemNote ?? undefined,
        disabled: target.heldItemNote !== null,
        imageUrl: target.imageUrl,
        label: target.name,
        name: target.name,
        typeSlug: target.types[0]?.slug ?? null,
        types: target.types,
        value: String(target.formId),
      }),
    )}
    placeholder={label}
    searchable={false}
    size="sm"
    triggerContent={
      <>
        {icon}
        {label}
      </>
    }
    value=""
    variant="ghost"
  />
);

/*
 * The editor's head actions (v3 `.sh-acts`, on the tinted head): Evolve,
 * Change form, Replace and Retire act straight away, each recorded in
 * History; options the game doesn't offer are left out. The bin at the end
 * deletes the record, for mistakes, and asks first.
 */
export const TeamMemberEditorActions = ({
  member,
  onDone,
  onReplace,
  options,
  playId,
}: {
  member: MainlinePlayTeamMember;
  onDone: () => void;
  onReplace: () => void;
  /* Null while the editor's options load. */
  options: TeamMemberEditorOptions | null;
  playId: string;
}) => {
  const router = useRouter();
  const [confirm, setConfirm] = useState<Confirm>(null);
  const [isPending, startTransition] = useTransition();
  const name = getPlayTeamMemberName(member);
  const playPokemonId = member.play_pokemon_id ?? "";
  const species = member.species_name ?? "It";
  const evolutions = options?.evolutions ?? [];
  const forms = options?.forms ?? [];

  const run = (
    action: () => Promise<{ message: string; status: "error" | "success" }>,
    successMessage: string,
  ) => {
    startTransition(async () => {
      const result = await action();

      if (result.status === "error") {
        toast.error(result.message);
        return;
      }

      setConfirm(null);
      onDone();
      toast.success(successMessage);
      router.refresh();
    });
  };

  const evolve = (target: EditorFormOption) =>
    run(
      () =>
        evolveMainlinePlayPokemonAction({
          playId,
          playPokemonId,
          toFormId: target.formId,
          toSpeciesId: target.speciesId,
        }),
      `${name} evolved into ${target.name}`,
    );

  const changeForm = (target: EditorFormOption) =>
    run(
      () =>
        changeMainlinePlayPokemonFormAction({
          playId,
          playPokemonId,
          toFormId: target.formId,
        }),
      `${name} is now ${target.name}`,
    );

  return (
    <div className="grid gap-2">
      <div className="flex flex-wrap gap-2">
        {evolutions.length > 1 ? (
          <FormActionSelect
            disabled={isPending}
            icon={<AppIcon icon={appIcons.product.evolved} inline="start" />}
            label="Evolve…"
            onPick={evolve}
            targets={evolutions}
          />
        ) : (
          <Button
            type="button"
            variant="tint"
            size="sm"
            disabled={isPending || evolutions.length === 0}
            onClick={() => evolutions[0] && evolve(evolutions[0])}
          >
            <AppIcon icon={appIcons.product.evolved} inline="start" />
            {evolutions[0] ? `Evolve into ${evolutions[0].name}` : "Evolve"}
          </Button>
        )}
        {forms.length ? (
          <FormActionSelect
            disabled={isPending}
            icon={
              <AppIcon icon={appIcons.product.formChanged} inline="start" />
            }
            label="Change form"
            onPick={changeForm}
            targets={forms}
          />
        ) : null}
        <Button
          type="button"
          variant="tint"
          size="sm"
          disabled={isPending}
          onClick={onReplace}
        >
          <AppIcon icon={appIcons.product.replaced} inline="start" />
          Replace
        </Button>
        <Button
          type="button"
          variant="tint"
          size="sm"
          disabled={isPending}
          onClick={() => setConfirm("retire")}
        >
          <AppIcon icon={appIcons.product.retired} inline="start" />
          Retire
        </Button>
        <IconTip
          label="Delete record"
          trigger={
            <Button
              type="button"
              variant="destructive"
              size="icon-sm"
              className="ml-auto"
              aria-label="Delete record"
              disabled={isPending}
              onClick={() => setConfirm("delete")}
            >
              <AppIcon icon={appIcons.actions.delete} />
            </Button>
          }
        />
      </div>
      {options && !evolutions.length ? (
        <p className="text-ink-2 text-13 font-semibold">
          {`${species} doesn't evolve further in this game.`}
        </p>
      ) : null}

      <AlertDialog
        open={confirm !== null}
        onOpenChange={(open) => {
          if (!open && !isPending) {
            setConfirm(null);
          }
        }}
      >
        <AlertDialogContent>
          <AlertDialogHeader>
            <AlertDialogTitle>
              {confirm === "delete" ? `Delete ${name}?` : `Retire ${name}?`}
            </AlertDialogTitle>
            <AlertDialogDescription>
              {confirm === "delete"
                ? "For mistakes: it goes from this Play, with the moment it was added. To record that it left the team, retire it instead."
                : "It leaves the team and the reserve. History keeps it, and the moment it retired."}
            </AlertDialogDescription>
          </AlertDialogHeader>
          <AlertDialogFooter>
            <AlertDialogCancel disabled={isPending}>Keep it</AlertDialogCancel>
            <Button
              type="button"
              variant={confirm === "delete" ? "destructive" : "default"}
              disabled={isPending}
              aria-busy={isPending}
              onClick={() =>
                confirm === "delete"
                  ? run(
                      () =>
                        removeMainlinePlayPokemonAction({
                          playId,
                          playPokemonId,
                          // A mistaken record takes its own "added" moment
                          // with it; its other moments stay in History.
                          undoAdd: true,
                        }),
                      `${name} deleted`,
                    )
                  : run(
                      () =>
                        retireMainlinePlayPokemonAction({
                          playId,
                          playPokemonId,
                        }),
                      `${name} retired`,
                    )
              }
            >
              {isPending ? <Spinner data-icon="inline-start" /> : null}
              {confirm === "delete" ? "Delete record" : `Retire ${name}`}
            </Button>
          </AlertDialogFooter>
        </AlertDialogContent>
      </AlertDialog>
    </div>
  );
};
