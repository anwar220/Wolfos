# classes2.dex

.class Landroid/media/AudioDeviceVolumeManager$ListenerInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioDeviceVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListenerInfo"
.end annotation


# instance fields
.field final mDevice:Landroid/media/AudioDeviceAttributes;

.field final mExecutor:Ljava/util/concurrent/Executor;

.field final mHandlesVolumeAdjustment:Z

.field final mListener:Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;


# direct methods
.method constructor <init>(Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceAttributes;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mListener:Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;

    iput-object p2, p0, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    iput-boolean p4, p0, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mHandlesVolumeAdjustment:Z

    return-void
.end method
