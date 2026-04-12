import { getGenerationOverview } from "@/features/generation/server/generation";
import { NextRequest, NextResponse } from "next/server";

export async function GET(
  _req: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: generationId } = await params;

    if (!generationId)
      return NextResponse.json(
        { error: "Missing generation id" },
        { status: 400 },
      );

    const { data, error } = await getGenerationOverview(generationId);

    if (error) {
      return NextResponse.json({ error }, { status: 500 });
    }

    if (!data) {
      return NextResponse.json(
        { error: "No generation found" },
        { status: 404 },
      );
    }

    return NextResponse.json({ data }, { status: 200 });
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}
