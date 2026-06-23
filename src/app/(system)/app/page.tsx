import { redirect } from "next/navigation";

import { getActiveModuleDefaultHrefFromCookies } from "@/lib/modules/active-module";

export default async function AppEntryPage() {
  redirect(await getActiveModuleDefaultHrefFromCookies());
}
