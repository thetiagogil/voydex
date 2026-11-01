import type { ReactNode } from "react";

/* The small label over a part of the selected Pokémon, such as its moves; the list under it names itself by its id. */
export const TeamMemberSectionLabel = ({
  children,
  id,
}: {
  children: ReactNode;
  id: string;
}) => (
  <p id={id} className="text-ink-3 text-13 mb-2.5 font-extrabold">
    {children}
  </p>
);
