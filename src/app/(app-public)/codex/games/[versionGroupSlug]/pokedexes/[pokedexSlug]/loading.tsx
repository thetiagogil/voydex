import { PageLoadingState } from "@/shared/components/page-loading-state";

/* Inside the Codex layout: the bar stays, one spinner in the content region. */
export default function CodexLoading() {
  return <PageLoadingState />;
}
