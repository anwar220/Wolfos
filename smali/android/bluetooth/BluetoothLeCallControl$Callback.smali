# classes.dex

.class public abstract Landroid/bluetooth/BluetoothLeCallControl$Callback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeCallControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothLeCallControl.Callback"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAcceptCall(ILjava/util/UUID;)V
.end method

.method public onHoldCall(ILjava/util/UUID;)V
    .registers 5

    const-string v0, "BluetoothLeCallControl.Callback"

    const-string/jumbo v1, "onHoldCall: unimplemented, however CAPABILITY_HOLD_CALL is set!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onJoinCalls(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    const-string v0, "BluetoothLeCallControl.Callback"

    const-string/jumbo v1, "onJoinCalls: unimplemented, however CAPABILITY_JOIN_CALLS is set!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public abstract onPlaceCall(ILjava/util/UUID;Ljava/lang/String;)V
.end method

.method public abstract onTerminateCall(ILjava/util/UUID;)V
.end method

.method public onUnholdCall(ILjava/util/UUID;)V
    .registers 5

    const-string v0, "BluetoothLeCallControl.Callback"

    const-string/jumbo v1, "onUnholdCall: unimplemented, however CAPABILITY_HOLD_CALL is set!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
