import { MainlineHomeRoute } from "@/modules/mainline/features/home/mainline-home-route";

type PageProps = {
  searchParams: Promise<Record<string, string | string[] | undefined>>;
};

/* Home, read on the device. */
export default async function MainlineHomePageRoute({
  searchParams,
}: PageProps) {
  const { play } = await searchParams;

  return (
    <MainlineHomeRoute
      requestedPlayId={typeof play === "string" ? play : null}
    />
  );
}
