"use client";

import type { GameData } from "@/features/game/types";
import type { DlcVersionGroup } from "@/features/play/types";
import type { PlayPokedexSettingsAvailability } from "@/features/play/utils/pokedex-settings";
import { ApiRequestError } from "@/lib/utils/fetcher";
import { FieldWrapper } from "@/shared/components/field-wrapper";
import { Icon, IconType } from "@/shared/components/icon";
import { Button } from "@/shared/components/ui/button";
import { Checkbox } from "@/shared/components/ui/checkbox";
import { FieldGroup, FieldSet } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/shared/components/ui/select";
import { Spinner } from "@/shared/components/ui/spinner";
import {
  PLAY_STATUSES,
  STATUS_VARIANT_META,
} from "@/shared/constants/play-statuses";
import { zodResolver } from "@hookform/resolvers/zod";
import { useEffect } from "react";
import { Controller, type FieldErrors, useForm } from "react-hook-form";
import {
  playCreateSchema,
  playEditSchema,
  type PlayCreateFormValues,
  type PlayEditFormValues,
} from "./schemas";

type PlayFormFieldName =
  | keyof PlayCreateFormValues
  | keyof PlayEditFormValues;

const PLAY_FIELD_IDS: Partial<Record<PlayFormFieldName, string>> = {
  name: "playName",
  notes: "notes",
  status_slug: "status",
};

const PLAY_FIELD_ORDER: PlayFormFieldName[] = ["name", "status_slug", "notes"];

const focusFieldElement = (id?: string) => {
  if (!id || typeof document === "undefined") {
    return;
  }

  window.requestAnimationFrame(() => {
    const element = document.getElementById(id);

    if (!(element instanceof HTMLElement)) {
      return;
    }

    element.focus();
    element.scrollIntoView({ block: "center", behavior: "smooth" });
  });
};

const getFirstPlayErrorField = (
  errors: FieldErrors<PlayCreateFormValues | PlayEditFormValues>,
) => {
  const errorRecord = errors as Partial<Record<PlayFormFieldName, unknown>>;

  return PLAY_FIELD_ORDER.find((field) => Boolean(errorRecord[field]));
};

const getNameFieldError = (error: unknown) => {
  if (error instanceof ApiRequestError && error.fieldErrors?.name) {
    return error.fieldErrors.name;
  }

  const message =
    error instanceof Error ? error.message.toLowerCase() : String(error).toLowerCase();

  return message.includes("already exists")
    ? "This play name is already in use."
    : null;
};

type PlayFormContentCreateProps = {
  mode: "create";
  game: GameData;
  availableDlcs?: DlcVersionGroup[];
  initialValues?: Partial<PlayCreateFormValues>;
  isPending: boolean;
  onSubmit: (data: PlayCreateFormValues) => Promise<void>;
  onCancel: () => void;
};

type PlayFormContentEditProps = {
  mode: "edit";
  game: GameData;
  availableDlcs?: DlcVersionGroup[];
  completion?: number;
  initialValues: PlayEditFormValues;
  pokedexSettingsAvailability: PlayPokedexSettingsAvailability;
  isPending: boolean;
  onSubmit: (data: PlayEditFormValues) => Promise<void>;
  onCancel: () => void;
};

type PlayFormContentProps =
  | PlayFormContentCreateProps
  | PlayFormContentEditProps;

