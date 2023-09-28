# classes.dex

.class Landroid/graphics/GraphicsStatsService$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/GraphicsStatsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/GraphicsStatsService;


# direct methods
.method constructor <init>(Landroid/graphics/GraphicsStatsService;)V
    .registers 2

    iput-object p1, p0, Landroid/graphics/GraphicsStatsService$1;->this$0:Landroid/graphics/GraphicsStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    goto :goto_16

    :pswitch_6  #0x2
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$1;->this$0:Landroid/graphics/GraphicsStatsService;

    invoke-static {v0}, Landroid/graphics/GraphicsStatsService;->-$$Nest$mdeleteOldBuffers(Landroid/graphics/GraphicsStatsService;)V

    goto :goto_16

    :pswitch_c  #0x1
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$1;->this$0:Landroid/graphics/GraphicsStatsService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;

    invoke-static {v0, v1}, Landroid/graphics/GraphicsStatsService;->-$$Nest$msaveBuffer(Landroid/graphics/GraphicsStatsService;Landroid/graphics/GraphicsStatsService$HistoricalBuffer;)V

    nop

    :goto_16
    const/4 v0, 0x1

    return v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_c  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
