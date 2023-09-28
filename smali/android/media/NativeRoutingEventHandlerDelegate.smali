# classes2.dex

.class Landroid/media/NativeRoutingEventHandlerDelegate;
.super Ljava/lang/Object;


# instance fields
.field private mAudioRouting:Landroid/media/AudioRouting;

.field private mHandler:Landroid/os/Handler;

.field private mOnRoutingChangedListener:Landroid/media/AudioRouting$OnRoutingChangedListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAudioRouting(Landroid/media/NativeRoutingEventHandlerDelegate;)Landroid/media/AudioRouting;
    .registers 1

    iget-object p0, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mAudioRouting:Landroid/media/AudioRouting;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnRoutingChangedListener(Landroid/media/NativeRoutingEventHandlerDelegate;)Landroid/media/AudioRouting$OnRoutingChangedListener;
    .registers 1

    iget-object p0, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mOnRoutingChangedListener:Landroid/media/AudioRouting$OnRoutingChangedListener;

    return-object p0
.end method

.method constructor <init>(Landroid/media/AudioRouting;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mAudioRouting:Landroid/media/AudioRouting;

    iput-object p2, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mOnRoutingChangedListener:Landroid/media/AudioRouting$OnRoutingChangedListener;

    iput-object p3, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method notifyClient()V
    .registers 3

    iget-object v0, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    new-instance v1, Landroid/media/NativeRoutingEventHandlerDelegate$1;

    invoke-direct {v1, p0}, Landroid/media/NativeRoutingEventHandlerDelegate$1;-><init>(Landroid/media/NativeRoutingEventHandlerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method
