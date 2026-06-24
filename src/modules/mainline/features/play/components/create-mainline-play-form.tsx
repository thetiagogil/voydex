"use client";

import Link from "next/link";
import { useActionState } from "react";
import { useFormStatus } from "react-dom";
import { ArrowLeft, CalendarDays, Gamepad2, Plus } from "lucide-react";
import { appRoutes } from "@/config/routes";
import { initialCreateMainlinePlayState } from "@/modules/mainline/features/play/create-mainline-play-action-state";
import type { CreateMainlinePlayPageData } from "@/modules/mainline/features/play/types";
import { createMainlinePlay } from "@/modules/mainline/features/play/server/create-play-action";
import { Alert, AlertDescription } from "@/shared/components/ui/alert";
import { Badge } from "@/shared/components/ui/badge";
import { Button } from "@/shared/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import {
  Field,
  FieldError,
  FieldGroup,
  FieldLabel,
  FieldLegend,
  FieldSet,
} from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";
import { Spinner } from "@/shared/components/ui/spinner";
import { Textarea } from "@/shared/components/ui/textarea";
import { formatPokemonDisplayText } from "@/shared/domain/pokemon/display-text";

type CreateMainlinePlayFormProps = {
  data: CreateMainlinePlayPageData;
};

const SubmitButton = () => {
  const { pending } = useFormStatus();
  return (
    <Button type="submit" disabled={pending}>
      {pending ? (
        <Spinner data-icon="inline-start" />
      ) : (
        <Plus data-icon="inline-start" />
      )}
      {pending ? "Creating..." : "Create play"}
    </Button>
  );
};

export const CreateMainlinePlayForm = ({
  data,
}: CreateMainlinePlayFormProps) => {
  const [state, formAction] = useActionState(
    createMainlinePlay,
    initialCreateMainlinePlayState,
  );
  return (
    <form action={formAction} className="grid gap-6 lg:grid-cols-[0.8fr_1.2fr]">
      {state.formError ? (
        <Alert variant="destructive" className="lg:col-span-2">
          <AlertDescription>{state.formError}</AlertDescription>
        </Alert>
      ) : null}

      <Card>
        <CardHeader>
          <CardTitle>Play details</CardTitle>
          <CardDescription>
            Name the save and add the optional context you want to remember.
          </CardDescription>
        </CardHeader>
        <CardContent>
          <FieldGroup>
            <Field>
              <FieldLabel htmlFor="play-name">Play name</FieldLabel>
              <Input
                id="play-name"
                name="name"
                placeholder="HeartGold replay"
                aria-invalid={Boolean(state.fieldErrors?.name)}
                required
              />
              <FieldError>{state.fieldErrors?.name}</FieldError>
            </Field>

            <Field>
              <FieldLabel htmlFor="trainer-name">Trainer name</FieldLabel>
              <Input id="trainer-name" name="trainerName" placeholder="TA" />
            </Field>

            <Field>
              <FieldLabel htmlFor="started-on">Started on</FieldLabel>
              <Input
                id="started-on"
                name="startedOn"
                type="date"
                aria-invalid={Boolean(state.fieldErrors?.startedOn)}
              />
              <FieldError>{state.fieldErrors?.startedOn}</FieldError>
            </Field>

            {data.statuses.length ? (
              <FieldSet>
                <FieldLegend>Status</FieldLegend>
                <div className="grid gap-2 sm:grid-cols-2">
                  {data.statuses.map((status) => (
                    <label key={status.id} className="cursor-pointer">
                      <input
                        type="radio"
                        name="statusId"
                        value={status.id}
                        defaultChecked={status.id === data.defaultStatusId}
                        className="peer sr-only"
                      />
                      <span className="border-app-surface-border bg-card/55 hover:bg-accent/35 peer-checked:border-primary/60 peer-checked:bg-primary/10 peer-focus-visible:ring-ring/50 flex min-h-11 items-center justify-between rounded-lg border px-3 text-sm font-medium transition-colors peer-focus-visible:ring-3">
                        {status.name}
                        {status.is_terminal ? (
                          <Badge variant="outline">Terminal</Badge>
                        ) : null}
                      </span>
                    </label>
                  ))}
                </div>
                <FieldError>{state.fieldErrors?.statusId}</FieldError>
              </FieldSet>
            ) : null}

            <Field>
              <FieldLabel htmlFor="notes">Notes</FieldLabel>
              <Textarea
                id="notes"
                name="notes"
                placeholder="Optional save-file context, challenge notes, or setup reminders."
              />
            </Field>
          </FieldGroup>
        </CardContent>
      </Card>

      <Card>
        <CardHeader>
          <CardTitle>Choose a game</CardTitle>
          <CardDescription>
            The game sets the story, Pokedex, collectible, and reference scopes
            for this play.
          </CardDescription>
        </CardHeader>
        <CardContent>
          <FieldSet>
            <FieldLegend className="sr-only">Game</FieldLegend>
            <div className="grid max-h-[34rem] gap-3 overflow-y-auto pr-1 sm:grid-cols-2">
              {data.games.map((option) => {
                const gameName = formatPokemonDisplayText(option.game.name);

                return (
                  <label key={option.game.id} className="cursor-pointer">
                    <input
                      type="radio"
                      name="gameId"
                      value={option.game.id}
                      className="peer sr-only"
                      required
                    />
                    <span className="border-app-surface-border bg-card/55 hover:bg-accent/35 peer-checked:border-primary/60 peer-checked:bg-primary/10 peer-focus-visible:ring-ring/50 flex min-h-28 gap-3 rounded-xl border p-3 transition-colors peer-focus-visible:ring-3">
                      <span className="bg-muted/70 text-muted-foreground flex aspect-[3/4] h-20 shrink-0 items-center justify-center overflow-hidden rounded-lg">
                        {option.coverImageUrl ? (
                          // eslint-disable-next-line @next/next/no-img-element
                          <img
                            src={option.coverImageUrl}
                            alt=""
                            className="size-full object-cover"
                          />
                        ) : (
                          <Gamepad2 className="size-5" />
                        )}
                      </span>
                      <span className="flex min-w-0 flex-1 flex-col gap-1">
                        <span className="truncate font-medium">{gameName}</span>
                        <span className="text-muted-foreground text-xs">
                          {option.generation?.name ?? "Unknown generation"}
                          {option.region
                            ? ` - ${formatPokemonDisplayText(option.region.name)}`
                            : ""}
                        </span>
                        <span className="text-muted-foreground text-xs">
                          {option.platforms.length
                            ? option.platforms
                                .map((platform) =>
                                  formatPokemonDisplayText(platform.name),
                                )
                                .join(", ")
                            : "Platform not set"}
                        </span>
                        <span className="text-muted-foreground mt-auto flex items-center gap-1 text-xs">
                          <CalendarDays aria-hidden />
                          {option.game.release_year}
                        </span>
                      </span>
                    </span>
                  </label>
                );
              })}
            </div>
            <FieldError>{state.fieldErrors?.gameId}</FieldError>
          </FieldSet>
        </CardContent>
      </Card>

      <div className="flex flex-col-reverse gap-3 sm:flex-row sm:justify-end lg:col-span-2">
        <Button
          render={<Link href={appRoutes.mainlinePlays} />}
          nativeButton={false}
          variant="outline"
        >
          <ArrowLeft data-icon="inline-start" />
          Back to plays
        </Button>
        <SubmitButton />
      </div>
    </form>
  );
};
