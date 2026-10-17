import type { PublicArt } from "@/config/public-art";
import type { ResolveStartIntent } from "@/config/start-intent";
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
import { getAuthPeekCast } from "@/features/auth/components/auth-peek";
import { EmailSentActions } from "@/features/auth/components/email-sent-actions";
import { StartIntentCard } from "@/features/auth/components/start-intent-card";
import { StartIntentFields } from "@/features/auth/components/start-intent-fields";
import { resendSignUpEmail } from "@/features/auth/server/auth-actions";
import { readAuthEmail } from "@/features/auth/server/auth-email-cookie";
import { TextLink } from "@/shared/components/text-link";
import { readAuthStartIntent } from "@/features/auth/utils/resolve-start-intent";

export type CheckEmailSearchParams = {
  error?: string;
  game?: string;
  next?: string;
  partner?: string;
  sent?: string;
};

type CheckEmailPageProps = {
  art: Pick<PublicArt, "gameColour" | "gameCover" | "pokemon">;
  resolveIntent?: ResolveStartIntent;
  searchParams?: Promise<CheckEmailSearchParams>;
};

/*
 * Check your email (v3 `checkemail`), after a sign-up that still needs its
 * email confirmed. The picked game waits with the new account, so the link
 * works on any device.
 */
export const CheckEmailPage = async ({
  art,
  resolveIntent,
  searchParams,
}: CheckEmailPageProps) => {
  const params = await searchParams;
  const next = getSafeAuthRedirectPath(params?.next, LOGIN_DEFAULT_NEXT);
  const error = parseAuthErrorCode(params?.error);
  const [intent, email] = await Promise.all([
    readAuthStartIntent(params, resolveIntent),
    readAuthEmail(),
  ]);
  const preview = intent?.preview ?? null;

  return (
    <AuthFrame cast={getAuthPeekCast(art, "sign-up", preview)}>
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
        {preview
          ? `Open it on any device and your ${preview.gameShortName} Play will be waiting.`
          : "Open it on any device to finish signing up."}
      </AuthHeading>
      {preview ? <StartIntentCard art={art} intent={preview} /> : null}
      {error ? <AuthErrorAlert error={error} /> : null}
      <EmailSentActions
        resendAction={resendSignUpEmail}
        sentAgain={!error && parseAuthLinkSent(params?.sent) === "again"}
        hiddenFields={
          <>
            <input type="hidden" name="next" value={next} />
            <StartIntentFields intent={intent?.value ?? null} />
          </>
        }
        alternative={
          <TextLink
            href={getAuthPageHref({
              intent: intent?.value,
              mode: "sign-up",
              next,
            })}
          >
            Use a different email
          </TextLink>
        }
        note="Nothing yet? It can take a minute, and it may be in your spam folder."
      />
    </AuthFrame>
  );
};
