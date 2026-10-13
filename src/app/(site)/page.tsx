import { publicArt } from "@/modules/reference/shared/data/public-art";
import { HomePage } from "@/features/site/components/home-page";

export default function Page() {
  return <HomePage art={publicArt} />;
}
