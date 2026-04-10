"use client";

import {
  playCreateSchema,
  playEditSchema,
  type PlayCreateFormValues,
  type PlayEditFormValues,
} from "@/components/forms/schemas/play-schemas";
import { FieldWrapper } from "@/components/shared/field-wrapper";
import { Button } from "@/components/ui/button";
import { Checkbox } from "@/components/ui/checkbox";
import { FieldGroup, FieldSet } from "@/components/ui/field";
import { Input } from "@/components/ui/input";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { Spinner } from "@/components/ui/spinner";
import { cn } from "@/lib/utils/cn";
import type { GameWithFullData } from "@/types/game";
import type { PlayStatusInfo } from "@/types/play";
import { zodResolver } from "@hookform/resolvers/zod";
import { useEffect } from "react";
import { Controller, useForm } from "react-hook-form";
import { Icon } from "../shared/icon";

import type { DlcVersionGroup } from "@/hooks/gameplay/usePlayDlc";
import { STATUS_VARIANT_META } from "@/shared/constants/play-statuses";

interface PlayFormContentCreateProps {
  mode: "create";
  game: GameWithFullData;
  statuses?: never;
  availableDlcs?: DlcVersionGroup[];
  initialValues?: Partial<PlayCreateFormValues>;
  isPending: boolean;
  onSubmit: (data: PlayCreateFormValues) => Promise<void>;
  onCancel: () => void;
}

interface PlayFormContentEditProps {
  mode: "edit";
  game: GameWithFullData;
  statuses: PlayStatusInfo[];
  availableDlcs?: DlcVersionGroup[];
  completion?: number;
  initialValues: PlayEditFormValues;
  isPending: boolean;
  onSubmit: (data: PlayEditFormValues) => Promise<void>;
  onCancel: () => void;
}

type PlayFormContentProps =
  | PlayFormContentCreateProps
  | PlayFormContentEditProps;

