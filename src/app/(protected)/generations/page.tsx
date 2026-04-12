import { getDashboardRoute } from "@/shared/constants/routes";
import { redirect } from "next/navigation";

export default function GenerationsIndexPage() {
  redirect(getDashboardRoute());
}
