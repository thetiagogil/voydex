import type { ReactNode } from "react";

import { AuthSubmitButton } from "@/features/auth/components/auth-submit-button";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

type EmailSentActionsProps = {
  /* The other way on, such as "Back to Log in" or "Use a different email". */
  alternative: ReactNode;
  /* The fields "Send it again" needs, such as where to go afterwards. */
  hiddenFields?: ReactNode;
  /* A quiet line under the actions. */
  note?: ReactNode;
  resendAction: (formData: FormData) => Promise<void>;
  /* "Send it again" was just used and worked. */
  sentAgain: boolean;
};

/* A sent email's way on (v3 `.au-acts`): send it again, or go another way. */
export const EmailSentActions = ({
  alternative,
  hiddenFields,
  note,
  resendAction,
  sentAgain,
}: EmailSentActionsProps) => (
  <>
    <div className="mt-1.5 mb-1 flex flex-wrap items-center gap-x-4 gap-y-3">
      <form action={resendAction}>
        {hiddenFields}
        <AuthSubmitButton
          size="sm"
          variant="secondary"
          label="Send it again"
          pendingLabel="Sending..."
        />
      </form>
      {alternative}
    </div>
    <p
      role="status"
      className="text-13 text-ok-deep mt-2 flex items-center gap-1.5 font-bold empty:hidden"
    >
      {sentAgain ? (
        <>
          <AppIcon icon={appIcons.status.active} size="sm" aria-hidden />
          We sent it again.
        </>
      ) : null}
    </p>
    {note ? (
      <p className="text-13 text-ink-2 mt-3.5 font-semibold">{note}</p>
    ) : null}
  </>
);
