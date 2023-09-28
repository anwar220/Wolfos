# classes.dex

.class Landroid/bluetooth/BluetoothPan$2;
.super Landroid/bluetooth/IBluetoothPanCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothPan;->requestTetheredInterface(Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheredInterfaceCallback;)Landroid/net/TetheringManager$TetheredInterfaceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothPan;

.field final synthetic val$callback:Landroid/net/TetheringManager$TetheredInterfaceCallback;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothPan;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheredInterfaceCallback;)V
    .registers 4

    iput-object p1, p0, Landroid/bluetooth/BluetoothPan$2;->this$0:Landroid/bluetooth/BluetoothPan;

    iput-object p2, p0, Landroid/bluetooth/BluetoothPan$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/bluetooth/BluetoothPan$2;->val$callback:Landroid/net/TetheringManager$TetheredInterfaceCallback;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothPanCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAvailable$0(Landroid/net/TetheringManager$TetheredInterfaceCallback;Ljava/lang/String;)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/net/TetheringManager$TetheredInterfaceCallback;->onAvailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onUnavailable$1(Landroid/net/TetheringManager$TetheredInterfaceCallback;)V
    .registers 1

    invoke-interface {p0}, Landroid/net/TetheringManager$TetheredInterfaceCallback;->onUnavailable()V

    return-void
.end method


# virtual methods
.method public onAvailable(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/bluetooth/BluetoothPan$2;->val$callback:Landroid/net/TetheringManager$TetheredInterfaceCallback;

    new-instance v2, Landroid/bluetooth/BluetoothPan$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/bluetooth/BluetoothPan$2$$ExternalSyntheticLambda1;-><init>(Landroid/net/TetheringManager$TetheredInterfaceCallback;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUnavailable()V
    .registers 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/bluetooth/BluetoothPan$2;->val$callback:Landroid/net/TetheringManager$TetheredInterfaceCallback;

    new-instance v2, Landroid/bluetooth/BluetoothPan$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/bluetooth/BluetoothPan$2$$ExternalSyntheticLambda0;-><init>(Landroid/net/TetheringManager$TetheredInterfaceCallback;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
