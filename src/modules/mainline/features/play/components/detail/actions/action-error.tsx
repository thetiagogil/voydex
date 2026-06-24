type ActionErrorProps = {
  error: string | null;
};

export const ActionError = ({ error }: ActionErrorProps) => {
  if (!error) {
    return null;
  }

  return (
    <p role="alert" className="text-destructive text-xs">
      {error}
    </p>
  );
};
