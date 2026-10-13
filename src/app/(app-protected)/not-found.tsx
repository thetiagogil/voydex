import { ProtectedNotFoundPage } from "@/features/system/components/protected-not-found-page";
import { notFoundPokemon } from "@/modules/reference/public-art";

export default function NotFound() {
  return <ProtectedNotFoundPage pokemon={notFoundPokemon} />;
}
