# classes.dex

.class public final synthetic Landroid/bluetooth/BluetoothLeBroadcastSubgroup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Landroid/bluetooth/BluetoothLeBroadcastChannel;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastChannel;->isSelected()Z

    move-result p1

    return p1
.end method
