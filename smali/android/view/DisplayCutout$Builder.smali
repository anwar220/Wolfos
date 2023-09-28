# classes3.dex

.class public final Landroid/view/DisplayCutout$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayCutout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBoundingRectBottom:Landroid/graphics/Rect;

.field private final mBoundingRectLeft:Landroid/graphics/Rect;

.field private final mBoundingRectRight:Landroid/graphics/Rect;

.field private final mBoundingRectTop:Landroid/graphics/Rect;

.field private mCutoutPath:Landroid/graphics/Path;

.field private mSafeInsets:Landroid/graphics/Insets;

.field private mWaterfallInsets:Landroid/graphics/Insets;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/DisplayCutout$Builder;->mSafeInsets:Landroid/graphics/Insets;

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/DisplayCutout$Builder;->mWaterfallInsets:Landroid/graphics/Insets;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectLeft:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectTop:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectRight:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectBottom:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public build()Landroid/view/DisplayCutout;
    .registers 13

    iget-object v0, p0, Landroid/view/DisplayCutout$Builder;->mCutoutPath:Landroid/graphics/Path;

    if-eqz v0, :cond_29

    new-instance v0, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "test"

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000  # 1.0f

    const/high16 v10, 0x3f800000  # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Landroid/view/DisplayCutout$CutoutPathParserInfo;-><init>(IIIIFLjava/lang/String;IFF)V

    invoke-static {}, Landroid/view/DisplayCutout;->-$$Nest$sfgetCACHE_LOCK()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1c
    invoke-static {v0}, Landroid/view/DisplayCutout;->-$$Nest$sfputsCachedCutoutPathParserInfo(Landroid/view/DisplayCutout$CutoutPathParserInfo;)V

    iget-object v2, p0, Landroid/view/DisplayCutout$Builder;->mCutoutPath:Landroid/graphics/Path;

    invoke-static {v2}, Landroid/view/DisplayCutout;->-$$Nest$sfputsCachedCutoutPath(Landroid/graphics/Path;)V

    monitor-exit v1

    goto :goto_2a

    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_26

    throw v2

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    new-instance v11, Landroid/view/DisplayCutout;

    iget-object v1, p0, Landroid/view/DisplayCutout$Builder;->mSafeInsets:Landroid/graphics/Insets;

    invoke-virtual {v1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Landroid/view/DisplayCutout$Builder;->mWaterfallInsets:Landroid/graphics/Insets;

    iget-object v4, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectLeft:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectTop:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectRight:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectBottom:Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v11

    move-object v8, v0

    invoke-direct/range {v1 .. v10}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;ZLandroid/view/DisplayCutout-IA;)V

    return-object v11
.end method

.method public setBoundingRectBottom(Landroid/graphics/Rect;)Landroid/view/DisplayCutout$Builder;
    .registers 3

    iget-object v0, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectBottom:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public setBoundingRectLeft(Landroid/graphics/Rect;)Landroid/view/DisplayCutout$Builder;
    .registers 3

    iget-object v0, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectLeft:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public setBoundingRectRight(Landroid/graphics/Rect;)Landroid/view/DisplayCutout$Builder;
    .registers 3

    iget-object v0, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectRight:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public setBoundingRectTop(Landroid/graphics/Rect;)Landroid/view/DisplayCutout$Builder;
    .registers 3

    iget-object v0, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectTop:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public setCutoutPath(Landroid/graphics/Path;)Landroid/view/DisplayCutout$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/DisplayCutout$Builder;->mCutoutPath:Landroid/graphics/Path;

    return-object p0
.end method

.method public setSafeInsets(Landroid/graphics/Insets;)Landroid/view/DisplayCutout$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/DisplayCutout$Builder;->mSafeInsets:Landroid/graphics/Insets;

    return-object p0
.end method

.method public setWaterfallInsets(Landroid/graphics/Insets;)Landroid/view/DisplayCutout$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/DisplayCutout$Builder;->mWaterfallInsets:Landroid/graphics/Insets;

    return-object p0
.end method
