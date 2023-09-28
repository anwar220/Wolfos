# classes.dex

.class public final synthetic Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda9;->f$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    iput p2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda9;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda9;->f$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    iget v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda9;->f$1:I

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->lambda$onSearchStartFailed$1(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V

    return-void
.end method
