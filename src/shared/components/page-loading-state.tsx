import { PageBand } from "@/shared/components/page-band";
import { Spinner } from "@/shared/components/ui/spinner";
import { cn } from "@/shared/utils/cn";

type PageLoadingStateProps = {
  className?: string;
  label?: string;
};

/*
 * The shell stays while a page loads: the band every page opens on, so the
 * top bar never sits on bare ground, then one spinner in the content region.
 */
export const PageLoadingState = ({
  className,
  label = "Loading",
}: PageLoadingStateProps) => {
  return (
    <>
      <PageBand>
        <div aria-hidden className="h-20 sm:h-24" />
      </PageBand>
      <div
        className={cn(
          "flex min-h-60 flex-1 items-center justify-center",
          className,
        )}
      >
        <Spinner aria-label={label} className="text-action size-7" />
      </div>
    </>
  );
};