export const PlayFormContent = (props: PlayFormContentProps) => {
  const { mode, game, isPending, onSubmit, onCancel } = props;
  const isEditMode = mode === "edit";
  const availableDlcs = props.availableDlcs ?? [];
  const completion = isEditMode ? (props.completion ?? 0) : 0;
  const isCompleted = completion === 100;

  const {
    register,
    handleSubmit,
    reset,
    control,
    watch,
    setValue,
    formState: { errors },
  } = useForm<PlayCreateFormValues | PlayEditFormValues>({
    resolver: zodResolver(isEditMode ? playEditSchema : playCreateSchema),
    defaultValues: isEditMode
      ? props.initialValues
      : { name: props.initialValues?.name || "" },
  });

  const handleFormSubmit = async (
    data: PlayCreateFormValues | PlayEditFormValues,
  ) => {
    if (isEditMode) {
      await onSubmit(data as PlayEditFormValues);
    } else {
      await onSubmit(data as PlayCreateFormValues);
    }
  };

  useEffect(() => {
    if (isEditMode) {
      reset(props.initialValues);
    }
  }, [isEditMode, props.initialValues, reset]);

  // Cascade: when include_pokedex is unchecked, auto-uncheck include_other_pokedex
  const includePokedex = watch("include_pokedex" as any);
  useEffect(() => {
    if (isEditMode && includePokedex === false) {
      setValue("include_other_pokedex" as any, false);
    }
  }, [isEditMode, includePokedex, setValue]);

  return (
    <form
      onSubmit={handleSubmit(handleFormSubmit)}
      className="flex flex-col gap-4"
    >
      <FieldSet>
        <FieldGroup>
          <div className="flex flex-col gap-2">
            <FieldWrapper
              id="playName"
              label={isEditMode ? "Name" : "Playthrough Name (optional)"}
              error={errors.name?.message}
            >
              <Input
                id="playName"
                placeholder={`My ${game.name} Adventure`}
                disabled={isPending}
                {...register("name")}
              />
            </FieldWrapper>
            {!isEditMode && (
              <p className="text-muted-foreground text-xs">
                Give your playthrough a memorable name or leave blank for
                default
              </p>
            )}
          </div>

          {availableDlcs.length > 0 && (
            <div className="space-y-3">
              <label className="text-sm font-medium">DLC Content</label>
              <p className="text-muted-foreground text-xs">
                Select which DLC expansions to include in this playthrough.
              </p>
              <Controller
                name="dlc_version_group_ids"
                control={control}
                render={({ field }) => {
                  const selected: number[] = field.value ?? [];
                  return (
                    <div className="space-y-2">
                      {availableDlcs.map((dlc) => (
                        <label
                          key={dlc.id}
                          className="flex items-center gap-2 text-sm"
                        >
                          <Checkbox
                            checked={selected.includes(dlc.id)}
                            onCheckedChange={(checked) => {
                              const next = checked
                                ? [...selected, dlc.id]
                                : selected.filter((id) => id !== dlc.id);
                              field.onChange(next);
                            }}
                            disabled={isPending}
                          />
                          {dlc.name}
                        </label>
                      ))}
                    </div>
                  );
                }}
              />
            </div>
          )}

          {isEditMode && props.statuses && (
            <FieldWrapper
              id="status"
              label="Status"
              error={(errors as any).status_slug?.message}
            >
              <Controller
                name="status_slug"
                control={control}
                render={({ field }) => (
                  <Select
                    value={field.value}
                    onValueChange={field.onChange}
                    disabled={isPending || isCompleted}
                  >
                    <SelectTrigger>
                      <SelectValue placeholder="Select status" />
                    </SelectTrigger>
                    <SelectContent>
                      {props.statuses.map((status) => {
                        const isCompleted =
                          status.slug === "completed" && completion < 100;
                        return (
                          !isCompleted && (
                            <SelectItem key={status.id} value={status.slug}>
                              <span className="flex items-center gap-2">
                                <Icon
                                  type={status.slug}
                                  className={
                                    STATUS_VARIANT_META[status.slug].colors.icon
                                  }
                                />
                                {status.name}
                              </span>
                            </SelectItem>
                          )
                        );
                      })}
                    </SelectContent>
                  </Select>
                )}
              />
            </FieldWrapper>
          )}

          {isEditMode && (
            <FieldWrapper
              id="notes"
              label="Notes"
              error={(errors as any).notes?.message}
            >
              <Input
                id="notes"
                placeholder="Add any notes about your playthrough..."
                disabled={isPending}
                {...register("notes")}
              />
            </FieldWrapper>
          )}

          {isEditMode && (
            <div className="space-y-3">
              <label className="text-sm font-medium">
                Pokédex Completion Settings
              </label>
              <p className="text-muted-foreground text-xs">
                Toggle which pokédex types count toward play completion. All
                dexes remain visible regardless.
              </p>
              <div className="space-y-2">
                <Controller
                  name="include_pokedex"
                  control={control}
                  render={({ field }) => (
                    <label className="flex items-center gap-2 text-sm">
                      <Checkbox
                        checked={field.value}
                        onCheckedChange={field.onChange}
                        disabled={isPending}
                      />
                      Include Regional Pokédex in completion
                    </label>
                  )}
                />
                <Controller
                  name="include_other_pokedex"
                  control={control}
                  render={({ field }) => (
                    <label
                      className={cn(
                        "flex items-center gap-2 text-sm",
                        !includePokedex && "text-muted-foreground opacity-50",
                      )}
                    >
                      <Checkbox
                        checked={field.value}
                        onCheckedChange={field.onChange}
                        disabled={isPending || !includePokedex}
                      />
                      Include Other Pokédex (National, Special) in completion
                    </label>
                  )}
                />
                <Controller
                  name="include_mythical_pokemon"
                  control={control}
                  render={({ field }) => (
                    <label className="flex items-center gap-2 text-sm">
                      <Checkbox
                        checked={field.value}
                        onCheckedChange={field.onChange}
                        disabled={isPending}
                      />
                      Include Mythical Pokémon in completion
                    </label>
                  )}
                />
              </div>
            </div>
          )}
        </FieldGroup>
      </FieldSet>

      <div className="flex gap-2">
        <Button
          type="button"
          variant="outline"
          onClick={onCancel}
          disabled={isPending}
        >
          Cancel
        </Button>
        <Button type="submit" disabled={isPending} className="flex-1">
          {isPending ? (
            <>
              <Spinner className="mr-2" />
              {isEditMode ? "Saving..." : "Creating..."}
            </>
          ) : isEditMode ? (
            "Save Changes"
          ) : (
            "Create Playthrough"
          )}
        </Button>
      </div>
    </form>
  );
};
