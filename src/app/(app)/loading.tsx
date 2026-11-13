import { PageLoadingState } from "@/shared/components/page-loading-state";

/*
 * A page changes at once; if it still reads the device, its band and a
 * spinner show until it has.
 */
export default function Loading() {
  return <PageLoadingState />;
}
