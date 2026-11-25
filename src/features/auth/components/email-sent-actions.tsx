"use client";

import type { ReactNode } from "react";

import { useAuthFormAction } from "@/features/auth/client/use-auth-form-action";
import { AuthSubmitButton } from "@/features/auth/components/auth-submit-button";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

type EmailSentActionsProps = {
  /* The other way on, such as "Back to Log in". */
  alternative: ReactNode;
  /* The fields "Send it again" needs, such as where to go afterwards. */
  hiddenFields?: ReactNode;
  /* Sends it again and answers with the address to show next. */
  resendAction: (formData: FormData) => Promise<string>;
  /* "Send it again" was just used and worked. */
  sentAgain: boolean;
};

/* A sent email's way on (v3 `.au-acts`): send it again, or go another way. */
export const EmailSentActions = ({
  alternative,
  hiddenFields,
  resendAction,
  sentAgain,
}: EmailSentActionsProps) => {
  const resend = useAuthFormAction(resendAction);

  return (
    <>
      <div className="mt-1.5 mb-1 flex flex-wrap items-center gap-x-4 gap-y-3">
        <form action={resend}>
          {hiddenFields}
          <AuthSubmitButton
            size="default"
            variant="secondary"
            label="Send it again"
            pendingLabel="Sending..."
          />
        </form>
        {alternative}
      </div>
      <p
        role="status"
        className="copy-label text-ok-deep mt-2 flex items-center gap-1.5 empty:hidden"
      >
        {sentAgain ? (
          <>
            <AppIcon icon={appIcons.status.active} size="sm" aria-hidden />
            We sent it again.
          </>
        ) : null}
      </p>
    </>
  );
};
