import { getGeneration } from "@/services/reference/generation";
import { NextRequest, NextResponse } from "next/server";

export async function GET(
  _req: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  const { id: genId } = await params;

  if (!genId)
    return NextResponse.json({ error: "Missing gen id" }, { status: 400 });

  const result = await getGeneration(genId);
  const { data, error, breadcrumbs } = result as any;
  if (error) return NextResponse.json({ error }, { status: 500 });
  if (!data)
    return NextResponse.json({ error: "No gen found" }, { status: 404 });
  return NextResponse.json({ data, breadcrumbs }, { status: 200 });
}
