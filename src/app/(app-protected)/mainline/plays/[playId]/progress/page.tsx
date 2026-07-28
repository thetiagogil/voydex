import { redirect } from "next/navigation";

import { appRoutes } from "@/config/routes";

type MainlinePlayProgressRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function MainlinePlayProgressRoute({
  params,
}: MainlinePlayProgressRouteProps) {
  const { playId } = await params;

  redirect(appRoutes.mainlinePlayProgressStory(playId));
}
