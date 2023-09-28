# classes.dex

.class Landroid/bluetooth/BluetoothCsipSetCoordinator$BluetoothCsipSetCoordinatorLockCallbackDelegate;
.super Landroid/bluetooth/IBluetoothCsipSetCoordinatorLockCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothCsipSetCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothCsipSetCoordinatorLockCallbackDelegate"
.end annotation


# instance fields
.field private final mCallback:Landroid/bluetooth/BluetoothCsipSetCoordinator$ClientLockCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothCsipSetCoordinator$ClientLockCallback;)V
    .registers 3

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothCsipSetCoordinatorLockCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator$BluetoothCsipSetCoordinatorLockCallbackDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator$BluetoothCsipSetCoordinatorLockCallbackDelegate;->mCallback:Landroid/bluetooth/BluetoothCsipSetCoordinator$ClientLockCallback;

    return-void
.end method


# virtual methods
.method synthetic lambda$onGroupLockSet$0$android-bluetooth-BluetoothCsipSetCoordinator$BluetoothCsipSetCoordinatorLockCallbackDelegate(IIZ)V
    .registers 5

    iget-object v0, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator$BluetoothCsipSetCoordinatorLockCallbackDelegate;->mCallback:Landroid/bluetooth/BluetoothCsipSetCoordinator$ClientLockCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothCsipSetCoordinator$ClientLockCallback;->onGroupLockSet(IIZ)V

    return-void
.end method

.method public onGroupLockSet(IIZ)V
    .registers 6

    iget-object v0, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator$BluetoothCsipSetCoordinatorLockCallbackDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/BluetoothCsipSetCoordinator$BluetoothCsipSetCoordinatorLockCallbackDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/bluetooth/BluetoothCsipSetCoordinator$BluetoothCsipSetCoordinatorLockCallbackDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothCsipSetCoordinator$BluetoothCsipSetCoordinatorLockCallbackDelegate;IIZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
