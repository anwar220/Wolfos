# classes.dex

.class Landroid/bluetooth/BluetoothVolumeControl$2;
.super Landroid/bluetooth/BluetoothProfileConnector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothVolumeControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothVolumeControl;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothVolumeControl;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Landroid/bluetooth/BluetoothVolumeControl$2;->this$0:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/bluetooth/BluetoothProfileConnector;-><init>(Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getServiceInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothVolumeControl;
    .registers 3

    invoke-static {p1}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothVolumeControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getServiceInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothVolumeControl$2;->getServiceInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothVolumeControl;

    move-result-object p1

    return-object p1
.end method
