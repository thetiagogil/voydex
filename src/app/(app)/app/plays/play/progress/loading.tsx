import { PageLoadingState } from "@/shared/components/page-loading-state";

/*
 * Progress's views change at once under the Play's head.
 */
export default function Loading() {
  return <PageLoadingState band={false} />;
}
