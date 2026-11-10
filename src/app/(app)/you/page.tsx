import { signOut } from "@/features/app-shell/server/sign-out-action";

import { YouRoute } from "./you-route";

export default function Page() {
  return <YouRoute signOutAction={signOut} />;
}
