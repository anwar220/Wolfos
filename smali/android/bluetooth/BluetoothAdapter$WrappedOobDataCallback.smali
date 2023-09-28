# classes.dex

.class public Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;
.super Landroid/bluetooth/IBluetoothOobDataCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrappedOobDataCallback"
.end annotation


# instance fields
.field private final mCallback:Landroid/bluetooth/BluetoothAdapter$OobDataCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic this$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;)Landroid/bluetooth/BluetoothAdapter$OobDataCallback;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;->mCallback:Landroid/bluetooth/BluetoothAdapter$OobDataCallback;

    return-object p0
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$OobDataCallback;Ljava/util/concurrent/Executor;)V
    .registers 4

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothOobDataCallback$Stub;-><init>()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;->mCallback:Landroid/bluetooth/BluetoothAdapter$OobDataCallback;

    iput-object p3, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public onError(I)V
    .registers 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$2;

    invoke-direct {v1, p0, p1}, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$2;-><init>(Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOobData(ILandroid/bluetooth/OobData;)V
    .registers 5

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$1;-><init>(Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;ILandroid/bluetooth/OobData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
