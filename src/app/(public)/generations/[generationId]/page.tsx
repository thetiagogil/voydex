import { redirect } from "next/navigation";

import { appRoutes } from "@/config/routes";

type PageProps = {
  params: Promise<{
    generationId: string;
  }>;
};

export default async function Page({ params }: PageProps) {
  const { generationId } = await params;

  redirect(appRoutes.codexGeneration(generationId));
}
