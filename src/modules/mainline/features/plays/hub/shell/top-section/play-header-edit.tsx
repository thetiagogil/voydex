"use client";

import { useId, useState, useTransition, type ReactNode } from "react";
import { toast } from "sonner";

import { PlayPlaytimeFields } from "@/modules/mainline/features/plays/hub/components/play-playtime-fields";
import type {
  MainlinePlayShellData,
  PlayHeaderEditing,
} from "@/modules/mainline/features/plays/hub/types";
import { updatePlayHeaderFieldAction } from "@/modules/mainline/features/plays/hub/views/settings/server/play-settings-actions";
import type { PlayHeaderChange } from "@/modules/mainline/features/plays/hub/views/settings/utils/play-settings-validation";
import { OverlayDialog } from "@/shared/components/overlay-dialog";
import { getPlayStatusTone } from "@/modules/mainline/shared/utils/play-status-tone";
import { ChoiceChip } from "@/shared/components/choice-chip";
import {
  StatusBadge,
  type StatusBadgeTone,
} from "@/shared/components/status-badge";
import { Button } from "@/shared/components/ui/button";
import {
  Field,
  FieldContent,
  FieldError,
  FieldLabel,
  FieldLegend,
  FieldSet,
} from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";
import { RadioGroup, RadioGroupItem } from "@/shared/components/ui/radio-group";
import { Spinner } from "@/shared/components/ui/spinner";

type PlayHeaderEditProps = {
  data: MainlinePlayShellData;
  editing: PlayHeaderEditing;
  /* The Play's id, which the view leaves nullable. */
  playId: string;
};

/*
 * The head's badge that opens its dialog: a StatusBadge on the band, as a
 * button.
 */
const StatusEditBadge = ({
  children,
  onClick,
  tone,
}: {
  children: ReactNode;
  onClick: () => void;
  tone?: StatusBadgeTone;
}) => (
  <StatusBadge
    ground="band"
    size="md"
    tone={tone}
    className="cursor-pointer hover:brightness-95"
    render={<button type="button" aria-haspopup="dialog" onClick={onClick} />}
  >
    {children}
  </StatusBadge>
);

/*
 * One dialog for the three edits (a bottom sheet on phones): a title, the
 * field, and Cancel and Save at the bottom right. Save is off until
 * something changed, and the dialog closes once it has saved.
 */
const HeaderEditDialog = ({
  canSave,
  change,
  children,
  error,
  onError,
  onOpenChange,
  open,
  playId,
  savedMessage,
  title,
}: {
  canSave: boolean;
  change: () => PlayHeaderChange;
  children: ReactNode;
  error: string | null;
  onError: (message: string | null) => void;
  onOpenChange: (open: boolean) => void;
  open: boolean;
  playId: string;
  savedMessage: string;
  title: string;
}) => {
  const formId = useId();
  const [isSaving, startSaving] = useTransition();

  const save = () =>
    startSaving(async () => {
      const result = await updatePlayHeaderFieldAction({
        change: change(),
        playId,
      });

      if (result.status === "error") {
        onError(result.message);
        return;
      }

      onOpenChange(false);
      toast.success(savedMessage);
    });

  return (
    <OverlayDialog
      open={open}
      onOpenChange={(next) => {
        if (!isSaving) onOpenChange(next);
      }}
      title={title}
      footer={
        <>
          <Button
            type="button"
            variant="secondary"
            disabled={isSaving}
            onClick={() => onOpenChange(false)}
          >
            Cancel
          </Button>
          <Button
            type="submit"
            form={formId}
            disabled={isSaving || !canSave}
            aria-busy={isSaving}
          >
            {isSaving ? <Spinner data-icon="inline-start" /> : null}
            Save
          </Button>
        </>
      }
    >
      <form
        id={formId}
        className="grid gap-4"
        onSubmit={(event) => {
          event.preventDefault();
          if (canSave) save();
        }}
      >
        {children}
        {error ? <FieldError>{error}</FieldError> : null}
      </form>
    </OverlayDialog>
  );
};

/*
 * Trainer and playtime stay the head's quiet text, as a button: a soft tint
 * on hover, and the padding is pulled back so the line doesn't shift.
 */
const EditText = ({
  children,
  onClick,
}: {
  children: ReactNode;
  onClick: () => void;
}) => (
  <button
    type="button"
    aria-haspopup="dialog"
    onClick={onClick}
    className="focus-ring -mx-2 -my-1 cursor-pointer rounded-full px-2 py-1 transition-colors hover:bg-white/60"
  >
    {children}
  </button>
);

/* A dialog's own state: closed to start, back to the saved value on opening. */
const useHeaderEdit = <TValue,>(saved: TValue) => {
  const [open, setOpen] = useState(false);
  const [value, setValue] = useState(saved);
  const [error, setError] = useState<string | null>(null);

  return {
    error,
    open,
    openDialog: () => {
      setValue(saved);
      setError(null);
      setOpen(true);
    },
    setError,
    setOpen,
    setValue: (next: TValue) => {
      setValue(next);
      setError(null);
    },
    value,
  };
};

