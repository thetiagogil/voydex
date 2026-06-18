import { Card, CardContent, CardHeader } from "@/components/ui/card";
import { cn } from "@/lib/utils";

type PageLoadingStateProps = {
  className?: string;
  lines?: number;
};

export function PageLoadingState({
  className,
  lines = 3,
}: PageLoadingStateProps) {
  return (
    <Card className={cn("animate-pulse", className)}>
      <CardHeader>
        <div className="bg-muted h-5 w-48 rounded" />
        <div className="bg-muted h-4 w-full max-w-xl rounded" />
      </CardHeader>
      <CardContent className="space-y-3">
        {Array.from({ length: lines }, (_, index) => (
          <div
            key={index}
            className="bg-muted h-10 rounded"
            aria-hidden="true"
          />
        ))}
      </CardContent>
    </Card>
  );
}
