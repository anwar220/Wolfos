# classes.dex

.class public final synthetic Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/bluetooth/BluetoothLeAudio$Callback;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothLeAudio$Callback;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda3;->f$0:Landroid/bluetooth/BluetoothLeAudio$Callback;

    iput-object p2, p0, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda3;->f$1:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda3;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda3;->f$0:Landroid/bluetooth/BluetoothLeAudio$Callback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda3;->f$1:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda3;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothLeAudio$1;->lambda$onGroupNodeRemoved$2(Landroid/bluetooth/BluetoothLeAudio$Callback;Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method
