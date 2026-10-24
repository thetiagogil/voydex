"use client";

import { useId, useState, useTransition, type ReactNode } from "react";
import { useRouter } from "next/navigation";
import { toast } from "sonner";

import { EditedMark } from "@/shared/components/edited-mark";
import { DatePicker } from "@/shared/components/date-picker";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SettingsRow } from "@/shared/components/settings-row";
import { UnsavedChangesFooter } from "@/shared/components/unsaved-changes-footer";
import { Field, FieldError, FieldLabel } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";

import { PlayPlaytimeFields } from "@/modules/mainline/features/plays/hub/components/play-playtime-fields";
import { updatePlayGeneralSettingsAction } from "../../server/play-settings-actions";
import type { MainlinePlaySettingsData } from "../../types";
import type { PlayGeneralSettingsInput } from "../../utils/play-settings-validation";

const toFormValues = (
  general: MainlinePlaySettingsData["general"],
): PlayGeneralSettingsInput => ({
  name: general.name,
  playtimeHours:
    general.playtimeMinutes === null
      ? ""
      : String(Math.floor(general.playtimeMinutes / 60)),
  playtimeMinutes:
    general.playtimeMinutes === null
      ? ""
      : String(general.playtimeMinutes % 60),
  startedOn: general.startedOn ?? "",
  statusId: general.statusId,
  trainerName: general.trainerName ?? "",
});

/* A field's label, with the Edited mark once it changed. */
const SettingsFieldLabel = ({
  children,
  edited,
  htmlFor,
}: {
  children: ReactNode;
  edited: boolean;
  htmlFor?: string;
}) => (
  <FieldLabel htmlFor={htmlFor} className="text-13 text-ink-2 font-extrabold">
    <EditedMark edited={edited}>{children}</EditedMark>
  </FieldLabel>
);

/*
 * General (v3 `settings` first card): the Play's name, trainer, start day,
 * playtime and status. Unsaved changes show in the card's footer.
 */
export const PlaySettingsGeneralSection = ({
  data,
  playId,
}: {
  data: MainlinePlaySettingsData;
  playId: string;
}) => {
  const router = useRouter();
  const id = useId();
  const initial = toFormValues(data.general);
  const [values, setValues] = useState(initial);
  const [error, setError] = useState<string | null>(null);
  const [isSaving, startTransition] = useTransition();
  const edited = (key: keyof PlayGeneralSettingsInput) =>
    values[key] !== initial[key];
  const isDirty = (
    Object.keys(initial) as (keyof PlayGeneralSettingsInput)[]
  ).some(edited);
  const playtimeEdited = edited("playtimeHours") || edited("playtimeMinutes");

  const change = <TKey extends keyof PlayGeneralSettingsInput>(
    key: TKey,
    value: PlayGeneralSettingsInput[TKey],
  ) => {
    setValues((current) => ({ ...current, [key]: value }));
    setError(null);
  };

  const save = () => {
    startTransition(async () => {
      const result = await updatePlayGeneralSettingsAction({
        input: values,
        playId,
      });

      if (result.status === "error") {
        setError(result.message);
        return;
      }

      toast.success(result.message);
      router.refresh();
    });
  };

  return (
    <DetailSectionCard id="general" title="General">
      <form
        onSubmit={(event) => {
          event.preventDefault();
          save();
        }}
      >
        <div className="grid gap-4 sm:grid-cols-2">
          <Field>
            <SettingsFieldLabel htmlFor={`${id}-name`} edited={edited("name")}>
              Play name
            </SettingsFieldLabel>
            <Input
              id={`${id}-name`}
              required
              maxLength={200}
              value={values.name}
              onChange={(event) => change("name", event.target.value)}
            />
          </Field>
          <Field>
            <SettingsFieldLabel
              htmlFor={`${id}-trainer`}
              edited={edited("trainerName")}
            >
              Trainer name
            </SettingsFieldLabel>
            <Input
              id={`${id}-trainer`}
              maxLength={120}
              value={values.trainerName}
              placeholder="Not recorded"
              onChange={(event) => change("trainerName", event.target.value)}
            />
          </Field>
          <Field>
            <SettingsFieldLabel
              htmlFor={`${id}-started`}
              edited={edited("startedOn")}
            >
              Started on
            </SettingsFieldLabel>
            <DatePicker
              id={`${id}-started`}
              label="Started on"
              value={values.startedOn}
              onValueChange={(day) => change("startedOn", day)}
            />
          </Field>
          <Field role="group" aria-labelledby={`${id}-playtime`}>
            <SettingsFieldLabel edited={playtimeEdited}>
              <span id={`${id}-playtime`}>Playtime</span>
            </SettingsFieldLabel>
            <PlayPlaytimeFields
              hours={values.playtimeHours}
              minutes={values.playtimeMinutes}
              onHoursChange={(value) => change("playtimeHours", value)}
              onMinutesChange={(value) => change("playtimeMinutes", value)}
            />
          </Field>
        </div>

        <SettingsRow
          className="mt-4 pt-4 first:pt-4"
          title={
            <>
              <EditedMark edited={edited("statusId")}>Status</EditedMark>
            </>
          }
          titleId={`${id}-status`}
          description="Where this Play stands. Status changes join its History."
        >
          <SegmentedControl
            ariaLabel="Status"
            variant="segment"
            value={String(values.statusId)}
            onValueChange={(value) => change("statusId", Number(value))}
            options={data.statuses.map((status) => ({
              label: status.name,
              value: String(status.id),
            }))}
          />
        </SettingsRow>

        {error ? <FieldError className="mt-3">{error}</FieldError> : null}

        {isDirty ? (
          <UnsavedChangesFooter
            isSaving={isSaving}
            onCancel={() => {
              setValues(initial);
              setError(null);
            }}
          />
        ) : null}
      </form>
    </DetailSectionCard>
  );
};
