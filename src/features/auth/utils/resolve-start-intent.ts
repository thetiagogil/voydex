import {
  readStartIntentParams,
  type ResolveStartIntent,
  type StartIntent,
  type StartIntentPreview,
} from "@/config/start-intent";

export type AuthStartIntent = {
  /* How the page shows the pick; null when the route had no way to resolve it. */
  preview: StartIntentPreview | null;
  value: StartIntent;
};

/*
 * The pick a sign-in page carries, from its `game` and `partner` query. A
 * pick the catalogue doesn't know is dropped, so it never reaches the
 * account; without a resolver it is kept as it came, shown without its card.
 */
export const readAuthStartIntent = async (
  params: { game?: string; partner?: string } | undefined,
  resolveIntent: ResolveStartIntent | undefined,
): Promise<AuthStartIntent | null> => {
  const value = params ? readStartIntentParams(params) : null;

  if (!value) {
    return null;
  }

  if (!resolveIntent) {
    return { preview: null, value };
  }

  const preview = await resolveIntent(value);

  if (!preview) {
    return null;
  }

  /* A partner the game doesn't offer is dropped; the game stays. */
  return {
    preview,
    value: preview.partner ? value : { gameSlug: value.gameSlug },
  };
};
