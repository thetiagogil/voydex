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
import { AuthSubmitButton } from "@/features/auth/components/auth-submit-button";
import { EmailSentActions } from "@/features/auth/components/email-sent-actions";
import { readAuthEmail } from "@/features/auth/server/auth-email-cookie";
import {
  requestPasswordReset,
  resendPasswordReset,
} from "@/features/auth/server/password-reset-actions";
import { Field, FieldLabel } from "@/shared/components/ui/field";
import { TextLink } from "@/shared/components/text-link";
import { Input } from "@/shared/components/ui/input";

export type ForgotPasswordSearchParams = {
  error?: string;
  next?: string;
  sent?: string;
};

type ForgotPasswordPageProps = {
  searchParams?: Promise<ForgotPasswordSearchParams>;
};

/*
 * Reset your password (v3 `forgot`): one email field and "Send the link",
 * then its sent state, which never says whether the email has an account.
 */
export const ForgotPasswordPage = async ({
  searchParams,
}: ForgotPasswordPageProps) => {
  const params = await searchParams;
  const next = getSafeAuthRedirectPath(params?.next, LOGIN_DEFAULT_NEXT);
  const error = parseAuthErrorCode(params?.error);
  const sent = parseAuthLinkSent(params?.sent);
  const email = await readAuthEmail();
  const logInHref = getAuthPageHref({ mode: "log-in", next });

  if (sent) {
    return (
      <AuthFrame>
        <AuthMailMark />
        <AuthHeading className="mt-2.5" title="Check your email">
          {email ? (
            <>
              If <b className="text-ink font-extrabold">{email}</b> has an
              account, a link to choose a new password is on its way.
            </>
          ) : (
            "If that email has an account, a link to choose a new password is on its way."
          )}{" "}
          It works for an hour.
        </AuthHeading>
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
    <AuthFrame>
      <AuthHeading className="mt-2.5" title="Reset your password">
        Enter the email you signed up with and we&apos;ll send you a link to
        choose a new one.
      </AuthHeading>
      {error ? <AuthErrorAlert error={error} /> : null}
      <form action={requestPasswordReset} className="flex flex-col gap-4">
        <input type="hidden" name="next" value={next} />
        <Field>
          <FieldLabel htmlFor="email">Email</FieldLabel>
          <Input
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
      <p className="text-13 text-ink-2 mt-4.5 text-center font-semibold">
        <TextLink href={logInHref}>Back to Log in</TextLink>
      </p>
    </AuthFrame>
  );
};
