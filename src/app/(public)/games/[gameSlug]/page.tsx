import { redirect } from "next/navigation";

import { appRoutes } from "@/config/routes";

type PageProps = {
  params: Promise<{
    gameSlug: string;
  }>;
};

export default async function Page({ params }: PageProps) {
  const { gameSlug } = await params;

  redirect(appRoutes.codexGame(gameSlug));
}
