"use client";

import { useSearchParams } from "next/navigation";

import { Link } from "@/shared/components/link";

import { parseAuthErrorCode } from "@/features/auth/auth-errors";
import {
  getForgotPasswordHref,
  LOGIN_DEFAULT_NEXT,
} from "@/features/auth/auth-mode";
import { getSafeAuthRedirectPath } from "@/features/auth/auth-redirects";
import { AuthErrorAlert } from "@/features/auth/components/auth-error-alert";
import { AuthFrame, AuthHeading } from "@/features/auth/components/auth-frame";
import { AuthSubmitButton } from "@/features/auth/components/auth-submit-button";
import { PasswordInput } from "@/shared/components/password-input";
import { saveNewPassword } from "@/features/auth/client/auth-actions";
import { useAuthFormAction } from "@/features/auth/client/use-auth-form-action";
import { useAuthSession } from "@/platform/local-db/account-session";
import { PageLoadingState } from "@/shared/components/page-loading-state";
import { buttonVariants } from "@/shared/components/ui/button";
import {
  Field,
  FieldDescription,
  FieldLabel,
} from "@/shared/components/ui/field";

/*
 * Choose a new password (v3 `resetpw`): where the reset link lands, signed
 * in on this device. Nobody signed in means the link expired, was used, or
 * was opened elsewhere.
 */
export const ResetPasswordPage = () => {
  const params = useSearchParams();
  const session = useAuthSession();
  const saveAction = useAuthFormAction(saveNewPassword);
  const next = getSafeAuthRedirectPath(params.get("next"), LOGIN_DEFAULT_NEXT);
  const error = parseAuthErrorCode(params.get("error"));
  const email = session?.email ?? null;

  /* The browser's session is still being read. */
  if (session === undefined) {
    return <PageLoadingState />;
  }

  if (!session) {
    return (
      <AuthFrame>
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
    <AuthFrame>
      <AuthHeading className="mt-2.5" title="Choose a new password">
        {email ? (
          <>
            For <b className="text-ink font-extrabold">{email}</b>.{" "}
          </>
        ) : null}
        You&apos;ll stay logged in on this device.
      </AuthHeading>
      {error ? <AuthErrorAlert error={error} /> : null}
      <form action={saveAction} className="flex flex-col gap-4">
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
