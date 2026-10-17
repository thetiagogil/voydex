import { redirect } from "next/navigation";
import { getAuthDefaultRouteFromCookies } from "@/features/auth/server/auth-default-route";

export default async function AppEntryPage() {
  redirect(await getAuthDefaultRouteFromCookies());
}
