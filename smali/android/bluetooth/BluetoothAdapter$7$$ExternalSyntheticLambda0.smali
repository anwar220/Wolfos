# classes.dex

.class public final synthetic Landroid/bluetooth/BluetoothAdapter$7$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/bluetooth/BluetoothAdapter$7;


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothAdapter$7;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$7$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothAdapter$7;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$7$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothAdapter$7;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothAdapter$7;->lambda$onBluetoothServiceUp$0$android-bluetooth-BluetoothAdapter$7(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;)V

    return-void
.end method
