import { redirect } from "next/navigation";
import { getActiveModuleDefaultHrefFromCookies } from "@/lib/modules/active-module";
const AppEntryPage = async () => {
  redirect(await getActiveModuleDefaultHrefFromCookies());
};
export default AppEntryPage;
