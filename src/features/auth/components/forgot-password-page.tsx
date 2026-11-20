"use client";

import { useSearchParams } from "next/navigation";

import { parseAuthErrorCode } from "@/features/auth/auth-errors";
import {
  getLogInHref,
  LOGIN_DEFAULT_NEXT,
  parseAuthLinkSent,
} from "@/features/auth/auth-links";
import { getSafeAuthRedirectPath } from "@/features/auth/auth-redirects";
import { AuthErrorAlert } from "@/features/auth/components/auth-error-alert";
import { AuthFrame, AuthMailMark } from "@/features/auth/components/auth-frame";
import { AuthSubmitButton } from "@/features/auth/components/auth-submit-button";
import { EmailSentActions } from "@/features/auth/components/email-sent-actions";
import {
  requestPasswordReset,
  resendPasswordReset,
} from "@/features/auth/client/auth-actions";
import { useRememberedAuthEmail } from "@/features/auth/client/auth-email";
import { useAuthFormAction } from "@/features/auth/client/use-auth-form-action";
import { Field, FieldLabel } from "@/shared/components/ui/field";
import { TextLink } from "@/shared/components/text-link";
import { Input } from "@/shared/components/ui/input";

/*
 * Reset your password (v3 `forgot`): one email field and "Send the link",
 * then its sent state, which never says whether the email has an account.
 */
export const ForgotPasswordPage = () => {
  const params = useSearchParams();
  const next = getSafeAuthRedirectPath(params.get("next"), LOGIN_DEFAULT_NEXT);
  const error = parseAuthErrorCode(params.get("error"));
  const sent = parseAuthLinkSent(params.get("sent"));
  const email = useRememberedAuthEmail();
  const requestAction = useAuthFormAction(requestPasswordReset);
  const logInHref = getLogInHref({ next });

  if (sent) {
    return (
      <AuthFrame
        title="Check your email"
        lede={
          <>
            {email ? (
              <>
                If <b className="font-extrabold">{email}</b> has an account, a
                link to choose a new password is on its way.
              </>
            ) : (
              "If that email has an account, a link to choose a new password is on its way."
            )}{" "}
            It works for an hour.
          </>
        }
      >
        <AuthMailMark />
        {error ? <AuthErrorAlert error={error} /> : null}
        <EmailSentActions
          resendAction={resendPasswordReset}
          sentAgain={sent === "again" && !error}
          hiddenFields={<input type="hidden" name="next" value={next} />}
          alternative={<TextLink href={logInHref}>Back to Log in</TextLink>}
        />
      </AuthFrame>
    );
  }

  return (
    <AuthFrame
      title="Reset your password"
      lede="Enter your account's email and we'll send you a link to choose a new one."
    >
      {error ? <AuthErrorAlert error={error} /> : null}
      <form action={requestAction} className="flex flex-col gap-4">
        <input type="hidden" name="next" value={next} />
        <Field>
          <FieldLabel htmlFor="email">Email</FieldLabel>
          <Input
            key={email ?? ""}
            id="email"
            name="email"
            type="email"
            autoComplete="email"
            placeholder="you@example.com"
            defaultValue={email ?? undefined}
            aria-invalid={error === "email-invalid" ? true : undefined}
            required
          />
        </Field>
        <AuthSubmitButton label="Send the link" pendingLabel="Sending..." />
      </form>
      <p className="copy-meta text-ink-2 mt-4.5 text-center">
        <TextLink href={logInHref}>Back to Log in</TextLink>
      </p>
    </AuthFrame>
  );
};
