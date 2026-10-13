import Link from "next/link";

import { type AuthErrorCode, authErrorCopy } from "@/features/auth/auth-errors";
import { type AuthMode, getAuthPageHref } from "@/features/auth/auth-mode";
import { AuthModeSwitch } from "@/features/auth/components/auth-mode-switch";
import { AuthSubmitButton } from "@/features/auth/components/auth-submit-button";
import { PasswordInput } from "@/features/auth/components/password-input";
import {
  logInWithPassword,
  signUpWithPassword,
} from "@/features/auth/server/auth-actions";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  Alert,
  AlertDescription,
  AlertTitle,
} from "@/shared/components/ui/alert";
import { Card } from "@/shared/components/ui/card";
import {
  Field,
  FieldDescription,
  FieldLabel,
} from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";

type AuthPanelProps = {
  error: AuthErrorCode | null;
  mode: AuthMode;
  next: string;
};

const copy: Record<AuthMode, { lede: string; title: string }> = {
  "log-in": {
    lede: "Your Plays are right where you left them.",
    title: "Welcome back",
  },
  "sign-up": {
    lede: "Keep every playthrough in one place.",
    title: "Start your journey",
  },
};

/* Log in and Sign up share one quiet card; the switch at the top moves between them. */
export const AuthPanel = ({ error, mode, next }: AuthPanelProps) => {
  const isSignUp = mode === "sign-up";
  const action = isSignUp ? signUpWithPassword : logInWithPassword;
  const errorCopy = error ? authErrorCopy[error] : null;

  return (
    <Card className="relative z-1 gap-0 px-5 pt-5.5 pb-6 sm:px-7.5 sm:pt-7 sm:pb-7.5">
      <AuthModeSwitch mode={mode} next={next} />
      <h1 className="text-28 sm:text-32 mt-6 mb-1 tracking-[-0.015em]">
        {copy[mode].title}
      </h1>
      <p className="text-ink-2 mb-5.5 font-semibold">{copy[mode].lede}</p>
      {errorCopy ? (
        <Alert variant="destructive" className="mb-4.5">
          <AppIcon icon={appIcons.status.error} />
          <AlertTitle>{errorCopy.title}</AlertTitle>
          <AlertDescription>
            {errorCopy.description}
            {errorCopy.offersLogIn && isSignUp ? (
              <>
                {" "}
                <Link
                  href={getAuthPageHref({ mode: "log-in", next })}
                  className="rounded-xs font-extrabold underline"
                >
                  Log in
                </Link>
              </>
            ) : null}
          </AlertDescription>
        </Alert>
      ) : null}
      <form action={action} className="flex flex-col gap-4">
        <input type="hidden" name="next" value={next} />
        <Field>
          <FieldLabel htmlFor="email">Email</FieldLabel>
          <Input
            id="email"
            name="email"
            type="email"
            autoComplete="email"
            placeholder="you@example.com"
            required
          />
        </Field>
        <Field>
          <FieldLabel htmlFor="password">Password</FieldLabel>
          <PasswordInput
            id="password"
            name="password"
            autoComplete={isSignUp ? "new-password" : "current-password"}
            aria-describedby={isSignUp ? "password-hint" : undefined}
            required
            minLength={6}
            maxLength={72}
          />
          {isSignUp ? (
            <FieldDescription id="password-hint">
              At least 6 characters
            </FieldDescription>
          ) : null}
        </Field>
        {isSignUp ? (
          <Field>
            <FieldLabel htmlFor="confirmPassword">Confirm password</FieldLabel>
            <PasswordInput
              id="confirmPassword"
              name="confirmPassword"
              autoComplete="new-password"
              required
              minLength={6}
              maxLength={72}
            />
          </Field>
        ) : null}
        <AuthSubmitButton mode={mode} />
      </form>
    </Card>
  );
};
