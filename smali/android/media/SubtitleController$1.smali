# classes2.dex

.class Landroid/media/SubtitleController$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SubtitleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/SubtitleController;


# direct methods
.method constructor <init>(Landroid/media/SubtitleController;)V
    .registers 2

    iput-object p1, p0, Landroid/media/SubtitleController$1;->this$0:Landroid/media/SubtitleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_24

    const/4 v0, 0x0

    return v0

    :pswitch_8  #0x4
    iget-object v0, p0, Landroid/media/SubtitleController$1;->this$0:Landroid/media/SubtitleController;

    invoke-static {v0}, Landroid/media/SubtitleController;->-$$Nest$mdoSelectDefaultTrack(Landroid/media/SubtitleController;)V

    return v1

    :pswitch_e  #0x3
    iget-object v0, p0, Landroid/media/SubtitleController$1;->this$0:Landroid/media/SubtitleController;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/media/SubtitleTrack;

    invoke-static {v0, v2}, Landroid/media/SubtitleController;->-$$Nest$mdoSelectTrack(Landroid/media/SubtitleController;Landroid/media/SubtitleTrack;)V

    return v1

    :pswitch_18  #0x2
    iget-object v0, p0, Landroid/media/SubtitleController$1;->this$0:Landroid/media/SubtitleController;

    invoke-static {v0}, Landroid/media/SubtitleController;->-$$Nest$mdoHide(Landroid/media/SubtitleController;)V

    return v1

    :pswitch_1e  #0x1
    iget-object v0, p0, Landroid/media/SubtitleController$1;->this$0:Landroid/media/SubtitleController;

    invoke-static {v0}, Landroid/media/SubtitleController;->-$$Nest$mdoShow(Landroid/media/SubtitleController;)V

    return v1

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1e  #00000001
        :pswitch_18  #00000002
        :pswitch_e  #00000003
        :pswitch_8  #00000004
    .end packed-switch
.end method
