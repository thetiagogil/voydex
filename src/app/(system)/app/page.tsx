import { redirect } from "next/navigation";
import { getActiveModuleDefaultHrefFromCookies } from "@/features/app-shell/server/active-module";

export default async function AppEntryPage() {
  redirect(await getActiveModuleDefaultHrefFromCookies());
}
