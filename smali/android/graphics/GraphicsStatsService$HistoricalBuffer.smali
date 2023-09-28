# classes.dex

.class final Landroid/graphics/GraphicsStatsService$HistoricalBuffer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/GraphicsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HistoricalBuffer"
.end annotation


# instance fields
.field final mData:[B

.field final mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

.field final synthetic this$0:Landroid/graphics/GraphicsStatsService;


# direct methods
.method constructor <init>(Landroid/graphics/GraphicsStatsService;Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->this$0:Landroid/graphics/GraphicsStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/graphics/GraphicsStatsService;->-$$Nest$fgetmAshmemSize(Landroid/graphics/GraphicsStatsService;)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mData:[B

    iget-object v1, p2, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iput-object v1, p0, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/graphics/GraphicsStatsService$BufferInfo;->mEndTime:J

    invoke-static {p1}, Landroid/graphics/GraphicsStatsService;->-$$Nest$fgetmAshmemSize(Landroid/graphics/GraphicsStatsService;)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->readBytes([BI)V

    return-void
.end method
