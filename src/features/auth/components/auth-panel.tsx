"use client";

import type { AuthErrorCode } from "@/features/auth/auth-errors";
import { getForgotPasswordHref } from "@/features/auth/auth-links";
import { AuthErrorAlert } from "@/features/auth/components/auth-error-alert";
import { AuthHeading } from "@/features/auth/components/auth-frame";
import { AuthSubmitButton } from "@/features/auth/components/auth-submit-button";
import { DevAccountPicker } from "@/features/auth/components/dev-account-picker";
import { PasswordInput } from "@/shared/components/password-input";
import { logInWithPassword } from "@/features/auth/client/auth-actions";
import { useAuthFormAction } from "@/features/auth/client/use-auth-form-action";
import { Field, FieldLabel } from "@/shared/components/ui/field";
import type { DevTestAccount } from "@/features/auth/dev-test-account";
import { TextLink } from "@/shared/components/text-link";
import { Input } from "@/shared/components/ui/input";

type AuthPanelProps = {
  /* The email typed last time, filled back in after a failed try. */
  email: string | null;
  error: AuthErrorCode | null;
  next: string;
  /* Local development only: the seeded accounts Log in can fill in. */
  testAccounts?: DevTestAccount[] | null;
};

/* The Log in form: an email, a password, and the way to reset it. */
export const AuthPanel = ({
  email,
  error,
  next,
  testAccounts,
}: AuthPanelProps) => {
  const action = useAuthFormAction(logInWithPassword);
  const forgotPasswordHref = getForgotPasswordHref({ next });

  return (
    <>
      <AuthHeading className="mt-2.5" title="Welcome back">
        Log in to bring your Plays to this device.
      </AuthHeading>
      <form action={action} className="flex flex-col gap-4">
        <input type="hidden" name="next" value={next} />
        {testAccounts?.length ? (
          <DevAccountPicker accounts={testAccounts} />
        ) : null}
        <Field>
          <FieldLabel htmlFor="email">Email</FieldLabel>
          <Input
            /* The remembered email arrives after the page opens: fill it in then. */
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
        <Field>
          <div className="flex items-baseline justify-between gap-3">
            <FieldLabel htmlFor="password">Password</FieldLabel>
            <TextLink
              href={forgotPasswordHref}
              className="text-13 relative after:absolute after:-inset-x-1 after:-inset-y-2.5"
            >
              Forgot password?
            </TextLink>
          </div>
          <PasswordInput
            id="password"
            name="password"
            autoComplete="current-password"
            aria-invalid={error === "credentials" ? true : undefined}
            required
            maxLength={72}
          />
        </Field>
        {error ? (
          <AuthErrorAlert error={error} resetHref={forgotPasswordHref} />
        ) : null}
        <AuthSubmitButton label="Log in" pendingLabel="Logging in..." />
      </form>
    </>
  );
};
