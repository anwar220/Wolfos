# classes3.dex

.class public Landroid/text/TextShaper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextShaper$GlyphsConsumer;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shapeText(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/TextPaint;Landroid/text/TextShaper$GlyphsConsumer;)V
    .registers 26

    move/from16 v13, p1

    move/from16 v14, p2

    add-int v0, v13, v14

    const/4 v1, 0x0

    move-object/from16 v15, p0

    move-object/from16 v12, p3

    invoke-static {v15, v13, v0, v12, v1}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v11

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v10

    add-int v5, v13, v14

    :try_start_15
    invoke-virtual {v11}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v6

    const/4 v0, 0x0

    invoke-virtual {v11, v0, v14}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v7
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_4c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v0, -0x1

    const/16 v16, -0x1

    const/16 v17, 0x0

    move-object v1, v10

    move-object/from16 v2, p4

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v18, v10

    move v10, v0

    move-object/from16 v19, v11

    move/from16 v11, v16

    move/from16 v12, v17

    :try_start_35
    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_46

    move-object/from16 v1, p5

    move-object/from16 v2, v18

    :try_start_3c
    invoke-virtual {v2, v1}, Landroid/text/TextLine;->shape(Landroid/text/TextShaper$GlyphsConsumer;)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_44

    invoke-static {v2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    nop

    return-void

    :catchall_44
    move-exception v0

    goto :goto_52

    :catchall_46
    move-exception v0

    move-object/from16 v1, p5

    move-object/from16 v2, v18

    goto :goto_52

    :catchall_4c
    move-exception v0

    move-object/from16 v1, p5

    move-object v2, v10

    move-object/from16 v19, v11

    :goto_52
    invoke-static {v2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    throw v0
.end method
