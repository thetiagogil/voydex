import { collectEntry } from "@/features/play/server/play-collectibles";
import { NextRequest, NextResponse } from "next/server";

export async function POST(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    const { collectibleEntryId } = await request.json();

    if (!playId || !collectibleEntryId)
      return NextResponse.json(
        { error: "Missing required fields" },
        { status: 400 },
      );

    const { data, error } = await collectEntry(playId, collectibleEntryId);

    if (error)
      return NextResponse.json(
        { error: "message" in error ? error.message : String(error) },
        { status: 500 },
      );

    return NextResponse.json(data, { status: 201 });
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}
