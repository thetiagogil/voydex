import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import { PublicNotFoundPage } from "@/features/system/components/public-not-found-page";
import { notFoundPokemon } from "@/modules/reference/shared/data/public-art";

export default function NotFound() {
  return (
    <PublicAppShell>
      <PublicNotFoundPage pokemon={notFoundPokemon} />
    </PublicAppShell>
  );
}
