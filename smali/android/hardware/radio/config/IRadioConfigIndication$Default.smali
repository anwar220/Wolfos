# classes2.dex

.class public Landroid/hardware/radio/config/IRadioConfigIndication$Default;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/radio/config/IRadioConfigIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/config/IRadioConfigIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public simSlotsStatusChanged(I[Landroid/hardware/radio/config/SimSlotStatus;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
