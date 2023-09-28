# classes3.dex

.class public Landroid/view/ViewFrameInfo;
.super Ljava/lang/Object;


# instance fields
.field public drawStart:J

.field public flags:J

.field private mInputEventId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public markDrawStart()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/ViewFrameInfo;->drawStart:J

    return-void
.end method

.method public populateFrameInfo(Landroid/graphics/FrameInfo;)V
    .registers 8

    iget-object v0, p1, Landroid/graphics/FrameInfo;->frameInfo:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iget-wide v4, p0, Landroid/view/ViewFrameInfo;->flags:J

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    iget-object v0, p1, Landroid/graphics/FrameInfo;->frameInfo:[J

    iget-wide v1, p0, Landroid/view/ViewFrameInfo;->drawStart:J

    const/16 v3, 0x8

    aput-wide v1, v0, v3

    iget-object v0, p1, Landroid/graphics/FrameInfo;->frameInfo:[J

    iget v1, p0, Landroid/view/ViewFrameInfo;->mInputEventId:I

    int-to-long v1, v1

    const/4 v3, 0x4

    aput-wide v1, v0, v3

    return-void
.end method

.method public reset()V
    .registers 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewFrameInfo;->drawStart:J

    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ViewFrameInfo;->mInputEventId:I

    iput-wide v0, p0, Landroid/view/ViewFrameInfo;->flags:J

    return-void
.end method

.method public setInputEvent(I)V
    .registers 2

    iput p1, p0, Landroid/view/ViewFrameInfo;->mInputEventId:I

    return-void
.end method
