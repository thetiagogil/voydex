import { WelcomeForm } from "@/features/settings/components/welcome-form";
import type { ProfileIconChoice } from "@/features/settings/types";

type WelcomePageProps = {
  /* The Pokémon you can pick as your icon. */
  choices: readonly ProfileIconChoice[];
  destination: string;
  displayName: string | null;
  gameShortName: string | null;
  iconFormId: number | null;
  trainerSince: string | null;
};

/*
 * Welcome to Voydex (v3 `onboard`), right after signing up: a little about
 * you before your first Play. Coming from Start a Play, it says that Play is
 * ready and leads straight to it. It shows once: its route sends you on once
 * Welcome has been finished or skipped.
 */
export const WelcomePage = ({
  choices,
  destination,
  displayName,
  gameShortName,
  iconFormId,
  trainerSince,
}: WelcomePageProps) => (
  <div className="flex w-full min-w-0 flex-col pt-1 pb-6 sm:pb-12">
    <header className="pt-4 text-center sm:pt-6">
      <h1 className="title-hero">Welcome to Voydex</h1>
      <p className="text-ink-2 sm:text-17 text-16 mt-2.5 font-semibold">
        {gameShortName
          ? `Your ${gameShortName} Play is ready. First, a little about you.`
          : "Before your first Play, tell us a little about you."}
      </p>
    </header>
    <WelcomeForm
      choices={choices}
      destination={destination}
      displayName={displayName}
      gameShortName={gameShortName}
      iconFormId={iconFormId}
      trainerSince={trainerSince}
    />
  </div>
);
