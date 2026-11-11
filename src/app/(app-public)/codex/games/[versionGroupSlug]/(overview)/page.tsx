import { GameRoute } from "./game-route";

type PageProps = {
  params: Promise<{
    versionGroupSlug: string;
  }>;
  searchParams: Promise<{
    version?: string | string[];
  }>;
};

export default async function Page({ params, searchParams }: PageProps) {
  const [{ versionGroupSlug }, { version }] = await Promise.all([
    params,
    searchParams,
  ]);

  return (
    <GameRoute
      versionGroupSlug={versionGroupSlug}
      versionSlug={Array.isArray(version) ? version[0] : version}
    />
  );
}
