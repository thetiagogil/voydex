import type { ReactNode } from "react";

/*
 * Mainline's pages, plus the `modal` slot: New Play opens over the page you
 * were on when you reach it from inside Mainline.
 */
export default function MainlineLayout({
  children,
  modal,
}: Readonly<{ children: ReactNode; modal: ReactNode }>) {
  return (
    <>
      {children}
      {modal}
    </>
  );
}
