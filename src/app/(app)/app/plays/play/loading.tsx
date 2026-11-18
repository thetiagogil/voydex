import { PageLoadingState } from "@/shared/components/page-loading-state";

/*
 * A Play's sections change at once under the Play's head, which stays.
 */
export default function Loading() {
  return <PageLoadingState band={false} />;
}
