"use server";

import { isAuthSessionMissingError } from "@supabase/supabase-js";
import { redirect } from "next/navigation";

import { getAuthErrorCode } from "@/features/auth/auth-errors";
import {
  getForgotPasswordHref,
  getResetPasswordHref,
} from "@/features/auth/auth-mode";
import {
  forgetAuthEmail,
  readAuthEmail,
  rememberAuthEmail,
} from "@/features/auth/server/auth-email-cookie";
import {
  buildAuthCallbackUrl,
  readEmail,
  readPassword,
  readSafeNext,
  resolveAuthRedirectPath,
} from "@/features/auth/server/auth-form";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * Sends the reset link. Supabase answers the same whether or not the email
 * has an account, so the sent state never says which.
 */
const sendResetLink = async (email: string, next: string) => {
  const supabase = await createServerSupabaseClient();
  const { error } = await supabase.auth.resetPasswordForEmail(email, {
    redirectTo: await buildAuthCallbackUrl(getResetPasswordHref({ next })),
  });

  return error ? getAuthErrorCode(error.code) : null;
};

/* Reset your password: "Send the link". */
export const requestPasswordReset = async (formData: FormData) => {
  const next = await readSafeNext(formData);
  const email = readEmail(formData);

  if (!email) {
    redirect(getForgotPasswordHref({ error: "missing-fields", next }));
  }

  await rememberAuthEmail(email);
  const error = await sendResetLink(email, next);

  redirect(getForgotPasswordHref({ error, next, sent: error ? null : "once" }));
};

/* The sent state's "Send it again", to the email just used. */
export const resendPasswordReset = async (formData: FormData) => {
  const next = await readSafeNext(formData);
  const email = await readAuthEmail();

  if (!email) {
    /* The remembered email has gone: back to the form. */
    redirect(getForgotPasswordHref({ next }));
  }

  const error = await sendResetLink(email, next);

  redirect(
    getForgotPasswordHref({ error, next, sent: error ? "once" : "again" }),
  );
};

/*
 * Choose a new password: the reset link signed you in on this device, so the
 * new password is saved to that session and you carry on logged in.
 */
export const saveNewPassword = async (formData: FormData) => {
  const next = await readSafeNext(formData);
  const password = readPassword(formData);

  if (!password) {
    redirect(getResetPasswordHref({ error: "missing-fields", next }));
  }

  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);

  if (!claimsResult?.data?.claims?.sub) {
    redirect(getForgotPasswordHref({ error: "reset-link-expired", next }));
  }

  const { error } = await supabase.auth.updateUser({ password });

  if (error) {
    redirect(
      isAuthSessionMissingError(error)
        ? getForgotPasswordHref({ error: "reset-link-expired", next })
        : getResetPasswordHref({ error: getAuthErrorCode(error.code), next }),
    );
  }

  await forgetAuthEmail();
  redirect(await resolveAuthRedirectPath(next));
};
