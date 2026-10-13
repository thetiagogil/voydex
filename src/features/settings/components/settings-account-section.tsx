import { SettingsLogOutButton } from "@/features/settings/components/settings-log-out-button";
import { DetailSectionCard } from "@/shared/components/detail-section-card";

/*
 * v3's Account section (`.set-sec` with `.trow` rows): what you do, one line on
 * what it means, and its button on the right. On phones the button drops below.
 */
type SettingsAccountSectionProps = {
  signOutAction: () => Promise<void>;
};

export const SettingsAccountSection = ({
  signOutAction,
}: SettingsAccountSectionProps) => {
  return (
    <DetailSectionCard title="Account">
      <div className="flex flex-col items-start gap-5 py-3.5 sm:flex-row sm:items-center sm:justify-between">
        <div className="flex min-w-0 flex-col gap-0.5">
          <p className="text-15 font-extrabold">Log out</p>
          <p className="text-ink-2 text-13 font-semibold">On this device</p>
        </div>
        <form action={signOutAction} className="shrink-0">
          <SettingsLogOutButton />
        </form>
      </div>
    </DetailSectionCard>
  );
};
