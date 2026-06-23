const PublicLayout = ({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) => {
  return (
    <div className="relative min-h-screen overflow-x-hidden">{children}</div>
  );
};
export default PublicLayout;
