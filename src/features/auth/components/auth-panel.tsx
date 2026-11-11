"use client";

import { appRoutes } from "@/config/routes";
import type { AuthErrorCode } from "@/features/auth/auth-errors";
import {
  type AuthMode,
  getAuthPageHref,
  getForgotPasswordHref,
} from "@/features/auth/auth-mode";
import { AuthErrorAlert } from "@/features/auth/components/auth-error-alert";
import { AuthHeading } from "@/features/auth/components/auth-frame";
import { AuthModeSwitch } from "@/features/auth/components/auth-mode-switch";
import { AuthSubmitButton } from "@/features/auth/components/auth-submit-button";
import { DevAccountPicker } from "@/features/auth/components/dev-account-picker";
import { PasswordInput } from "@/shared/components/password-input";
import {
  logInWithPassword,
  signUpWithPassword,
} from "@/features/auth/client/auth-actions";
import { useAuthFormAction } from "@/features/auth/client/use-auth-form-action";
import {
  Field,
  FieldDescription,
  FieldLabel,
} from "@/shared/components/ui/field";
import type { DevTestAccount } from "@/features/auth/dev-test-account";
import { TextLink } from "@/shared/components/text-link";
import { Input } from "@/shared/components/ui/input";

type AuthPanelProps = {
  /* The email typed last time, filled back in after a failed try. */
  email: string | null;
  error: AuthErrorCode | null;
  mode: AuthMode;
  next: string;
  /* Local development only: the seeded accounts Log in can fill in. */
  testAccounts?: DevTestAccount[] | null;
};

const copyByMode = {
  "log-in": {
    lede: "Your Plays are right where you left them.",
    pendingLabel: "Logging in...",
    submit: "Log in",
    title: "Welcome back",
  },
  "sign-up": {
    lede: "Keep every playthrough in one place.",
    pendingLabel: "Creating account...",
    submit: "Create account",
    title: "Start your journey",
  },
} satisfies Record<AuthMode, Record<string, string>>;

const emailErrors = new Set<AuthErrorCode>(["email-invalid", "email-taken"]);
const passwordErrors = new Set<AuthErrorCode>(["credentials", "weak-password"]);

/*
 * Log in and Sign up share one quiet card; the switch at the top moves
 * between them.
 */
export const AuthPanel = ({
  email,
  error,
  mode,
  next,
  testAccounts,
}: AuthPanelProps) => {
  const isSignUp = mode === "sign-up";
  const action = useAuthFormAction(
    isSignUp ? signUpWithPassword : logInWithPassword,
  );
  const copy = copyByMode[mode];

  return (
    <>
      <AuthModeSwitch mode={mode} next={next} />
      <AuthHeading title={copy.title}>{copy.lede}</AuthHeading>
      <form action={action} className="flex flex-col gap-4">
        <input type="hidden" name="next" value={next} />
        {!isSignUp && testAccounts?.length ? (
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
            aria-invalid={error && emailErrors.has(error) ? true : undefined}
            required
          />
        </Field>
        <Field>
          <div className="flex items-baseline justify-between gap-3">
            <FieldLabel htmlFor="password">Password</FieldLabel>
            {isSignUp ? null : (
              <TextLink
                href={getForgotPasswordHref({ next })}
                className="text-13 relative after:absolute after:-inset-x-1 after:-inset-y-2.5"
              >
                Forgot password?
              </TextLink>
            )}
          </div>
          <PasswordInput
            id="password"
            name="password"
            autoComplete={isSignUp ? "new-password" : "current-password"}
            aria-describedby={isSignUp ? "password-hint" : undefined}
            aria-invalid={error && passwordErrors.has(error) ? true : undefined}
            required
            minLength={isSignUp ? 6 : undefined}
            maxLength={72}
          />
          {isSignUp ? (
            <FieldDescription id="password-hint">
              At least 6 characters
            </FieldDescription>
          ) : null}
        </Field>
        {error ? (
          <AuthErrorAlert
            error={error}
            links={{
              "forgot-password": getForgotPasswordHref({ next }),
              "log-in": isSignUp
                ? getAuthPageHref({ mode: "log-in", next })
                : undefined,
            }}
          />
        ) : null}
        <AuthSubmitButton
          label={copy.submit}
          pendingLabel={copy.pendingLabel}
        />
        {isSignUp ? (
          <p className="text-ink-3 text-13 mt-0.5 text-center leading-normal font-semibold">
            By creating an account, you agree to the{" "}
            <TextLink href={appRoutes.terms}>Terms</TextLink> and the{" "}
            <TextLink href={appRoutes.privacy}>Privacy policy</TextLink>.
          </p>
        ) : null}
      </form>
    </>
  );
};
