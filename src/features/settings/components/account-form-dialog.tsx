"use client";

import { type ReactNode, useActionState, useRef, useState } from "react";
import { toast } from "sonner";

import type { AccountFormState } from "@/features/settings/client/account-changes";
import { SETTINGS_ACTION_CLASS_NAME } from "@/features/settings/components/settings-action";
import { NeedsInternet } from "@/shared/components/needs-internet";
import { Button } from "@/shared/components/ui/button";
import { OverlayDialog } from "@/shared/components/overlay-dialog";
import { DialogClose } from "@/shared/components/ui/dialog";
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
 * Both talk to the account, so offline the button is switched off and says
 * why; the dialog stays open if the connection drops while you type, and
 * only its Send waits for the connection.
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
  const triggerRef = useRef<HTMLButtonElement>(null);
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
    <>
      <NeedsInternet>
        {(offline) => (
          <Button
            ref={triggerRef}
            variant="secondary"
            className={SETTINGS_ACTION_CLASS_NAME}
            disabled={offline}
            aria-haspopup="dialog"
            onClick={() => setOpen(true)}
          >
            {triggerLabel}
          </Button>
        )}
      </NeedsInternet>
      <OverlayDialog
        open={open}
        onOpenChange={(nextOpen) => {
          setOpen(nextOpen);
          if (!nextOpen) {
            setError(null);
          }
        }}
        finalFocus={triggerRef}
        title={title}
        description={description}
        initialFocus
        form={{ action: formAction }}
        footer={
          <>
            <DialogClose render={<Button variant="secondary" />}>
              Cancel
            </DialogClose>
            <NeedsInternet>
              {(offline) => (
                <Button
                  type="submit"
                  disabled={isPending || offline}
                  aria-busy={isPending}
                >
                  {isPending ? <Spinner data-icon="inline-start" /> : null}
                  {isPending ? pendingLabel : submitLabel}
                </Button>
              )}
            </NeedsInternet>
          </>
        }
      >
        <div className="flex flex-col gap-4">{field(error)}</div>
      </OverlayDialog>
    </>
  );
};
