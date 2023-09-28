# classes2.dex

.class public interface abstract Landroid/hardware/gnss/IGnssAntennaInfoCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;,
        Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;,
        Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;,
        Landroid/hardware/gnss/IGnssAntennaInfoCallback$Stub;,
        Landroid/hardware/gnss/IGnssAntennaInfoCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final HASH:Ljava/lang/String; = "fc957f1d3d261d065ff5e5415f2d21caa79c310f"

.field public static final VERSION:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "android$hardware$gnss$IGnssAntennaInfoCallback"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/gnss/IGnssAntennaInfoCallback;->DESCRIPTOR:Ljava/lang/String;

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

.method public abstract gnssAntennaInfoCb([Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
