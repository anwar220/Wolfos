# classes.dex

.class public final synthetic Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/bluetooth/BluetoothLeBroadcastReceiveState;


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda2;->f$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    iput-object p2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda2;->f$1:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda2;->f$3:Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda2;->f$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda2;->f$1:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda2;->f$2:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda2;->f$3:Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    invoke-static {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->lambda$onReceiveStateChanged$11(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V

    return-void
.end method
