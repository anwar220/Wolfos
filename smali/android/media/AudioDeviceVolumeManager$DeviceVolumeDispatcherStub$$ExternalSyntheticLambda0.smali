# classes2.dex

.class public final synthetic Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/AudioDeviceVolumeManager$ListenerInfo;

.field public final synthetic f$1:Landroid/media/AudioDeviceAttributes;

.field public final synthetic f$2:Landroid/media/VolumeInfo;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioDeviceVolumeManager$ListenerInfo;Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioDeviceVolumeManager$ListenerInfo;

    iput-object p2, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda0;->f$1:Landroid/media/AudioDeviceAttributes;

    iput-object p3, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda0;->f$2:Landroid/media/VolumeInfo;

    iput p4, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioDeviceVolumeManager$ListenerInfo;

    iget-object v1, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda0;->f$1:Landroid/media/AudioDeviceAttributes;

    iget-object v2, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda0;->f$2:Landroid/media/VolumeInfo;

    iget v3, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda0;->f$3:I

    iget v4, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda0;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;->lambda$dispatchDeviceVolumeAdjusted$1(Landroid/media/AudioDeviceVolumeManager$ListenerInfo;Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;II)V

    return-void
.end method
