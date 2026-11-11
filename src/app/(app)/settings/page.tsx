import { signOut } from "@/features/app-shell/server/sign-out-action";

import { SettingsRoute } from "./settings-route";

export default function SettingsPage() {
  return <SettingsRoute signOutAction={signOut} />;
}
