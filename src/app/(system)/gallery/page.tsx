import type { Metadata } from "next";
import { notFound } from "next/navigation";

export const metadata: Metadata = {
  robots: { follow: false, index: false },
  title: "Component gallery · Voydex",
};

/*
 * The component gallery, for the redesign: shown only while developing. The
 * published app answers this address with Not found and never loads the
 * gallery's code.
 */
export default async function Page() {
  if (process.env.NODE_ENV === "development") {
    const { ComponentGallery } =
      await import("@/features/system/components/gallery/component-gallery");

    return <ComponentGallery />;
  }

  notFound();
}
