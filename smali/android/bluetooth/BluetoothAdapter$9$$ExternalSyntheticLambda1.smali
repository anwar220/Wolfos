# classes.dex

.class public final synthetic Landroid/bluetooth/BluetoothAdapter$9$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$9$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;

    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$9$$ExternalSyntheticLambda1;->f$1:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$9$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$9$$ExternalSyntheticLambda1;->f$1:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothAdapter$9;->lambda$onDeviceConnected$0(Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
