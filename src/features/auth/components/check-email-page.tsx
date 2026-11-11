"use client";

import { useSearchParams } from "next/navigation";

import { parseAuthErrorCode } from "@/features/auth/auth-errors";
import {
  getAuthPageHref,
  LOGIN_DEFAULT_NEXT,
  parseAuthLinkSent,
} from "@/features/auth/auth-mode";
import { getSafeAuthRedirectPath } from "@/features/auth/auth-redirects";
import { AuthErrorAlert } from "@/features/auth/components/auth-error-alert";
import {
  AuthFrame,
  AuthHeading,
  AuthMailMark,
} from "@/features/auth/components/auth-frame";
import { EmailSentActions } from "@/features/auth/components/email-sent-actions";
import { resendSignUpEmail } from "@/features/auth/client/auth-actions";
import { useRememberedAuthEmail } from "@/features/auth/client/auth-email";
import { TextLink } from "@/shared/components/text-link";

/*
 * Check your email (v3 `checkemail`), after a sign-up that still needs its
 * email confirmed.
 */
export const CheckEmailPage = () => {
  const params = useSearchParams();
  const next = getSafeAuthRedirectPath(params.get("next"), LOGIN_DEFAULT_NEXT);
  const error = parseAuthErrorCode(params.get("error"));
  const email = useRememberedAuthEmail();

  return (
    <AuthFrame>
      <AuthMailMark />
      <AuthHeading className="mt-2.5" title="Check your email">
        {email ? (
          <>
            We sent a link to <b className="text-ink font-extrabold">{email}</b>
            .{" "}
          </>
        ) : (
          "We sent a link to your email. "
        )}
        Open it on any device to finish signing up.
      </AuthHeading>
      {error ? <AuthErrorAlert error={error} /> : null}
      <EmailSentActions
        resendAction={resendSignUpEmail}
        sentAgain={!error && parseAuthLinkSent(params.get("sent")) === "again"}
        hiddenFields={<input type="hidden" name="next" value={next} />}
        alternative={
          <TextLink href={getAuthPageHref({ mode: "sign-up", next })}>
            Use a different email
          </TextLink>
        }
        note="Nothing yet? It can take a minute, and it may be in your spam folder."
      />
    </AuthFrame>
  );
};
