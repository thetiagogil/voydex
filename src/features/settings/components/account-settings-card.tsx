import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { Field, FieldGroup, FieldLabel } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";

type AccountSettingsCardProps = {
  email: string;
};

export const AccountSettingsCard = ({ email }: AccountSettingsCardProps) => {
  return (
    <Card size="sm">
      <CardHeader>
        <CardTitle>Account</CardTitle>
        <CardDescription>Your signed-in credentials.</CardDescription>
      </CardHeader>
      <CardContent>
        <FieldGroup className="gap-3">
          <Field data-disabled>
            <FieldLabel htmlFor="settings-email">Email</FieldLabel>
            <Input id="settings-email" value={email} disabled />
          </Field>
        </FieldGroup>
      </CardContent>
    </Card>
  );
};
