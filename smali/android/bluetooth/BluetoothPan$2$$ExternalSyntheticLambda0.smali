# classes.dex

.class public final synthetic Landroid/bluetooth/BluetoothPan$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/TetheringManager$TetheredInterfaceCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/net/TetheringManager$TetheredInterfaceCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothPan$2$$ExternalSyntheticLambda0;->f$0:Landroid/net/TetheringManager$TetheredInterfaceCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$2$$ExternalSyntheticLambda0;->f$0:Landroid/net/TetheringManager$TetheredInterfaceCallback;

    invoke-static {v0}, Landroid/bluetooth/BluetoothPan$2;->lambda$onUnavailable$1(Landroid/net/TetheringManager$TetheredInterfaceCallback;)V

    return-void
.end method
