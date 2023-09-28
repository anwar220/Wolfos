# classes3.dex

.class public Landroid/view/WindowLayout;
.super Ljava/lang/Object;


# static fields
.field private static final DEBUG:Z = false

.field static final MAX_X:I = 0x186a0

.field static final MAX_Y:I = 0x186a0

.field static final MIN_X:I = -0x186a0

.field static final MIN_Y:I = -0x186a0

.field private static final TAG:Ljava/lang/String;

.field public static final UNSPECIFIED_LENGTH:I = -0x1


# instance fields
.field private final mTempDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/view/WindowLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/WindowLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowLayout;->mTempDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static computeSurfaceSize(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;IILandroid/graphics/Rect;ZLandroid/graphics/Point;)V
    .registers 12

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_9

    move v0, p2

    move v1, p3

    goto :goto_1c

    :cond_9
    if-eqz p5, :cond_14

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_1c

    :cond_14
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    :goto_1c
    const/4 v2, 0x1

    if-ge v0, v2, :cond_20

    const/4 v0, 0x1

    :cond_20
    if-ge v1, v2, :cond_23

    const/4 v1, 0x1

    :cond_23
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    invoke-virtual {p6, v0, v1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method private getScaledFrame(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .registers 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->scale(F)V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    return-object v0
.end method


# virtual methods
.method public computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/view/InsetsVisibilities;Landroid/graphics/Rect;FLandroid/window/ClientWindowFrames;)V
    .registers 54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p10

    move-object/from16 v7, p11

    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v11, v9, 0x100

    const/16 v12, 0x100

    if-ne v11, v12, :cond_1e

    const/4 v11, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v11, 0x0

    :goto_1f
    iget-object v12, v7, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object v15, v7, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    iget-object v14, v7, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v13

    move/from16 v22, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->isFitInsetsIgnoringVisibility()Z

    move-result v9

    invoke-virtual {v2, v4, v13, v9}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsSides()I

    move-result v13

    and-int/lit8 v18, v13, 0x1

    if-eqz v18, :cond_40

    move-object/from16 v23, v14

    iget v14, v9, Landroid/graphics/Insets;->left:I

    goto :goto_43

    :cond_40
    move-object/from16 v23, v14

    const/4 v14, 0x0

    :goto_43
    and-int/lit8 v18, v13, 0x2

    if-eqz v18, :cond_4a

    iget v6, v9, Landroid/graphics/Insets;->top:I

    goto :goto_4b

    :cond_4a
    const/4 v6, 0x0

    :goto_4b
    and-int/lit8 v18, v13, 0x4

    if-eqz v18, :cond_54

    move/from16 v24, v8

    iget v8, v9, Landroid/graphics/Insets;->right:I

    goto :goto_57

    :cond_54
    move/from16 v24, v8

    const/4 v8, 0x0

    :goto_57
    and-int/lit8 v18, v13, 0x8

    if-eqz v18, :cond_60

    move/from16 v25, v13

    iget v13, v9, Landroid/graphics/Insets;->bottom:I

    goto :goto_63

    :cond_60
    move/from16 v25, v13

    const/4 v13, 0x0

    :goto_63
    move-object/from16 v26, v9

    iget v9, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v14

    move/from16 v27, v14

    iget v14, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v6

    move/from16 v28, v6

    iget v6, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v8

    move/from16 v29, v8

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v13

    invoke-virtual {v12, v9, v14, v6, v8}, Landroid/graphics/Rect;->set(IIII)V

    if-nez p9, :cond_95

    invoke-virtual {v15, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/high16 v6, 0x40000000  # 2.0f

    and-int/2addr v6, v10

    if-eqz v6, :cond_9e

    const/16 v6, 0x13

    invoke-virtual {v2, v6}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v6

    if-eqz v6, :cond_94

    const/4 v8, 0x0

    invoke-virtual {v6, v15, v8}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    :cond_94
    goto :goto_9e

    :cond_95
    if-nez v11, :cond_9a

    move-object/from16 v6, p9

    goto :goto_9b

    :cond_9a
    move-object v6, v12

    :goto_9b
    invoke-virtual {v15, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_9e
    :goto_9e
    invoke-static {}, Landroid/view/WindowLayoutStub;->getInstance()Landroid/view/WindowLayoutStub;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/WindowLayoutStub;->getLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v8

    iget-object v9, v0, Landroid/view/WindowLayout;->mTempDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v14, 0x0

    iput-boolean v14, v7, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    const/4 v14, 0x3

    const/high16 v18, 0x10000

    const/high16 v19, 0x3f800000  # 1.0f

    if-eq v6, v14, :cond_23b

    invoke-virtual {v8}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_23b

    invoke-virtual/range {p2 .. p2}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v14

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v21

    if-eqz v21, :cond_e2

    iget v4, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v30, v8

    iget v8, v14, Landroid/graphics/Rect;->top:I

    if-le v4, v8, :cond_e4

    nop

    invoke-virtual/range {v21 .. v21}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v9, Landroid/graphics/Rect;->top:I

    goto :goto_e4

    :cond_e2
    move-object/from16 v30, v8

    :cond_e4
    :goto_e4
    const/4 v8, 0x1

    if-ne v6, v8, :cond_104

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v8, v4, :cond_fb

    const/high16 v4, -0x80000000

    iput v4, v9, Landroid/graphics/Rect;->top:I

    const v8, 0x7fffffff

    iput v8, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_104

    :cond_fb
    const/high16 v4, -0x80000000

    const v8, 0x7fffffff

    iput v4, v9, Landroid/graphics/Rect;->left:I

    iput v8, v9, Landroid/graphics/Rect;->right:I

    :cond_104
    :goto_104
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v4, v4, v18

    if-eqz v4, :cond_10c

    const/4 v4, 0x1

    goto :goto_10d

    :cond_10c
    const/4 v4, 0x0

    :goto_10d
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v17

    const/4 v8, 0x1

    xor-int/lit8 v16, v17, 0x1

    move/from16 v17, v16

    invoke-virtual {v2, v8}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v16

    xor-int/lit8 v34, v16, 0x1

    move/from16 v8, v34

    move/from16 v34, v10

    const/4 v10, 0x5

    if-ne v5, v10, :cond_133

    if-eqz v11, :cond_133

    if-eqz v4, :cond_133

    if-nez v17, :cond_133

    if-eqz v6, :cond_12f

    const/4 v10, 0x1

    if-ne v6, v10, :cond_133

    :cond_12f
    const/high16 v10, -0x80000000

    iput v10, v9, Landroid/graphics/Rect;->top:I

    :cond_133
    const/4 v10, 0x5

    if-ne v5, v10, :cond_166

    if-eqz v11, :cond_166

    if-eqz v4, :cond_166

    if-nez v8, :cond_166

    if-eqz v6, :cond_145

    const/4 v10, 0x1

    if-ne v6, v10, :cond_142

    goto :goto_145

    :cond_142
    move/from16 v35, v8

    goto :goto_168

    :cond_145
    :goto_145
    invoke-static {}, Landroid/util/MiuiFreeformUtils;->getNavBarPosition()I

    move-result v10

    packed-switch v10, :pswitch_data_3ac

    :pswitch_14c  #0x3
    move/from16 v35, v8

    goto :goto_168

    :pswitch_14f  #0x4
    move/from16 v35, v8

    const v8, 0x7fffffff

    iput v8, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_168

    :pswitch_157  #0x2
    move/from16 v35, v8

    const v8, 0x7fffffff

    iput v8, v9, Landroid/graphics/Rect;->right:I

    goto :goto_168

    :pswitch_15f  #0x1
    move/from16 v35, v8

    const/high16 v8, -0x80000000

    iput v8, v9, Landroid/graphics/Rect;->left:I

    goto :goto_168

    :cond_166
    move/from16 v35, v8

    :goto_168
    if-eqz v11, :cond_1ae

    if-eqz v4, :cond_1ae

    if-eqz v6, :cond_177

    const/4 v8, 0x1

    if-ne v6, v8, :cond_172

    goto :goto_177

    :cond_172
    move-object/from16 v10, p8

    move/from16 v36, v4

    goto :goto_1b2

    :cond_177
    :goto_177
    nop

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v8

    move-object/from16 v10, p8

    invoke-virtual {v2, v14, v8, v10}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;ILandroid/view/InsetsVisibilities;)Landroid/graphics/Insets;

    move-result-object v8

    move/from16 v36, v4

    iget v4, v8, Landroid/graphics/Insets;->left:I

    if-lez v4, :cond_18d

    const/high16 v4, -0x80000000

    iput v4, v9, Landroid/graphics/Rect;->left:I

    goto :goto_18f

    :cond_18d
    const/high16 v4, -0x80000000

    :goto_18f
    iget v4, v8, Landroid/graphics/Insets;->top:I

    if-lez v4, :cond_197

    const/high16 v4, -0x80000000

    iput v4, v9, Landroid/graphics/Rect;->top:I

    :cond_197
    iget v4, v8, Landroid/graphics/Insets;->right:I

    if-lez v4, :cond_1a1

    const v4, 0x7fffffff

    iput v4, v9, Landroid/graphics/Rect;->right:I

    goto :goto_1a4

    :cond_1a1
    const v4, 0x7fffffff

    :goto_1a4
    iget v4, v8, Landroid/graphics/Insets;->bottom:I

    if-lez v4, :cond_1b2

    const v4, 0x7fffffff

    iput v4, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_1b2

    :cond_1ae
    move-object/from16 v10, p8

    move/from16 v36, v4

    :cond_1b2
    :goto_1b2
    const/16 v4, 0x7db

    move/from16 v8, v24

    if-ne v8, v4, :cond_1cf

    move/from16 v24, v6

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v6

    if-eqz v6, :cond_1d1

    invoke-virtual {v6, v14, v4}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    if-lez v2, :cond_1d1

    const v2, 0x7fffffff

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_1d1

    :cond_1cf
    move/from16 v24, v6

    :cond_1d1
    :goto_1d1
    if-eqz p9, :cond_1d7

    if-nez v11, :cond_1d7

    const/4 v2, 0x1

    goto :goto_1d8

    :cond_1d7
    const/4 v2, 0x0

    :goto_1d8
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v4

    if-nez v4, :cond_1e5

    if-eqz v11, :cond_1e5

    const/4 v4, 0x1

    if-eq v8, v4, :cond_1e5

    const/4 v4, 0x1

    goto :goto_1e6

    :cond_1e5
    const/4 v4, 0x0

    :goto_1e6
    if-nez v2, :cond_21d

    if-nez v4, :cond_21d

    iget-object v6, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v6, 0x5

    if-ne v5, v6, :cond_209

    move/from16 v6, p10

    move/from16 v31, v2

    invoke-direct {v0, v15, v6}, Landroid/view/WindowLayout;->getScaledFrame(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    move/from16 v32, v4

    div-float v4, v19, v6

    invoke-direct {v0, v2, v4}, Landroid/view/WindowLayout;->getScaledFrame(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_212

    :cond_209
    move/from16 v6, p10

    move/from16 v31, v2

    move/from16 v32, v4

    invoke-virtual {v15, v9}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    :goto_212
    iget-object v2, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v15}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    iput-boolean v2, v7, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    goto :goto_223

    :cond_21d
    move/from16 v6, p10

    move/from16 v31, v2

    move/from16 v32, v4

    :goto_223
    const/4 v2, 0x5

    if-ne v5, v2, :cond_237

    invoke-direct {v0, v12, v6}, Landroid/view/WindowLayout;->getScaledFrame(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    div-float v4, v19, v6

    invoke-direct {v0, v2, v4}, Landroid/view/WindowLayout;->getScaledFrame(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_247

    :cond_237
    invoke-virtual {v12, v9}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_247

    :cond_23b
    move-object/from16 v30, v8

    move/from16 v34, v10

    move/from16 v8, v24

    move-object/from16 v10, p8

    move/from16 v24, v6

    move/from16 v6, p10

    :goto_247
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_24f

    const/4 v2, 0x1

    goto :goto_250

    :cond_24f
    const/4 v2, 0x0

    :goto_250
    invoke-static/range {p5 .. p5}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v4

    if-eqz v2, :cond_26a

    const/16 v14, 0x7da

    if-eq v8, v14, :cond_26a

    if-nez v4, :cond_26a

    const v14, -0x186a0

    iput v14, v12, Landroid/graphics/Rect;->left:I

    iput v14, v12, Landroid/graphics/Rect;->top:I

    const v14, 0x186a0

    iput v14, v12, Landroid/graphics/Rect;->right:I

    iput v14, v12, Landroid/graphics/Rect;->bottom:I

    :cond_26a
    cmpl-float v14, v6, v19

    if-eqz v14, :cond_273

    const/4 v14, 0x5

    if-eq v5, v14, :cond_273

    const/4 v14, 0x1

    goto :goto_274

    :cond_273
    const/4 v14, 0x0

    :goto_274
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v7

    move/from16 v31, v8

    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v8, v8, 0x2000

    if-eqz v8, :cond_286

    const/4 v8, 0x1

    goto :goto_287

    :cond_286
    const/4 v8, 0x0

    :goto_287
    move/from16 v17, p6

    move/from16 v19, p7

    move-object/from16 v32, v9

    const/4 v9, -0x1

    move/from16 v10, v17

    if-eq v10, v9, :cond_297

    if-eqz v8, :cond_295

    goto :goto_297

    :cond_295
    move v9, v10

    goto :goto_29f

    :cond_297
    :goto_297
    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ltz v9, :cond_29e

    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_29f

    :cond_29e
    move v9, v5

    :goto_29f
    move/from16 v35, v11

    move/from16 v10, v19

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2a8

    if-eqz v8, :cond_2b4

    :cond_2a8
    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ltz v11, :cond_2af

    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_2b0

    :cond_2af
    move v11, v7

    :goto_2b0
    move/from16 v19, v11

    move/from16 v10, v19

    :cond_2b4
    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v11, v11, 0x4000

    const/high16 v19, 0x3f000000  # 0.5f

    if-eqz v11, :cond_2f8

    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gez v11, :cond_2c2

    move v11, v5

    goto :goto_2ce

    :cond_2c2
    if-eqz v14, :cond_2cc

    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v11, v11

    mul-float/2addr v11, v6

    add-float v11, v11, v19

    float-to-int v11, v11

    goto :goto_2ce

    :cond_2cc
    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_2ce
    move/from16 v17, v11

    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gez v11, :cond_2dd

    move v11, v7

    move/from16 v37, v9

    move v9, v11

    move/from16 v36, v13

    move/from16 v11, v17

    goto :goto_31c

    :cond_2dd
    if-eqz v14, :cond_2ee

    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v11, v11

    mul-float/2addr v11, v6

    add-float v11, v11, v19

    float-to-int v11, v11

    move/from16 v37, v9

    move v9, v11

    move/from16 v36, v13

    move/from16 v11, v17

    goto :goto_31c

    :cond_2ee
    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v37, v9

    move v9, v11

    move/from16 v36, v13

    move/from16 v11, v17

    goto :goto_31c

    :cond_2f8
    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v36, v13

    const/4 v13, -0x1

    if-ne v11, v13, :cond_301

    move v11, v5

    goto :goto_30a

    :cond_301
    if-eqz v14, :cond_309

    int-to-float v11, v9

    mul-float/2addr v11, v6

    add-float v11, v11, v19

    float-to-int v11, v11

    goto :goto_30a

    :cond_309
    move v11, v9

    :goto_30a
    iget v13, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v37, v9

    const/4 v9, -0x1

    if-ne v13, v9, :cond_313

    move v9, v7

    goto :goto_31c

    :cond_313
    if-eqz v14, :cond_31b

    int-to-float v9, v10

    mul-float/2addr v9, v6

    add-float v9, v9, v19

    float-to-int v9, v9

    goto :goto_31c

    :cond_31b
    move v9, v10

    :goto_31c
    if-eqz v14, :cond_329

    iget v13, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v13, v13

    mul-float/2addr v13, v6

    move/from16 v38, v10

    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    goto :goto_331

    :cond_329
    move/from16 v38, v10

    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v13, v10

    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v10, v10

    :goto_331
    if-eqz v4, :cond_341

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int v6, v6, v18

    if-nez v6, :cond_341

    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_341
    if-eqz v4, :cond_34f

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v39, v4

    const/4 v4, 0x1

    if-eq v6, v4, :cond_34d

    if-nez v2, :cond_34d

    goto :goto_352

    :cond_34d
    const/4 v4, 0x0

    goto :goto_352

    :cond_34f
    move/from16 v39, v4

    const/4 v4, 0x1

    :goto_352
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v33, v2

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    move/from16 v40, v14

    int-to-float v14, v5

    mul-float/2addr v2, v14

    add-float/2addr v2, v13

    float-to-int v2, v2

    iget v14, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    move/from16 v41, v5

    int-to-float v5, v7

    mul-float/2addr v14, v5

    add-float/2addr v14, v10

    float-to-int v5, v14

    move-object v14, v15

    move v15, v6

    move/from16 v16, v11

    move/from16 v17, v9

    move-object/from16 v18, v14

    move/from16 v19, v2

    move/from16 v20, v5

    move-object/from16 v21, v23

    invoke-static/range {v15 .. v21}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    if-eqz v4, :cond_381

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v5, v23

    invoke-static {v2, v12, v5}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_383

    :cond_381
    move-object/from16 v5, v23

    :goto_383
    if-eqz v8, :cond_3aa

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_3aa

    iget-object v2, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/high16 v2, 0x11000000

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v15, -0x11000001

    and-int/2addr v6, v15

    iget-object v15, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v6, v3, v15}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v6, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_3aa

    iget-object v6, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_3aa
    return-void

    nop

    :pswitch_data_3ac
    .packed-switch 0x1
        :pswitch_15f  #00000001
        :pswitch_157  #00000002
        :pswitch_14c  #00000003
        :pswitch_14f  #00000004
    .end packed-switch
.end method