/* The status as every option in a list: pick one and Save. */
export const PlayHeaderStatusEdit = ({
  data,
  editing,
  playId,
}: PlayHeaderEditProps) => {
  const savedId = data.play.status_id ?? 0;
  const edit = useHeaderEdit(savedId);
  const name = data.play.status_name ?? "Status";

  return (
    <>
      <StatusEditBadge
        tone={getPlayStatusTone(data.play.status_slug)}
        onClick={edit.openDialog}
      >
        {name}
      </StatusEditBadge>
      <HeaderEditDialog
        title="Status"
        open={edit.open}
        onOpenChange={edit.setOpen}
        canSave={edit.value !== savedId}
        change={() => ({ field: "status", statusId: edit.value })}
        error={edit.error}
        onError={edit.setError}
        playId={playId}
        savedMessage="Status saved"
      >
        <FieldSet>
          <RadioGroup
            aria-label="Status"
            value={String(edit.value)}
            onValueChange={(value) => edit.setValue(Number(value))}
          >
            {editing.statuses.map((status) => (
              <FieldLabel key={status.id} className="cursor-pointer">
                <Field orientation="horizontal" className="min-h-12 gap-3">
                  <RadioGroupItem value={String(status.id)} />
                  <FieldContent>
                    <span className="text-15 font-extrabold">
                      {status.name}
                    </span>
                  </FieldContent>
                </Field>
              </FieldLabel>
            ))}
          </RadioGroup>
        </FieldSet>
      </HeaderEditDialog>
    </>
  );
};

/* The trainer name as a field, with the names your other Plays use to fill it in. */
export const PlayHeaderTrainerEdit = ({
  data,
  editing,
  playId,
}: PlayHeaderEditProps) => {
  const inputId = useId();
  const saved = data.play.trainer_name ?? "";
  const edit = useHeaderEdit(saved);

  return (
    <>
      <EditText onClick={edit.openDialog}>
        {saved ? `Trainer ${saved}` : "Add trainer"}
      </EditText>
      <HeaderEditDialog
        title="Trainer name"
        open={edit.open}
        onOpenChange={edit.setOpen}
        canSave={edit.value.trim() !== saved}
        change={() => ({ field: "trainer", trainerName: edit.value })}
        error={edit.error}
        onError={edit.setError}
        playId={playId}
        savedMessage="Trainer saved"
      >
        <Field>
          <FieldLabel htmlFor={inputId}>Trainer name</FieldLabel>
          <Input
            id={inputId}
            autoComplete="off"
            maxLength={120}
            placeholder="Not recorded"
            value={edit.value}
            onChange={(event) => edit.setValue(event.target.value)}
          />
        </Field>
        {editing.trainerNames.length ? (
          <FieldSet>
            <FieldLegend variant="label">From your other Plays</FieldLegend>
            <div className="flex flex-wrap gap-2">
              {editing.trainerNames.map((name) => (
                <ChoiceChip
                  key={name}
                  pressed={edit.value.trim() === name}
                  onClick={() => edit.setValue(name)}
                >
                  {name}
                </ChoiceChip>
              ))}
            </div>
          </FieldSet>
        ) : null}
      </HeaderEditDialog>
    </>
  );
};

const splitPlaytime = (minutes: number | null) => ({
  hours: minutes === null ? "" : String(Math.floor(minutes / 60)),
  minutes: minutes === null ? "" : String(minutes % 60),
});

/* The playtime as hours and minutes. */
export const PlayHeaderPlaytimeEdit = ({
  data,
  playId,
  playtimeLabel,
}: Omit<PlayHeaderEditProps, "editing"> & { playtimeLabel: string | null }) => {
  const saved = splitPlaytime(data.play.playtime_minutes);
  const edit = useHeaderEdit(saved);

  return (
    <>
      <EditText onClick={edit.openDialog}>
        <span className="tabular-nums">{playtimeLabel ?? "Add playtime"}</span>
      </EditText>
      <HeaderEditDialog
        title="Playtime"
        open={edit.open}
        onOpenChange={edit.setOpen}
        canSave={
          edit.value.hours !== saved.hours ||
          edit.value.minutes !== saved.minutes
        }
        change={() => ({ field: "playtime", ...edit.value })}
        error={edit.error}
        onError={edit.setError}
        playId={playId}
        savedMessage="Playtime saved"
      >
        <FieldSet>
          <FieldLegend variant="label">Playtime</FieldLegend>
          <PlayPlaytimeFields
            hours={edit.value.hours}
            minutes={edit.value.minutes}
            onHoursChange={(hours) => edit.setValue({ ...edit.value, hours })}
            onMinutesChange={(minutes) =>
              edit.setValue({ ...edit.value, minutes })
            }
          />
        </FieldSet>
      </HeaderEditDialog>
    </>
  );
};
