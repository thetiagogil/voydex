import type { CreateMainlinePlayState } from "@/modules/mainline/features/play/create/create-mainline-play-action-state";
import type { CreateMainlinePlayPageData } from "@/modules/mainline/features/play/types";
import { Badge } from "@/shared/components/ui/badge";
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
import { Textarea } from "@/shared/components/ui/textarea";

type CreateMainlinePlayDetailsCardProps = {
  data: CreateMainlinePlayPageData;
  state: CreateMainlinePlayState;
};

export const CreateMainlinePlayDetailsCard = ({
  data,
  state,
}: CreateMainlinePlayDetailsCardProps) => {
  return (
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
  );
};
