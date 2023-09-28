# classes2.dex

.class public interface abstract Landroid/hardware/gnss/IGnssGeofenceCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;,
        Landroid/hardware/gnss/IGnssGeofenceCallback$Default;
    }
.end annotation


# static fields
.field public static final AVAILABLE:I = 0x2

.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final ENTERED:I = 0x1

.field public static final ERROR_GENERIC:I = -0x95

.field public static final ERROR_ID_EXISTS:I = -0x65

.field public static final ERROR_ID_UNKNOWN:I = -0x66

.field public static final ERROR_INVALID_TRANSITION:I = -0x67

.field public static final ERROR_TOO_MANY_GEOFENCES:I = -0x64

.field public static final EXITED:I = 0x2

.field public static final HASH:Ljava/lang/String; = "fc957f1d3d261d065ff5e5415f2d21caa79c310f"

.field public static final OPERATION_SUCCESS:I = 0x0

.field public static final UNAVAILABLE:I = 0x1

.field public static final UNCERTAIN:I = 0x4

.field public static final VERSION:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "android$hardware$gnss$IGnssGeofenceCallback"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/gnss/IGnssGeofenceCallback;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract gnssGeofenceAddCb(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract gnssGeofencePauseCb(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract gnssGeofenceRemoveCb(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract gnssGeofenceResumeCb(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract gnssGeofenceStatusCb(ILandroid/hardware/gnss/GnssLocation;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract gnssGeofenceTransitionCb(ILandroid/hardware/gnss/GnssLocation;IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
