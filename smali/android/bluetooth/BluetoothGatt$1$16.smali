# classes.dex

.class Landroid/bluetooth/BluetoothGatt$1$16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothGatt$1;->onSubrateChange(Ljava/lang/String;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/BluetoothGatt$1;

.field final synthetic val$contNum:I

.field final synthetic val$latency:I

.field final synthetic val$status:I

.field final synthetic val$subrateFactor:I

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothGatt$1;IIIII)V
    .registers 7

    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt$1$16;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iput p2, p0, Landroid/bluetooth/BluetoothGatt$1$16;->val$subrateFactor:I

    iput p3, p0, Landroid/bluetooth/BluetoothGatt$1$16;->val$latency:I

    iput p4, p0, Landroid/bluetooth/BluetoothGatt$1$16;->val$contNum:I

    iput p5, p0, Landroid/bluetooth/BluetoothGatt$1$16;->val$timeout:I

    iput p6, p0, Landroid/bluetooth/BluetoothGatt$1$16;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1$16;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iget-object v0, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1$16;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iget-object v2, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget v3, p0, Landroid/bluetooth/BluetoothGatt$1$16;->val$subrateFactor:I

    iget v4, p0, Landroid/bluetooth/BluetoothGatt$1$16;->val$latency:I

    iget v5, p0, Landroid/bluetooth/BluetoothGatt$1$16;->val$contNum:I

    iget v6, p0, Landroid/bluetooth/BluetoothGatt$1$16;->val$timeout:I

    iget v7, p0, Landroid/bluetooth/BluetoothGatt$1$16;->val$status:I

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Landroid/bluetooth/BluetoothGattCallback;->onSubrateChange(Landroid/bluetooth/BluetoothGatt;IIIII)V

    :cond_1c
    return-void
.end method
