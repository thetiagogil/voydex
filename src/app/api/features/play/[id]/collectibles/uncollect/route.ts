import { uncollectEntry } from "@/features/play/server/play-collectibles";
import { NextRequest, NextResponse } from "next/server";

export async function DELETE(
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

    const result = await uncollectEntry(playId, collectibleEntryId);

    if ("error" in result && result.error)
      return NextResponse.json(
        {
          error:
            "message" in result.error
              ? result.error.message
              : String(result.error),
        },
        { status: 500 },
      );

    return NextResponse.json({ success: true });
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}
