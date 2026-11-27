import type { ReactNode } from "react";

import { SectionHead } from "@/shared/components/section-head";
import { cn } from "@/shared/utils/cn";

/* What a specimen sits on, so each look is judged on the surface it meets. */
type GalleryGround = "action" | "band" | "card" | "ground";

const groundClassNames: Record<GalleryGround, string> = {
  action: "bg-action text-white",
  band: "bg-band",
  card: "bg-surface shadow-card",
  ground: "bg-bg border-line border",
};

/* One family of components, under its own heading and address. */
export const GallerySection = ({
  children,
  description,
  id,
  title,
}: {
  children: ReactNode;
  description: string;
  id: string;
  title: string;
}) => (
  <section
    id={id}
    aria-labelledby={`${id}-title`}
    className="flex scroll-mt-6 flex-col gap-4"
  >
    <SectionHead
      title={title}
      titleId={`${id}-title`}
      description={description}
    />
    {children}
  </section>
);

/* A named group inside a family, such as a button's sizes. */
export const GalleryGroup = ({
  children,
  columns = 2,
  title,
}: {
  children: ReactNode;
  columns?: 1 | 2 | 3;
  title: string;
}) => (
  <div className="flex flex-col gap-3">
    <h3 className="title-card">{title}</h3>
    <div
      className={cn(
        "grid gap-4",
        columns > 1 && "sm:grid-cols-2",
        columns === 3 && "lg:grid-cols-3",
      )}
    >
      {children}
    </div>
  </div>
);

/* One look of one component, on the ground it meets, with its name under it. */
export const Specimen = ({
  children,
  className,
  ground = "card",
  label,
  note,
}: {
  children: ReactNode;
  className?: string;
  ground?: GalleryGround;
  /* The component and the option that gives this look. */
  label: string;
  /* Where the app uses it. */
  note?: string;
}) => (
  <figure className="flex min-w-0 flex-col gap-2">
    <div
      className={cn(
        "flex min-h-20 flex-wrap items-center gap-3 rounded-lg p-4",
        groundClassNames[ground],
        className,
      )}
    >
      {children}
    </div>
    <figcaption className="text-ink-2 copy-meta">
      <span className="text-ink font-extrabold">{label}</span>
      {note ? ` · ${note}` : null}
    </figcaption>
  </figure>
);
