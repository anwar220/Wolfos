# classes.dex

.class public final Landroid/graphics/pdf/PdfRenderer$Page;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/PdfRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Page"
.end annotation


# static fields
.field public static final RENDER_MODE_FOR_DISPLAY:I = 0x1

.field public static final RENDER_MODE_FOR_PRINT:I = 0x2


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mHeight:I

.field private final mIndex:I

.field private mNativePage:J

.field private final mWidth:I

.field final synthetic this$0:Landroid/graphics/pdf/PdfRenderer;


# direct methods
.method private constructor <init>(Landroid/graphics/pdf/PdfRenderer;I)V
    .registers 8

    iput-object p1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-static {p1}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmTempPoint(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/Point;

    move-result-object v1

    sget-object v2, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_12
    invoke-static {p1}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmNativeDocument(Landroid/graphics/pdf/PdfRenderer;)J

    move-result-wide v3

    invoke-static {v3, v4, p2, v1}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$smnativeOpenPageAndGetSize(JILandroid/graphics/Point;)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_2d

    iput p2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mWidth:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mHeight:I

    const-string v2, "close"

    invoke-virtual {v0, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method synthetic constructor <init>(Landroid/graphics/pdf/PdfRenderer;ILandroid/graphics/pdf/PdfRenderer$Page-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/pdf/PdfRenderer$Page;-><init>(Landroid/graphics/pdf/PdfRenderer;I)V

    return-void
.end method

.method private doClose()V
    .registers 7

    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    iget-wide v4, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    invoke-static {v4, v5}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$smnativeClosePage(J)V

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_14

    iput-wide v2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    goto :goto_17

    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fputmCurrentPage(Landroid/graphics/pdf/PdfRenderer;Landroid/graphics/pdf/PdfRenderer$Page;)V

    return-void
.end method

.method private throwIfClosed()V
    .registers 5

    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfClosed()V

    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->doClose()V

    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_7
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->doClose()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_f

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_f
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mHeight:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mWidth:I

    return v0
.end method

.method public render(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;I)V
    .registers 30

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v15, p4

    iget-wide v3, v1, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_f3

    const-string v0, "bitmap null"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/graphics/Bitmap;

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v3, :cond_eb

    if-eqz v2, :cond_45

    iget v0, v2, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_3d

    iget v0, v2, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_3d

    iget v0, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-gt v0, v3, :cond_3d

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-gt v0, v3, :cond_3d

    goto :goto_45

    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "destBounds not in destination"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    :goto_45
    if-eqz p3, :cond_57

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Matrix;->isAffine()Z

    move-result v0

    if-eqz v0, :cond_4e

    goto :goto_57

    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "transform not affine"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    :goto_57
    const/4 v0, 0x1

    const/4 v3, 0x2

    if-eq v15, v3, :cond_66

    if-ne v15, v0, :cond_5e

    goto :goto_66

    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported render mode"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_66
    :goto_66
    if-ne v15, v3, :cond_73

    if-eq v15, v0, :cond_6b

    goto :goto_73

    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Only single render mode supported"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_73
    :goto_73
    const/4 v0, 0x0

    if-eqz v2, :cond_79

    iget v3, v2, Landroid/graphics/Rect;->left:I

    goto :goto_7a

    :cond_79
    move v3, v0

    :goto_7a
    move v13, v3

    if-eqz v2, :cond_7f

    iget v0, v2, Landroid/graphics/Rect;->top:I

    :cond_7f
    move v14, v0

    if-eqz v2, :cond_85

    iget v0, v2, Landroid/graphics/Rect;->right:I

    goto :goto_89

    :cond_85
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_89
    move/from16 v17, v0

    if-eqz v2, :cond_90

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_94

    :cond_90
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_94
    move/from16 v18, v0

    if-nez p3, :cond_ba

    sub-int v0, v17, v13

    sub-int v3, v18, v14

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/pdf/PdfRenderer$Page;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/pdf/PdfRenderer$Page;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v5, v13

    int-to-float v6, v14

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v19, v4

    goto :goto_bc

    :cond_ba
    move-object/from16 v19, p3

    :goto_bc
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v20

    sget-object v22, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v22

    :try_start_c3
    iget-object v0, v1, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmNativeDocument(Landroid/graphics/pdf/PdfRenderer;)J

    move-result-wide v3

    iget-wide v5, v1, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v7
    :try_end_cf
    .catchall {:try_start_c3 .. :try_end_cf} :catchall_e2

    move v9, v13

    move v10, v14

    move/from16 v11, v17

    move/from16 v12, v18

    move/from16 v23, v13

    move/from16 v24, v14

    move-wide/from16 v13, v20

    move/from16 v15, p4

    :try_start_dd
    invoke-static/range {v3 .. v15}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$smnativeRenderPage(JJJIIIIJI)V

    monitor-exit v22

    return-void

    :catchall_e2
    move-exception v0

    move/from16 v23, v13

    move/from16 v24, v14

    :goto_e7
    monitor-exit v22
    :try_end_e8
    .catchall {:try_start_dd .. :try_end_e8} :catchall_e9

    throw v0

    :catchall_e9
    move-exception v0

    goto :goto_e7

    :cond_eb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported pixel format"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f3
    move-object/from16 v3, p1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
