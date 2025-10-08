import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";

export default async function Page({
  searchParams,
}: {
  searchParams: Promise<{ error: string }>;
}) {
  const params = await searchParams;

  return (
    <div>
      <div>
        <div>
          <Card>
            <CardHeader>
              <CardTitle>Sorry, something went wrong.</CardTitle>
            </CardHeader>
            <CardContent>
              {params?.error ? (
                <p>Code error: {params.error}</p>
              ) : (
                <p>An unspecified error occurred.</p>
              )}
            </CardContent>
          </Card>
        </div>
      </div>
    </div>
  );
}
