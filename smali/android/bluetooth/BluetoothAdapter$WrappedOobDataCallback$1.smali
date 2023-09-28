# classes.dex

.class Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;->onOobData(ILandroid/bluetooth/OobData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;

.field final synthetic val$oobData:Landroid/bluetooth/OobData;

.field final synthetic val$transport:I


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;ILandroid/bluetooth/OobData;)V
    .registers 4

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$1;->this$1:Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;

    iput p2, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$1;->val$transport:I

    iput-object p3, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$1;->val$oobData:Landroid/bluetooth/OobData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$1;->this$1:Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;)Landroid/bluetooth/BluetoothAdapter$OobDataCallback;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$1;->val$transport:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$1;->val$oobData:Landroid/bluetooth/OobData;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter$OobDataCallback;->onOobData(ILandroid/bluetooth/OobData;)V

    return-void
.end method
