import { getGeneration } from "@/services/reference/generation";
import { NextRequest, NextResponse } from "next/server";

export async function GET(
  _req: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  const { id: generationId } = await params;

  if (!generationId)
    return NextResponse.json(
      { error: "Missing generation id" },
      { status: 400 },
    );

  const result = await getGeneration(generationId);
  const { data, error, breadcrumbs } = result as any;
  if (error) return NextResponse.json({ error }, { status: 500 });
  if (!data)
    return NextResponse.json({ error: "No generation found" }, { status: 404 });
  return NextResponse.json({ data, breadcrumbs }, { status: 200 });
}
