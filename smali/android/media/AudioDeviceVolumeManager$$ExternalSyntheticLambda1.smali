# classes2.dex

.class public final synthetic Landroid/media/AudioDeviceVolumeManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/media/AudioDeviceAttributes;


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioDeviceAttributes;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioDeviceVolumeManager$$ExternalSyntheticLambda1;->f$0:Landroid/media/AudioDeviceAttributes;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager$$ExternalSyntheticLambda1;->f$0:Landroid/media/AudioDeviceAttributes;

    check-cast p1, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;

    invoke-static {v0, p1}, Landroid/media/AudioDeviceVolumeManager;->lambda$setDeviceAbsoluteMultiVolumeBehavior$0(Landroid/media/AudioDeviceAttributes;Landroid/media/AudioDeviceVolumeManager$ListenerInfo;)Z

    move-result p1

    return p1
.end method