export const PlayFormContent = (props: PlayFormContentProps) => {
  const { mode, game, isPending, onSubmit, onCancel } = props;
  const isEditMode = mode === "edit";
  const availableDlcs = props.availableDlcs ?? [];
  const completion = isEditMode ? (props.completion ?? 0) : 0;
  const isCompleted = completion === 100;
  const pokedexSettingsAvailability = isEditMode
    ? props.pokedexSettingsAvailability
    : {
        hasRegionalPokedex: false,
        hasOtherPokedex: false,
        hasMythicalPokemon: false,
      };

  const {
    register,
    handleSubmit,
    reset,
    control,
    setError,
    clearErrors,
    formState: { errors },
  } = useForm<PlayCreateFormValues | PlayEditFormValues>({
    resolver: zodResolver(isEditMode ? playEditSchema : playCreateSchema),
    shouldFocusError: false,
    defaultValues: isEditMode
      ? props.initialValues
      : { name: props.initialValues?.name || "" },
  });

  const editErrors = errors as FieldErrors<PlayEditFormValues>;
  const nameRegistration = register("name", {
    onChange: () => {
      if (errors.name?.type === "server") {
        clearErrors("name");
      }
    },
  });

  useEffect(() => {
    if (isEditMode) {
      reset(props.initialValues);
    }
  }, [isEditMode, props.initialValues, reset]);

  const handleFormSubmit = async (
    data: PlayCreateFormValues | PlayEditFormValues,
  ) => {
    clearErrors("root");

    try {
      if (isEditMode) {
        await onSubmit(data as PlayEditFormValues);
      } else {
        await onSubmit(data as PlayCreateFormValues);
      }
    } catch (error) {
      const nameError = getNameFieldError(error);

      if (nameError) {
        setError("name", {
          type: "server",
          message: nameError,
        });
        focusFieldElement(PLAY_FIELD_IDS.name);
        return;
      }

      setError("root", {
        type: "server",
        message:
          error instanceof Error
            ? error.message
            : "Failed to save the playthrough.",
      });
    }
  };

  const handleFormError = (
    formErrors: FieldErrors<PlayCreateFormValues | PlayEditFormValues>,
  ) => {
    const firstErrorField = getFirstPlayErrorField(formErrors);
    focusFieldElement(
      firstErrorField ? PLAY_FIELD_IDS[firstErrorField] : undefined,
    );
  };

  return (
    <form
      onSubmit={handleSubmit(handleFormSubmit, handleFormError)}
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
                {...nameRegistration}
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

          {isEditMode && (
            <FieldWrapper
              id="status"
              label="Status"
              error={editErrors.status_slug?.message}
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
                    <SelectTrigger
                      id="status"
                      aria-invalid={!!editErrors.status_slug}
                      aria-describedby={
                        editErrors.status_slug ? "status-error" : undefined
                      }
                    >
                      <SelectValue placeholder="Select status" />
                    </SelectTrigger>
                    <SelectContent>
                      {PLAY_STATUSES.map((slug) => {
                        const meta = STATUS_VARIANT_META[slug];
                        const isCompletedOption =
                          slug === "completed" && completion < 100;
                        return (
                          !isCompletedOption && (
                            <SelectItem key={slug} value={slug}>
                              <span className="flex items-center gap-2">
                                <Icon
                                  type={slug as IconType}
                                  className={meta.colors.icon}
                                />
                                {meta.label}
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
              error={editErrors.notes?.message}
            >
              <Input
                id="notes"
                placeholder="Add any notes about your playthrough..."
                disabled={isPending}
                {...register("notes")}
              />
            </FieldWrapper>
          )}

          {isEditMode &&
            (pokedexSettingsAvailability.hasRegionalPokedex ||
              pokedexSettingsAvailability.hasOtherPokedex ||
              pokedexSettingsAvailability.hasMythicalPokemon) && (
              <div className="space-y-3">
                <label className="text-sm font-medium">
                  Pokedex Completion Settings
                </label>
                <p className="text-muted-foreground text-xs">
                  Toggle which pokedex types count toward play completion. All
                  dexes remain visible regardless.
                </p>
                <div className="space-y-2">
                  {pokedexSettingsAvailability.hasRegionalPokedex && (
                    <Controller
                      name="include_pokedex"
                      control={control}
                      render={({ field }) => (
                        <label className="flex items-center gap-2 text-sm">
                          <Checkbox
                            checked={field.value}
                            onCheckedChange={(checked) => {
                              field.onChange(checked === true);
                            }}
                            disabled={isPending}
                          />
                          Include Regional Pokedex in completion
                        </label>
                      )}
                    />
                  )}

                  {pokedexSettingsAvailability.hasOtherPokedex && (
                    <Controller
                      name="include_other_pokedex"
                      control={control}
                      render={({ field }) => (
                        <label className="flex items-center gap-2 text-sm">
                          <Checkbox
                            checked={field.value}
                            onCheckedChange={(checked) => {
                              field.onChange(checked === true);
                            }}
                            disabled={isPending}
                          />
                          Include Other Pokedex (National, Special) in
                          completion
                        </label>
                      )}
                    />
                  )}

                  {pokedexSettingsAvailability.hasMythicalPokemon && (
                    <Controller
                      name="include_mythical_pokemon"
                      control={control}
                      render={({ field }) => (
                        <label className="flex items-center gap-2 text-sm">
                          <Checkbox
                            checked={field.value}
                            onCheckedChange={(checked) => {
                              field.onChange(checked === true);
                            }}
                            disabled={isPending}
                          />
                          Include Mythical Pokemon in completion
                        </label>
                      )}
                    />
                  )}
                </div>
              </div>
            )}
        </FieldGroup>
      </FieldSet>

      {errors.root?.message ? (
        <p role="alert" className="text-destructive text-sm">
          {errors.root.message}
        </p>
      ) : null}

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
