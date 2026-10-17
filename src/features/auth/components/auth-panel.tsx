import type { PublicArt } from "@/config/public-art";
import { appRoutes } from "@/config/routes";
import {
  getStartPlayHref,
  type StartIntentPreview,
} from "@/config/start-intent";
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
import { StartIntentCard } from "@/features/auth/components/start-intent-card";
import { StartIntentFields } from "@/features/auth/components/start-intent-fields";
import {
  logInWithPassword,
  signUpWithPassword,
} from "@/features/auth/server/auth-actions";
import {
  Field,
  FieldDescription,
  FieldLabel,
} from "@/shared/components/ui/field";
import type { DevTestAccount } from "@/features/auth/dev-test-account";
import type { AuthStartIntent } from "@/features/auth/utils/resolve-start-intent";
import { TextLink } from "@/shared/components/text-link";
import { Input } from "@/shared/components/ui/input";

type AuthPanelProps = {
  art: Pick<PublicArt, "gameCover">;
  /* The email typed last time, filled back in after a failed try. */
  email: string | null;
  error: AuthErrorCode | null;
  /* The pick from Start a Play, with how the page shows it. */
  intent: AuthStartIntent | null;
  mode: AuthMode;
  next: string;
  /* Local development only: the seeded accounts Log in can fill in. */
  testAccounts?: DevTestAccount[] | null;
};

const getCopy = (mode: AuthMode, intent: StartIntentPreview | null) => {
  if (mode === "sign-up") {
    return intent
      ? {
          lede: "Create your account and your first Play will be ready.",
          pendingLabel: "Creating account...",
          submit: "Create account and start",
          /* The game is on the card below, so the title stays the same. */
          title: "Start your journey",
        }
      : {
          lede: "Keep every playthrough in one place.",
          pendingLabel: "Creating account...",
          submit: "Create account",
          title: "Start your journey",
        };
  }

  return {
    lede: intent
      ? "Log in and your new Play will be ready."
      : "Your Plays are right where you left them.",
    pendingLabel: "Logging in...",
    submit: intent ? "Log in and start" : "Log in",
    title: "Welcome back",
  };
};

const emailErrors = new Set<AuthErrorCode>(["email-invalid", "email-taken"]);
const passwordErrors = new Set<AuthErrorCode>(["credentials", "weak-password"]);

/*
 * Log in and Sign up share one quiet card; the switch at the top moves
 * between them. Coming from Start a Play, the card says what you're starting
 * and keeps it through either form.
 */
export const AuthPanel = ({
  art,
  email,
  error,
  intent,
  mode,
  next,
  testAccounts,
}: AuthPanelProps) => {
  const isSignUp = mode === "sign-up";
  const action = isSignUp ? signUpWithPassword : logInWithPassword;
  const preview = intent?.preview ?? null;
  const copy = getCopy(mode, preview);
  const intentValue = intent?.value ?? null;

  return (
    <>
      <AuthModeSwitch intent={intentValue} mode={mode} next={next} />
      <AuthHeading title={copy.title}>{copy.lede}</AuthHeading>
      {intentValue && preview ? (
        <StartIntentCard
          art={art}
          intent={preview}
          changeHref={getStartPlayHref({ gameSlug: intentValue.gameSlug })}
        />
      ) : null}
      <form action={action} className="flex flex-col gap-4">
        <input type="hidden" name="next" value={next} />
        <StartIntentFields intent={intentValue} />
        {!isSignUp && testAccounts?.length ? (
          <DevAccountPicker accounts={testAccounts} />
        ) : null}
        <Field>
          <FieldLabel htmlFor="email">Email</FieldLabel>
          <Input
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
            description={
              error === "email-taken" && preview
                ? `Log in instead and your ${preview.gameShortName} Play will be ready.`
                : undefined
            }
            links={{
              "forgot-password": getForgotPasswordHref({ next }),
              "log-in": isSignUp
                ? getAuthPageHref({ intent: intentValue, mode: "log-in", next })
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
