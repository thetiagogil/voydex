"use client";

import {
  playCreateSchema,
  playEditSchema,
  type PlayCreateFormValues,
  type PlayEditFormValues,
} from "@/components/forms/schemas/play-schemas";
import { FieldWrapper } from "@/components/shared/field-wrapper";
import { Button } from "@/components/ui/button";
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
import { zodResolver } from "@hookform/resolvers/zod";
import { useEffect } from "react";
import { Controller, useForm } from "react-hook-form";

interface PlayFormContentCreateProps {
  mode: "create";
  game: GameWithFullData;
  statuses?: never;
  initialValues?: Partial<PlayCreateFormValues>;
  isPending: boolean;
  onSubmit: (data: PlayCreateFormValues) => Promise<void>;
  onCancel: () => void;
}

interface PlayFormContentEditProps {
  mode: "edit";
  game: GameWithFullData;
  statuses: PlayStatusInfo[];
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

  const {
    register,
    handleSubmit,
    reset,
    control,
    formState: { errors },
  } = useForm<PlayCreateFormValues | PlayEditFormValues>({
    resolver: zodResolver(isEditMode ? playEditSchema : playCreateSchema),
    defaultValues: isEditMode
      ? props.initialValues
      : { name: props.initialValues?.name || "" },
  });

  // Reset form when initialValues change (for edit mode)
  useEffect(() => {
    if (isEditMode) {
      reset(props.initialValues);
    }
  }, [isEditMode, props.initialValues, reset]);

  const handleFormSubmit = async (
    data: PlayCreateFormValues | PlayEditFormValues,
  ) => {
    if (isEditMode) {
      await onSubmit(data as PlayEditFormValues);
    } else {
      await onSubmit(data as PlayCreateFormValues);
    }
  };

  return (
    <form onSubmit={handleSubmit(handleFormSubmit)} className="space-y-4">
      <FieldSet>
        <FieldGroup>
          {/* Playthrough Name */}
          <div className="space-y-2">
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
                Give your playthrough a memorable name, or leave blank for
                default
              </p>
            )}
          </div>

          {/* Status (edit mode only) */}
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
                    disabled={isPending}
                  >
                    <SelectTrigger>
                      <SelectValue placeholder="Select status" />
                    </SelectTrigger>
                    <SelectContent>
                      {props.statuses.map((status) => (
                        <SelectItem key={status.id} value={status.slug}>
                          {status.name}
                        </SelectItem>
                      ))}
                    </SelectContent>
                  </Select>
                )}
              />
            </FieldWrapper>
          )}

          {/* Notes (edit mode only) */}
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

          {/* Game info preview */}
          <div className="bg-muted/50 rounded-lg p-3">
            <p className="text-sm font-medium">{game.name}</p>
            <p className="text-muted-foreground text-xs">
              {game.generation?.name} • {game.region?.name}
            </p>
          </div>
        </FieldGroup>
      </FieldSet>

      <div className="flex gap-2">
        <Button
          type="button"
          variant="secondary"
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
