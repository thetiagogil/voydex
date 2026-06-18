import { Card, CardContent, CardHeader } from "@/shared/components/ui/card";
import { Skeleton } from "@/shared/components/ui/skeleton";

type PageLoadingStateProps = {
  className?: string;
  lines?: number;
};

export function PageLoadingState({
  className,
  lines = 3,
}: PageLoadingStateProps) {
  return (
    <Card className={className}>
      <CardHeader>
        <Skeleton className="h-5 w-48" />
        <Skeleton className="h-4 w-full max-w-xl" />
      </CardHeader>
      <CardContent className="flex flex-col gap-3">
        {Array.from({ length: lines }, (_, index) => (
          <Skeleton key={index} className="h-10" aria-hidden="true" />
        ))}
      </CardContent>
    </Card>
  );
}
