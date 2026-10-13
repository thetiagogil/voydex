import Link from "next/link";

import type { PublicArt } from "@/config/public-art";
import { parseAuthErrorCode } from "@/features/auth/auth-errors";
import {
  getForgotPasswordHref,
  LOGIN_DEFAULT_NEXT,
} from "@/features/auth/auth-mode";
import { getSafeAuthRedirectPath } from "@/features/auth/auth-redirects";
import { AuthErrorAlert } from "@/features/auth/components/auth-error-alert";
import { AuthFrame, AuthHeading } from "@/features/auth/components/auth-frame";
import { getAuthPeekCast } from "@/features/auth/components/auth-peek";
import { AuthSubmitButton } from "@/features/auth/components/auth-submit-button";
import { PasswordInput } from "@/shared/components/password-input";
import { saveNewPassword } from "@/features/auth/server/password-reset-actions";
import { buttonVariants } from "@/shared/components/ui/button";
import {
  Field,
  FieldDescription,
  FieldLabel,
} from "@/shared/components/ui/field";

export type ResetPasswordSearchParams = {
  error?: string;
  next?: string;
};

type ResetPasswordPageProps = {
  art: Pick<PublicArt, "pokemon">;
  /*
   * Who the reset link signed in, from the route; null when nobody is
   * signed in, because the link expired, was used, or opened elsewhere.
   */
  email: string | null;
  isSignedIn: boolean;
  searchParams?: Promise<ResetPasswordSearchParams>;
};

/* Choose a new password (v3 `resetpw`): where the reset link lands, signed in on this device. */
export const ResetPasswordPage = async ({
  art,
  email,
  isSignedIn,
  searchParams,
}: ResetPasswordPageProps) => {
  const params = await searchParams;
  const next = getSafeAuthRedirectPath(params?.next, LOGIN_DEFAULT_NEXT);
  const error = parseAuthErrorCode(params?.error);

  if (!isSignedIn) {
    return (
      <AuthFrame cast={getAuthPeekCast(art, "log-in")}>
        <AuthHeading className="mt-2.5" title="That link didn't work">
          It may have expired or been used already, or it was opened on another
          device. Ask for a new one and open it here.
        </AuthHeading>
        <Link
          href={getForgotPasswordHref({ next })}
          className={buttonVariants({ className: "w-full", size: "lg" })}
        >
          Send a new link
        </Link>
      </AuthFrame>
    );
  }

  return (
    <AuthFrame cast={getAuthPeekCast(art, "log-in")}>
      <AuthHeading className="mt-2.5" title="Choose a new password">
        {email ? (
          <>
            For <b className="text-ink font-extrabold">{email}</b>.{" "}
          </>
        ) : null}
        You&apos;ll stay logged in on this device.
      </AuthHeading>
      {error ? <AuthErrorAlert error={error} /> : null}
      <form action={saveNewPassword} className="flex flex-col gap-4">
        <input type="hidden" name="next" value={next} />
        <Field>
          <FieldLabel htmlFor="password">New password</FieldLabel>
          <PasswordInput
            id="password"
            name="password"
            autoComplete="new-password"
            aria-describedby="password-hint"
            aria-invalid={
              error === "weak-password" || error === "same-password"
                ? true
                : undefined
            }
            required
            minLength={6}
            maxLength={72}
          />
          <FieldDescription id="password-hint">
            At least 6 characters
          </FieldDescription>
        </Field>
        <AuthSubmitButton label="Save and log in" pendingLabel="Saving..." />
      </form>
    </AuthFrame>
  );
};
