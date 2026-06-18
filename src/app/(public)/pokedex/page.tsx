import { redirect } from "next/navigation";

import { appRoutes } from "@/config/routes";

type PageProps = {
  searchParams: Promise<{
    q?: string;
  }>;
};

export default async function Page({ searchParams }: PageProps) {
  const { q } = await searchParams;
  const params = new URLSearchParams();

  if (q) {
    params.set("q", q);
  }

  redirect(
    params.size
      ? `${appRoutes.codexPokemon}?${params.toString()}`
      : appRoutes.codexPokemon,
  );
}
