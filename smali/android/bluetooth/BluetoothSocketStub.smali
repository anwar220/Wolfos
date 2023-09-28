# classes.dex

.class public interface abstract Landroid/bluetooth/BluetoothSocketStub;
.super Ljava/lang/Object;


# direct methods
.method public static get()Landroid/bluetooth/BluetoothSocketStub;
    .registers 1

    const-class v0, Landroid/bluetooth/BluetoothSocketStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothSocketStub;

    return-object v0
.end method


# virtual methods
.method public abstract startRecord(ZI)V
.end method
