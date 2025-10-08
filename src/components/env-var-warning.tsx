import { Badge } from "./ui/badge";
import { Button } from "./ui/button";

export function EnvVarWarning() {
  return (
    <div>
      <Badge variant="outline">Supabase environment variables required</Badge>
      <div>
        <Button size="sm" variant="outline" disabled>
          Sign in
        </Button>
        <Button size="sm" variant="default" disabled>
          Sign up
        </Button>
      </div>
    </div>
  );
}
