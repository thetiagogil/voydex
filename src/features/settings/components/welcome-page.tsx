import { WelcomeForm } from "@/features/settings/components/welcome-form";

type WelcomePageProps = {
  destination: string;
  displayName: string | null;
  gameShortName: string | null;
  trainerSince: string | null;
};

/*
 * Welcome to Voydex (v3 `onboard`), right after signing up: a little about
 * you before your first Play. Coming from Start a Play, it says that Play is
 * ready and leads straight to it.
 * TODO(v3-data): a first-run flag on the profile, so Voydex knows to show
 * Welcome once; today it opens only from the sign-up link.
 */
export const WelcomePage = ({
  destination,
  displayName,
  gameShortName,
  trainerSince,
}: WelcomePageProps) => (
  <div className="flex w-full min-w-0 flex-col pt-1 pb-6 sm:pb-12">
    <header className="pt-4 text-center sm:pt-6">
      <h1 className="text-32 sm:text-44 leading-[1.05] tracking-[-0.02em]">
        Welcome to Voydex
      </h1>
      <p className="text-ink-2 sm:text-17 text-16 mt-2.5 font-semibold">
        {gameShortName
          ? `Your ${gameShortName} Play is ready. First, a little about you.`
          : "Before your first Play, tell us a little about you."}
      </p>
    </header>
    <WelcomeForm
      destination={destination}
      displayName={displayName}
      gameShortName={gameShortName}
      trainerSince={trainerSince}
    />
  </div>
);
