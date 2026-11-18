import { PageLoadingState } from "@/shared/components/page-loading-state";

/*
 * Mainline's pages change at once; one still reading the device shows its
 * band and a spinner until it has.
 */
export default function Loading() {
  return <PageLoadingState />;
}
