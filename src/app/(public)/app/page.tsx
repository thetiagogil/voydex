import { redirect } from "next/navigation";

import { modules } from "@/config/modules";
import { getActiveModuleKeyFromCookies } from "@/lib/modules/active-module";

export default async function AppEntryPage() {
  const activeModuleKey = await getActiveModuleKeyFromCookies();

  redirect(modules[activeModuleKey].defaultHref);
}
