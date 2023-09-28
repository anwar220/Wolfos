# classes2.dex

.class Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;


# direct methods
.method constructor <init>(Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler$1;->this$0:Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_21

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler$1;->this$0:Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;

    invoke-static {v1}, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->-$$Nest$fgetmListeners(Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioManager$VolumeGroupCallback;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_21
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler$1;->this$0:Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;

    invoke-static {v0}, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->-$$Nest$fgetmListeners(Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :cond_2d
    :goto_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_54

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_35

    return-void

    :cond_35
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_58

    goto :goto_53

    :pswitch_3b  #0x3e8
    const/4 v1, 0x0

    :goto_3c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_52

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager$VolumeGroupCallback;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager$VolumeGroupCallback;->onAudioVolumeGroupChanged(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_52
    nop

    :goto_53
    return-void

    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0

    nop

    :pswitch_data_58
    .packed-switch 0x3e8
        :pswitch_3b  #000003e8
    .end packed-switch
.end method
