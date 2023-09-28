# classes4.dex

.class Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/PlatLogoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BubblesDrawable"
.end annotation


# static fields
.field private static final MAX_BUBBS:I = 0x7d0


# instance fields
.field public avoid:F

.field private final mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

.field private final mColorIds:[I

.field private mColors:[I

.field private mEmojiSet:I

.field private mNumBubbs:I

.field private final mPaint:Landroid/graphics/Paint;

.field public minR:F

.field public padding:F

.field final synthetic this$0:Lcom/android/internal/app/PlatLogoActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity;)V
    .registers 5

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mColorIds:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mColors:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mEmojiSet:I

    const/16 v0, 0x7d0

    new-array v0, v0, [Lcom/android/internal/app/PlatLogoActivity$Bubble;

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->avoid:F

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->padding:F

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->minR:F

    const/4 v0, 0x0

    :goto_2b
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mColorIds:[I

    array-length v2, v1

    if-ge v0, v2, :cond_3d

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mColors:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/internal/app/PlatLogoActivity;->getColor(I)I

    move-result v1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    array-length v2, v1

    if-ge v0, v2, :cond_4d

    new-instance v2, Lcom/android/internal/app/PlatLogoActivity$Bubble;

    invoke-direct {v2}, Lcom/android/internal/app/PlatLogoActivity$Bubble;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_4d
    return-void

    :array_4e
    .array-data 4
        0x1060057
        0x1060058
        0x1060059
        0x106004a
        0x106004b
        0x106004c
    .end array-data
.end method

.method private randomize()V
    .registers 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x40400000  # 3.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    iput v4, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    iget v5, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->avoid:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    const/4 v6, 0x1

    if-lez v5, :cond_51

    iget-object v5, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v5, v5, v4

    const/high16 v7, 0x40000000  # 2.0f

    div-float v8, v1, v7

    iput v8, v5, Lcom/android/internal/app/PlatLogoActivity$Bubble;->x:F

    iget-object v5, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    iget v8, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    aget-object v5, v5, v8

    div-float v7, v2, v7

    iput v7, v5, Lcom/android/internal/app/PlatLogoActivity$Bubble;->y:F

    iget-object v5, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    iget v7, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    aget-object v5, v5, v7

    iget v7, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->avoid:F

    iput v7, v5, Lcom/android/internal/app/PlatLogoActivity$Bubble;->r:F

    iget-object v5, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    iget v7, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    aget-object v5, v5, v7

    iput v4, v5, Lcom/android/internal/app/PlatLogoActivity$Bubble;->color:I

    iget v5, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    :cond_51
    const/4 v5, 0x0

    :goto_52
    const/16 v7, 0x7d0

    if-ge v5, v7, :cond_104

    const/4 v7, 0x5

    :goto_57
    add-int/lit8 v8, v7, -0x1

    if-lez v7, :cond_fe

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    double-to-float v7, v9

    mul-float/2addr v7, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v2

    sub-float v10, v1, v7

    invoke-static {v7, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    sub-float v11, v2, v9

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/4 v11, 0x0

    :goto_78
    iget v12, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    if-ge v11, v12, :cond_b4

    float-to-double v12, v10

    iget-object v14, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v14, v14, v11

    iget v14, v14, Lcom/android/internal/app/PlatLogoActivity$Bubble;->x:F

    sub-float v14, v7, v14

    float-to-double v14, v14

    iget-object v4, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v4, v4, v11

    iget v4, v4, Lcom/android/internal/app/PlatLogoActivity$Bubble;->y:F

    sub-float v4, v9, v4

    move/from16 v16, v7

    float-to-double v6, v4

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    iget-object v4, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v4, v4, v11

    iget v4, v4, Lcom/android/internal/app/PlatLogoActivity$Bubble;->r:F

    float-to-double v14, v4

    sub-double/2addr v6, v14

    iget v4, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->padding:F

    float-to-double v14, v4

    sub-double/2addr v6, v14

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    double-to-float v10, v6

    iget v4, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->minR:F

    cmpg-float v4, v10, v4

    if-gez v4, :cond_ad

    goto :goto_b6

    :cond_ad
    add-int/lit8 v11, v11, 0x1

    move/from16 v7, v16

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto :goto_78

    :cond_b4
    move/from16 v16, v7

    :goto_b6
    iget v4, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->minR:F

    cmpl-float v4, v10, v4

    if-ltz v4, :cond_f7

    invoke-static {v3, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v6, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    iget v7, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    aget-object v6, v6, v7

    move/from16 v7, v16

    iput v7, v6, Lcom/android/internal/app/PlatLogoActivity$Bubble;->x:F

    iget-object v6, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    iget v10, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    aget-object v6, v6, v10

    iput v9, v6, Lcom/android/internal/app/PlatLogoActivity$Bubble;->y:F

    iget-object v6, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    iget v10, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    aget-object v6, v6, v10

    iput v4, v6, Lcom/android/internal/app/PlatLogoActivity$Bubble;->r:F

    iget-object v6, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    iget v10, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    aget-object v6, v6, v10

    iget-object v10, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mColors:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    iget-object v13, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mColors:[I

    array-length v13, v13

    int-to-double v13, v13

    mul-double/2addr v11, v13

    double-to-int v11, v11

    aget v10, v10, v11

    iput v10, v6, Lcom/android/internal/app/PlatLogoActivity$Bubble;->color:I

    iget v6, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    const/4 v10, 0x1

    add-int/2addr v6, v10

    iput v6, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    goto :goto_fe

    :cond_f7
    move/from16 v7, v16

    move v7, v8

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto/16 :goto_57

    :cond_fe
    :goto_fe
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto/16 :goto_52

    :cond_104
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/high16 v5, 0x42c80000  # 100.0f

    iget v6, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    const/high16 v5, 0x44fa0000  # 2000.0f

    div-float/2addr v6, v5

    float-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string/jumbo v5, "successfully placed %d bubbles (%d%%)"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "PlatLogoActivity"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public chooseEmojiSet()V
    .registers 8

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-static {}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$sfgetEMOJI_SETS()[[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mEmojiSet:I

    invoke-static {}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$sfgetEMOJI_SETS()[[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mEmojiSet:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    :goto_17
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    array-length v3, v2

    if-ge v1, v3, :cond_2d

    aget-object v2, v2, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    array-length v5, v0

    int-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/android/internal/app/PlatLogoActivity$Bubble;->text:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_2d
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->getLevel()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->getLevel()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x461c4000  # 10000.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_20
    iget v3, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    if-ge v2, v3, :cond_9a

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/android/internal/app/PlatLogoActivity$Bubble;->color:I

    if-eqz v3, :cond_97

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/android/internal/app/PlatLogoActivity$Bubble;->r:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_38

    goto :goto_97

    :cond_38
    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/internal/app/PlatLogoActivity$Bubble;->text:Ljava/lang/String;

    if-eqz v3, :cond_72

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/android/internal/app/PlatLogoActivity$Bubble;->r:F

    const/high16 v5, 0x3fe00000  # 1.75f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/internal/app/PlatLogoActivity$Bubble;->text:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/android/internal/app/PlatLogoActivity$Bubble;->x:F

    iget-object v5, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/android/internal/app/PlatLogoActivity$Bubble;->y:F

    iget-object v6, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/android/internal/app/PlatLogoActivity$Bubble;->r:F

    mul-float/2addr v6, v0

    const v7, 0x3f19999a  # 0.6f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_95

    :cond_72
    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/android/internal/app/PlatLogoActivity$Bubble;->color:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/android/internal/app/PlatLogoActivity$Bubble;->x:F

    iget-object v4, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/android/internal/app/PlatLogoActivity$Bubble;->y:F

    iget-object v5, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/android/internal/app/PlatLogoActivity$Bubble;->r:F

    mul-float/2addr v5, v0

    iget-object v6, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_95
    add-int/lit8 v1, v1, 0x1

    :cond_97
    :goto_97
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_9a
    return-void
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->randomize()V

    return-void
.end method

.method protected onLevelChange(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->invalidateSelf()V

    const/4 v0, 0x1

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->getLevel()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->chooseEmojiSet()V

    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
