"use server";

import { redirect } from "next/navigation";

import { appRoutes } from "@/config/routes";
import {
  readStartIntentFormData,
  START_INTENT_METADATA_KEY,
  type StartIntent,
} from "@/config/start-intent";
import {
  type AuthErrorCode,
  getAuthErrorCode,
} from "@/features/auth/auth-errors";
import {
  type AuthMode,
  getAuthPageHref,
  getCheckEmailHref,
  getWelcomeHref,
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
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

type AuthFormContext = {
  intent: StartIntent | null;
  mode: AuthMode;
  next: string;
};

/* Back to the form with a fixed reason; Supabase's own message never reaches the page. */
const redirectWithAuthError = (
  error: AuthErrorCode,
  context: AuthFormContext,
): never => redirect(getAuthPageHref({ error, ...context }));

const readAuthForm = async (formData: FormData, mode: AuthMode) => {
  const context: AuthFormContext = {
    intent: readStartIntentFormData(formData),
    mode,
    next: await readSafeNext(formData),
  };
  const email = readEmail(formData);
  const password = readPassword(formData);

  if (!email || !password) {
    if (email) {
      await rememberAuthEmail(email);
    }
    return redirectWithAuthError("missing-fields", context);
  }

  return { context, email, password };
};

export const logInWithPassword = async (formData: FormData) => {
  const { context, email, password } = await readAuthForm(formData, "log-in");
  const supabase = await createServerSupabaseClient();
  const { error } = await supabase.auth.signInWithPassword({
    email,
    password,
  });

  if (error) {
    await rememberAuthEmail(email);
    redirectWithAuthError(getAuthErrorCode(error.code), context);
  }

  await forgetAuthEmail();

  if (context.intent) {
    /*
     * Logging in from Start a Play: the pick waits on the account, where
     * Mainline starts the Play from it. If it can't be stored, you still land
     * in Mainline and can start the Play from there.
     */
    await supabase.auth.updateUser({
      data: { [START_INTENT_METADATA_KEY]: context.intent },
    });
    redirect(appRoutes.mainline);
  }

  redirect(await resolveAuthRedirectPath(context.next));
};

/*
 * One password with Show, no confirmation field (v3). A new account goes to
 * Welcome first; when its email still needs confirming, to Check your email,
 * and the email's link leads to Welcome. The game picked on Start a Play is
 * stored on the account, so the link works on any device.
 */
export const signUpWithPassword = async (formData: FormData) => {
  const { context, email, password } = await readAuthForm(formData, "sign-up");
  const welcomeHref = getWelcomeHref(context.next);
  const supabase = await createServerSupabaseClient();
  const { data, error } = await supabase.auth.signUp({
    email,
    password,
    options: {
      data: context.intent
        ? { [START_INTENT_METADATA_KEY]: context.intent }
        : undefined,
      emailRedirectTo: await buildAuthCallbackUrl(welcomeHref),
    },
  });

  if (error) {
    await rememberAuthEmail(email);
    redirectWithAuthError(getAuthErrorCode(error.code), context);
  }

  if (data.session) {
    await forgetAuthEmail();
    redirect(welcomeHref);
  }

  await rememberAuthEmail(email);
  redirect(getCheckEmailHref({ intent: context.intent, next: context.next }));
};

/* Check your email's "Send it again": the same confirmation link, to the email just used. */
export const resendSignUpEmail = async (formData: FormData) => {
  const intent = readStartIntentFormData(formData);
  const next = await readSafeNext(formData);
  const email = await readAuthEmail();

  if (!email) {
    /* The remembered email has gone: start Sign up again with the same pick. */
    redirect(getAuthPageHref({ intent, mode: "sign-up", next }));
  }

  const supabase = await createServerSupabaseClient();
  const { error } = await supabase.auth.resend({
    email,
    options: {
      emailRedirectTo: await buildAuthCallbackUrl(getWelcomeHref(next)),
    },
    type: "signup",
  });

  redirect(
    getCheckEmailHref({
      error: error ? getAuthErrorCode(error.code) : null,
      intent,
      next,
      resent: !error,
    }),
  );
};
