# classes.dex

.class public final synthetic Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda4;->f$0:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    iput p2, p0, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda4;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda4;->f$0:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    iget v1, p0, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda4;->f$1:I

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothLeBroadcast$2;->lambda$onBroadcastStartFailed$1(Landroid/bluetooth/BluetoothLeBroadcast$Callback;I)V

    return-void
.end method
