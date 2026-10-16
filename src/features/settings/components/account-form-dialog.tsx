"use client";

import { type ReactNode, useActionState, useState } from "react";
import { toast } from "sonner";

import type { AccountFormState } from "@/features/settings/server/account-actions";
import { SETTINGS_ACTION_CLASS_NAME } from "@/features/settings/components/settings-action";
import { Button } from "@/shared/components/ui/button";
import {
  Dialog,
  DialogClose,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from "@/shared/components/ui/dialog";
import { Spinner } from "@/shared/components/ui/spinner";

type AccountFormDialogProps = {
  action: (
    previousState: AccountFormState,
    formData: FormData,
  ) => Promise<AccountFormState>;
  description: ReactNode;
  /* The one field, given the error to show under it and whether it is invalid. */
  field: (error: string | null) => ReactNode;
  pendingLabel: string;
  submitLabel: string;
  title: string;
  triggerLabel: string;
};

const initialState: AccountFormState = { message: null, status: "idle" };

/*
 * An account change that needs one field (Change email, Change password): a
 * flat button opens a dialog with the field. The error stays under the
 * field; once it works the dialog closes and a toast says what happens next.
 */
export const AccountFormDialog = ({
  action,
  description,
  field,
  pendingLabel,
  submitLabel,
  title,
  triggerLabel,
}: AccountFormDialogProps) => {
  const [open, setOpen] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [, formAction, isPending] = useActionState(
    async (previousState: AccountFormState, formData: FormData) => {
      const result = await action(previousState, formData);

      if (result.status === "success") {
        setError(null);
        setOpen(false);
        toast.success(result.message);
      } else {
        setError(result.message);
      }

      return result;
    },
    initialState,
  );

  return (
    <Dialog
      open={open}
      onOpenChange={(nextOpen) => {
        setOpen(nextOpen);
        if (!nextOpen) {
          setError(null);
        }
      }}
    >
      <DialogTrigger
        render={
          <Button variant="outline" className={SETTINGS_ACTION_CLASS_NAME} />
        }
      >
        {triggerLabel}
      </DialogTrigger>
      <DialogContent className="sm:max-w-md">
        <DialogHeader>
          <DialogTitle>{title}</DialogTitle>
          <DialogDescription>{description}</DialogDescription>
        </DialogHeader>
        <form action={formAction} className="flex flex-col gap-5">
          {field(error)}
          <DialogFooter>
            <DialogClose render={<Button variant="outline" />}>
              Cancel
            </DialogClose>
            <Button type="submit" disabled={isPending} aria-busy={isPending}>
              {isPending ? <Spinner data-icon="inline-start" /> : null}
              {isPending ? pendingLabel : submitLabel}
            </Button>
          </DialogFooter>
        </form>
      </DialogContent>
    </Dialog>
  );
};
