import { ProtectedNotFoundPage } from "@/features/system/components/protected-not-found-page";
import { notFoundPokemon } from "@/modules/reference/shared/data/public-art";

export default function NotFound() {
  return <ProtectedNotFoundPage pokemon={notFoundPokemon} />;
}
