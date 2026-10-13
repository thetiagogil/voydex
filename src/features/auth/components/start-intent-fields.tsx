import { startIntentParams, type StartIntent } from "@/config/start-intent";

/* The pick from Start a Play, carried through a sign-in form as hidden fields. */
export const StartIntentFields = ({
  intent,
}: {
  intent: StartIntent | null;
}) =>
  intent ? (
    <>
      <input
        type="hidden"
        name={startIntentParams.game}
        value={intent.gameSlug}
      />
      {intent.partnerSpeciesSlug ? (
        <input
          type="hidden"
          name={startIntentParams.partner}
          value={intent.partnerSpeciesSlug}
        />
      ) : null}
    </>
  ) : null;
