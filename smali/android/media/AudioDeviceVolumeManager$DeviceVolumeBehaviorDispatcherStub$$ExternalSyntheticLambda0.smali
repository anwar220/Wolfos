# classes2.dex

.class public final synthetic Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/CallbackUtil$CallbackMethod;


# instance fields
.field public final synthetic f$0:Landroid/media/AudioDeviceAttributes;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioDeviceAttributes;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioDeviceAttributes;

    iput p2, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final callbackMethod(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioDeviceAttributes;

    iget v1, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;

    invoke-static {v0, v1, p1}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub;->lambda$dispatchDeviceVolumeBehaviorChanged$0(Landroid/media/AudioDeviceAttributes;ILandroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V

    return-void
.end method
