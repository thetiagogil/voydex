import { deletePlay, getPlay, updatePlay } from "@/features/play/server/play";
import { NextRequest, NextResponse } from "next/server";

export async function GET(
  _req: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id } = await params;
    if (!id)
      return NextResponse.json({ error: "Missing play id" }, { status: 400 });

    const { data, error, breadcrumbs } = await getPlay(id);

    if (error)
      return NextResponse.json(
        { error: "message" in error ? error.message : String(error) },
        { status: 500 },
      );
    if (!data)
      return NextResponse.json({ error: "Play not found" }, { status: 404 });

    return NextResponse.json({ data, breadcrumbs });
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}

export async function PUT(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id } = await params;
    if (!id)
      return NextResponse.json({ error: "Missing play id" }, { status: 400 });

    const body = await request.json();
    const { data, error } = await updatePlay(id, body);

    if (error)
      return NextResponse.json(
        { error: "message" in error ? error.message : String(error) },
        { status: 500 },
      );

    return NextResponse.json(data);
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}

export async function DELETE(
  _req: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id } = await params;
    if (!id)
      return NextResponse.json({ error: "Missing play id" }, { status: 400 });

    const { error } = await deletePlay(id);

    if (error)
      return NextResponse.json(
        { error: "message" in error ? error.message : String(error) },
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
