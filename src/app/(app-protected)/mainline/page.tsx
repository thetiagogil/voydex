import { redirect } from "next/navigation";
import { appRoutes } from "@/config/routes";
const Page = () => {
  redirect(appRoutes.mainlineDashboard);
};
export default Page;
